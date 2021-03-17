SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

CREATE EXTENSION IF NOT EXISTS btree_gin;
CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';

SET search_path = public, pg_catalog;
SET default_tablespace = '';
SET default_with_oids = false;


/* Key Generator Persistence */
CREATE TABLE IF NOT EXISTS key_persistence (
    encrypter CHARACTER VARYING(256) NOT NULL,
    key_type INT NOT NULL,
    crypto_key BYTEA NOT NULL,
    crypto_public_key BYTEA NULL
);


/* File Metadata */
CREATE TABLE IF NOT EXISTS file_metadata (
    path CHARACTER VARYING(256) NOT NULL,
    format INT NOT NULL,
    encryption_key_source INT NOT NULL,
    storage_size BIGINT NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    last_modified_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    PRIMARY KEY (path)
);

CREATE INDEX IF NOT EXISTS file_metadata_last_modified_at
  ON file_metadata 
  USING btree (last_modified_at);


/* Email */
CREATE TABLE IF NOT EXISTS email_set (
    email CHARACTER VARYING NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    PRIMARY KEY (email)
);


/* User group */
CREATE TABLE IF NOT EXISTS user_group (
    group_name CHARACTER VARYING(60) NOT NULL,
    permissions INT[] NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    last_modified_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    PRIMARY KEY (group_name)
);

CREATE INDEX IF NOT EXISTS user_group_last_modified_at
  ON user_group 
  USING btree (last_modified_at);


CREATE TABLE IF NOT EXISTS user_group_has_file (
    group_name CHARACTER VARYING(60) NOT NULL,
    file_path CHARACTER VARYING(256) NOT NULL,
    can_read BOOLEAN NOT NULL,
    can_write BOOLEAN NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    last_modified_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    PRIMARY KEY (group_name, file_path),
    FOREIGN KEY (group_name) REFERENCES user_group (group_name) ON DELETE CASCADE,
    FOREIGN KEY (file_path) REFERENCES file_metadata (path) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS user_group_has_file_last_modified_at
  ON user_group_has_file 
  USING btree (last_modified_at);


/* User */
CREATE SEQUENCE IF NOT EXISTS auser_id_seq
    START WITH 1024
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE IF NOT EXISTS auser (
    id BIGINT NOT NULL DEFAULT nextval('auser_id_seq'),
    id_str CHARACTER VARYING(30) NOT NULL,
    alias CHARACTER VARYING(40) NULL,
    biography CHARACTER VARYING(4096) NULL,
    emails CHARACTER VARYING [] NULL,
    avatar_path CHARACTER VARYING(128) NULL,
    avatar_preview_path CHARACTER VARYING(128) NULL,
    security_key_hash CHARACTER VARYING NOT NULL,
    group_names CHARACTER VARYING(60) [] NULL,
    active_level INT NOT NULL DEFAULT 0,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    search_terms tsvector,
    PRIMARY KEY (id),
    FOREIGN KEY (avatar_path) REFERENCES file_metadata (path) ON DELETE SET NULL,
    FOREIGN KEY (avatar_preview_path) REFERENCES file_metadata (path) ON DELETE SET NULL
);

DROP FUNCTION IF EXISTS update_auser_search_terms CASCADE;
CREATE FUNCTION update_auser_search_terms() RETURNS trigger AS $$
begin
  new.search_terms :=
    setweight(to_tsvector(coalesce(new.id_str, '')), 'A') ||
    setweight(to_tsvector(coalesce(new.alias, '')), 'A') ||
    setweight(to_tsvector(coalesce(new.biography, '')), 'B');
  return new;
end
$$ LANGUAGE plpgsql;

CREATE TRIGGER upsert_auser
    BEFORE INSERT OR UPDATE
    ON auser
    FOR EACH ROW 
    EXECUTE PROCEDURE update_auser_search_terms();

CREATE INDEX IF NOT EXISTS auser_search_terms 
  ON auser 
  USING gin (search_terms);


/* Directed contact relations */
CREATE TABLE IF NOT EXISTS contact_relation (
    src_user_id BIGINT NOT NULL,
    dst_user_id BIGINT NOT NULL,
    relation INT NOT NULL DEFAULT 0,
    description CHARACTER VARYING(4096) NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    last_interaction_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    search_terms tsvector,
    PRIMARY KEY (src_user_id, dst_user_id, relation),
    FOREIGN KEY (src_user_id) REFERENCES auser (id) ON DELETE CASCADE,
    FOREIGN KEY (dst_user_id) REFERENCES auser (id) ON DELETE CASCADE
);

DROP FUNCTION IF EXISTS update_contact_relation_search_terms CASCADE;
CREATE FUNCTION update_contact_relation_search_terms() RETURNS trigger AS $$
begin
  new.search_terms :=
    setweight(to_tsvector(coalesce(new.description, '')), 'A');
  return new;
end
$$ LANGUAGE plpgsql;

CREATE TRIGGER upsert_contact_relation
    BEFORE INSERT OR UPDATE
    ON contact_relation
    FOR EACH ROW 
    EXECUTE PROCEDURE update_contact_relation_search_terms();

CREATE INDEX IF NOT EXISTS contact_relation_search_terms 
  ON contact_relation 
  USING gin (search_terms);

CREATE INDEX IF NOT EXISTS contact_relation_last_interaction_at
  ON contact_relation 
  USING btree (last_interaction_at);


/* Messaging channel */
CREATE SEQUENCE IF NOT EXISTS message_channel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE IF NOT EXISTS message_channel (
    id BIGINT NOT NULL DEFAULT nextval('message_channel_id_seq'),
    channel_name CHARACTER VARYING(40) NULL,
    description CHARACTER VARYING(4096) NULL,
    encryption_enabled BOOLEAN NOT NULL,
    close_group_channel BOOLEAN NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    search_terms tsvector,
    PRIMARY KEY (id)
);

DROP FUNCTION IF EXISTS update_message_channel_search_terms CASCADE;
CREATE FUNCTION update_message_channel_search_terms() RETURNS trigger AS $$
begin
  new.search_terms :=
    setweight(to_tsvector(coalesce(new.channel_name, '')), 'A') ||
    setweight(to_tsvector(coalesce(new.description, '')), 'B');
  return new;
end
$$ LANGUAGE plpgsql;

CREATE TRIGGER upsert_message_channel
    BEFORE INSERT OR UPDATE
    ON message_channel 
    FOR EACH ROW 
    EXECUTE PROCEDURE update_message_channel_search_terms();

CREATE INDEX IF NOT EXISTS message_channel_search_terms 
  ON message_channel 
  USING gin (search_terms);


CREATE TABLE IF NOT EXISTS message_channel_has_user (
    channel_id BIGINT NOT NULL,
    user_id BIGINT NOT NULL,
    ownership INT NOT NULL DEFAULT 0,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    last_interaction_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    PRIMARY KEY (channel_id, user_id),
    FOREIGN KEY (channel_id) REFERENCES message_channel (id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES auser (id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS message_channel_has_user_last_interaction_at
  ON message_channel_has_user 
  USING btree (last_interaction_at);


/* Message group */
CREATE SEQUENCE IF NOT EXISTS chat_message_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE IF NOT EXISTS chat_message_group (
    id BIGINT NOT NULL DEFAULT nextval('chat_message_group_id_seq'),
    group_type INT NOT NULL DEFAULT 0,
    channel_id BIGINT NOT NULL,
    creator_id BIGINT NULL,
    description CHARACTER VARYING (4096) NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    last_interaction_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    search_terms tsvector,
    PRIMARY KEY (id),
    FOREIGN KEY (channel_id) REFERENCES message_channel (id) ON DELETE CASCADE,
    FOREIGN KEY (creator_id) REFERENCES auser (id) ON DELETE CASCADE
);

DROP FUNCTION IF EXISTS update_chat_message_group_search_terms CASCADE;
CREATE FUNCTION update_chat_message_group_search_terms() RETURNS trigger AS $$
begin
  new.search_terms :=
    setweight(to_tsvector(coalesce(new.description, '')), 'A');
  return new;
end
$$ LANGUAGE plpgsql;

CREATE TRIGGER upsert_chat_message_group
    BEFORE INSERT OR UPDATE
    ON chat_message_group 
    FOR EACH ROW 
    EXECUTE PROCEDURE update_chat_message_group_search_terms();

CREATE INDEX IF NOT EXISTS chat_message_group_channel_id 
  ON chat_message_group 
  USING btree (channel_id);

CREATE INDEX IF NOT EXISTS chat_message_group_last_interaction_at 
  ON chat_message_group 
  USING btree (last_interaction_at);

CREATE INDEX IF NOT EXISTS chat_message_group_search_terms 
  ON chat_message_group 
  USING gin (search_terms);


/* Message */
CREATE TABLE IF NOT EXISTS chat_message (
    group_id BIGINT NOT NULL,
    message_seq_id BIGINT NOT NULL,
    sender_id BIGINT NOT NULL,
    text_content CHARACTER VARYING [] NULL,
    binary_content_paths CHARACTER VARYING(128) [] NULL,
    media_file_paths CHARACTER VARYING(128) [] NULL,
    media_file_preview_paths CHARACTER VARYING(128) [] NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    last_interaction_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    search_terms tsvector,
    PRIMARY KEY (group_id, message_seq_id),
    FOREIGN KEY (group_id) REFERENCES chat_message_group (id) ON DELETE CASCADE,
    FOREIGN KEY (sender_id) REFERENCES auser (id) ON DELETE CASCADE
);

DROP FUNCTION IF EXISTS update_chat_message_search_terms CASCADE;
CREATE FUNCTION update_chat_message_search_terms() RETURNS trigger AS $$
begin
  new.search_terms :=
    setweight(to_tsvector(coalesce(array_to_string(new.text_content, ';'), '')), 'A');
  return new;
end
$$ LANGUAGE plpgsql;

CREATE TRIGGER upsert_chat_message
    BEFORE INSERT OR UPDATE
    ON chat_message 
    FOR EACH ROW 
    EXECUTE PROCEDURE update_chat_message_search_terms();

CREATE INDEX IF NOT EXISTS chat_message_sender_id
  ON chat_message 
  USING btree (sender_id);

CREATE INDEX IF NOT EXISTS chat_message_search_terms 
  ON chat_message 
  USING gin (search_terms);

/* Gomoku models */
CREATE SEQUENCE IF NOT EXISTS gomoku_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE IF NOT EXISTS gomoku_model (
  id BIGINT NOT NULL DEFAULT nextval('gomoku_model_id_seq'),
  model_name CHARACTER VARYING NOT NULL,
  model_path CHARACTER VARYING NOT NULL,
  created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  policy_test_cross_entropy FLOAT NULL,
  value_test_mse FLOAT NULL,
  total_test_loss FLOAT NULL,
  stats_updated_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  PRIMARY KEY (id)
);

/* Gomoku game data */
CREATE SEQUENCE IF NOT EXISTS gomoku_game_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE IF NOT EXISTS gomoku_game (
    id BIGINT NOT NULL DEFAULT nextval('gomoku_game_id_seq'),
    board_width INT NOT NULL,
    board_height INT NOT NULL,
    game_purpose INT NOT NULL,
    player_a_id BIGINT NULL,
    player_b_id BIGINT NULL,
    player_a_model_id BIGINT NULL,
    player_b_model_id BIGINT NULL,
    game_result INT NOT NULL,
    num_steps INT NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    end_at TIMESTAMP WITHOUT TIME ZONE NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (player_a_id) REFERENCES auser (id) ON DELETE CASCADE,
    FOREIGN KEY (player_b_id) REFERENCES auser (id) ON DELETE CASCADE,
    FOREIGN KEY (player_a_model_id) REFERENCES gomoku_model (id) ON DELETE CASCADE,
    FOREIGN KEY (player_b_model_id) REFERENCES gomoku_model (id) ON DELETE CASCADE
);

/* Actions performed in the Gomoku game */
CREATE TABLE IF NOT EXISTS gomoku_game_action (
  game_id BIGINT NOT NULL,
  step_number INT NOT NULL,
  action_number INT NOT NULL,
  action_performed_by_player INT NOT NULL,
  action_stone_type INT NULL,
  board_before BYTEA NOT NULL,
  game_phase INT NOT NULL,
  shl_map FLOAT [] NOT NULL,
  top_shl_features FLOAT [] NOT NULL,
  stochastic_policy FLOAT [] NULL,
  final_value FLOAT NULL,
  created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  PRIMARY KEY (game_id, step_number),
  FOREIGN KEY (game_id) REFERENCES gomoku_game (id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS gomoku_rollout_denoiser_features (
  game_id BIGINT NOT NULL,
  step_number INT NOT NULL,
  rollouts_number INT NOT NULL,
  num_rollouts INT NOT NULL,
  value_seq_distributions FLOAT [] NOT NULL,
  suboptimality_histogram INT [] NOT NULL,
  value_seq_num_moves INT [] NOT NULL,
  value_seq_num_flips INT [] NOT NULL,
  value_outcomes FLOAT [] NOT NULL,
  value_outcome_mean FLOAT NOT NULL,
  value_outcome_var FLOAT NOT NULL,
  ground_truth_value FLOAT NOT NULL,
  created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL,
  PRIMARY KEY (game_id, step_number, rollouts_number),
  FOREIGN KEY (game_id, step_number) REFERENCES gomoku_game_action (game_id, step_number) ON DELETE CASCADE);

CREATE OR REPLACE FUNCTION HASH_BIGINT(src_val BIGINT) RETURNS BIGINT AS $$
BEGIN
  src_val := MOD(((src_val >> 16) # src_val) * 73244475, 2147483647);
  src_val := MOD(((src_val >> 16) # src_val) * 73244475, 2147483647);
  src_val := MOD(((src_val >> 16) # src_val) * 73244475, 2147483647);
  src_val := MOD(((src_val >> 16) # src_val) * 73244475, 2147483647);
  src_val := MOD((src_val >> 16) # src_val, 2147483647);
  RETURN src_val;
END;
$$ LANGUAGE PLPGSQL;
