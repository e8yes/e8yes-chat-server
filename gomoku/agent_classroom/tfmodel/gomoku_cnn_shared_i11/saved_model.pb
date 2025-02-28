��
�!� 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
:
Minimum
x"T
y"T
z"T"
Ttype:

2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
d
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
j
SoftmaxCrossEntropyWithLogits
features"T
labels"T	
loss"T
backprop"T"
Ttype:
2
3
Square
x"T
y"T"
Ttype:
2
	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.5.02v1.12.1-51263-g43d85bc8bbf8��
|
conv_kernel1VarHandleOp*
_output_shapes
: *
dtype0*
shape:
 *
shared_nameconv_kernel1
u
 conv_kernel1/Read/ReadVariableOpReadVariableOpconv_kernel1*&
_output_shapes
:
 *
dtype0
p
conv_biases1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv_biases1
i
 conv_biases1/Read/ReadVariableOpReadVariableOpconv_biases1*
_output_shapes
: *
dtype0
|
conv_kernel2VarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_nameconv_kernel2
u
 conv_kernel2/Read/ReadVariableOpReadVariableOpconv_kernel2*&
_output_shapes
: @*
dtype0
p
conv_biases2VarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv_biases2
i
 conv_biases2/Read/ReadVariableOpReadVariableOpconv_biases2*
_output_shapes
:@*
dtype0
}
conv_kernel3VarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*
shared_nameconv_kernel3
v
 conv_kernel3/Read/ReadVariableOpReadVariableOpconv_kernel3*'
_output_shapes
:@�*
dtype0
q
conv_biases3VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv_biases3
j
 conv_biases3/Read/ReadVariableOpReadVariableOpconv_biases3*
_output_shapes	
:�*
dtype0
�
policy_conv_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*#
shared_namepolicy_conv_kernel
�
&policy_conv_kernel/Read/ReadVariableOpReadVariableOppolicy_conv_kernel*'
_output_shapes
:�*
dtype0
|
policy_conv_biasesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namepolicy_conv_biases
u
&policy_conv_biases/Read/ReadVariableOpReadVariableOppolicy_conv_biases*
_output_shapes
:*
dtype0
y
policy_weightsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�~*
shared_namepolicy_weights
r
"policy_weights/Read/ReadVariableOpReadVariableOppolicy_weights*
_output_shapes
:	�~*
dtype0
r
policy_biasesVarHandleOp*
_output_shapes
: *
dtype0*
shape:~*
shared_namepolicy_biases
k
!policy_biases/Read/ReadVariableOpReadVariableOppolicy_biases*
_output_shapes
:~*
dtype0
�
value_conv_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_namevalue_conv_kernel
�
%value_conv_kernel/Read/ReadVariableOpReadVariableOpvalue_conv_kernel*'
_output_shapes
:�*
dtype0
z
value_conv_biasesVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namevalue_conv_biases
s
%value_conv_biases/Read/ReadVariableOpReadVariableOpvalue_conv_biases*
_output_shapes
:*
dtype0
y
value_weights1VarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namevalue_weights1
r
"value_weights1/Read/ReadVariableOpReadVariableOpvalue_weights1*
_output_shapes
:	�@*
dtype0
t
policy_biases1VarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namepolicy_biases1
m
"policy_biases1/Read/ReadVariableOpReadVariableOppolicy_biases1*
_output_shapes
:@*
dtype0
x
value_weights2VarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namevalue_weights2
q
"value_weights2/Read/ReadVariableOpReadVariableOpvalue_weights2*
_output_shapes

:@*
dtype0
t
policy_biases2VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namepolicy_biases2
m
"policy_biases2/Read/ReadVariableOpReadVariableOppolicy_biases2*
_output_shapes
:*
dtype0
n
relu_paramsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namerelu_params
g
relu_params/Read/ReadVariableOpReadVariableOprelu_params*
_output_shapes
: *
dtype0
r
relu_params_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namerelu_params_1
k
!relu_params_1/Read/ReadVariableOpReadVariableOprelu_params_1*
_output_shapes
:@*
dtype0
s
relu_params_2VarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namerelu_params_2
l
!relu_params_2/Read/ReadVariableOpReadVariableOprelu_params_2*
_output_shapes	
:�*
dtype0
r
relu_params_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namerelu_params_3
k
!relu_params_3/Read/ReadVariableOpReadVariableOprelu_params_3*
_output_shapes
:*
dtype0
r
relu_params_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namerelu_params_4
k
!relu_params_4/Read/ReadVariableOpReadVariableOprelu_params_4*
_output_shapes
:*
dtype0

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
feature_planes_builder

cnn_layers
policy_layer
value_layer

signatures
#_self_saveable_object_factories
%
#_self_saveable_object_factories
�
conv_kernel1
	conv_biases1


prelu1
conv_kernel2
conv_biases2

prelu2
conv_kernel3
conv_biases3

prelu3
#_self_saveable_object_factories
k
conv_kernel
conv_biases
	prelu
weights

biases
#_self_saveable_object_factories
�
conv_kernel
conv_biases
	prelu
weights1
biases1
weights2
biases2
#_self_saveable_object_factories
 
 
 
TR
VARIABLE_VALUEconv_kernel12cnn_layers/conv_kernel1/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv_biases12cnn_layers/conv_biases1/.ATTRIBUTES/VARIABLE_VALUE
1

 alphas
#!_self_saveable_object_factories
TR
VARIABLE_VALUEconv_kernel22cnn_layers/conv_kernel2/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv_biases22cnn_layers/conv_biases2/.ATTRIBUTES/VARIABLE_VALUE
1

"alphas
##_self_saveable_object_factories
TR
VARIABLE_VALUEconv_kernel32cnn_layers/conv_kernel3/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUEconv_biases32cnn_layers/conv_biases3/.ATTRIBUTES/VARIABLE_VALUE
1

$alphas
#%_self_saveable_object_factories
 
[Y
VARIABLE_VALUEpolicy_conv_kernel3policy_layer/conv_kernel/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUEpolicy_conv_biases3policy_layer/conv_biases/.ATTRIBUTES/VARIABLE_VALUE
1

&alphas
#'_self_saveable_object_factories
SQ
VARIABLE_VALUEpolicy_weights/policy_layer/weights/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEpolicy_biases.policy_layer/biases/.ATTRIBUTES/VARIABLE_VALUE
 
YW
VARIABLE_VALUEvalue_conv_kernel2value_layer/conv_kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEvalue_conv_biases2value_layer/conv_biases/.ATTRIBUTES/VARIABLE_VALUE
1

(alphas
#)_self_saveable_object_factories
SQ
VARIABLE_VALUEvalue_weights1/value_layer/weights1/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEpolicy_biases1.value_layer/biases1/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEvalue_weights2/value_layer/weights2/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEpolicy_biases2.value_layer/biases2/.ATTRIBUTES/VARIABLE_VALUE
 
TR
VARIABLE_VALUErelu_params3cnn_layers/prelu1/alphas/.ATTRIBUTES/VARIABLE_VALUE
 
VT
VARIABLE_VALUErelu_params_13cnn_layers/prelu2/alphas/.ATTRIBUTES/VARIABLE_VALUE
 
VT
VARIABLE_VALUErelu_params_23cnn_layers/prelu3/alphas/.ATTRIBUTES/VARIABLE_VALUE
 
WU
VARIABLE_VALUErelu_params_34policy_layer/prelu/alphas/.ATTRIBUTES/VARIABLE_VALUE
 
VT
VARIABLE_VALUErelu_params_43value_layer/prelu/alphas/.ATTRIBUTES/VARIABLE_VALUE
 
{
inference_boardsPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
p
inference_game_phasesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
z
inference_next_move_stone_typesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallinference_boardsinference_game_phasesinference_next_move_stone_typesconv_kernel1conv_biases1relu_paramsconv_kernel2conv_biases2relu_params_1conv_kernel3conv_biases3relu_params_2policy_conv_kernelpolicy_conv_biasesrelu_params_3policy_weightspolicy_biasesvalue_conv_kernelvalue_conv_biasesrelu_params_4value_weights1policy_biases1value_weights2policy_biases2*#
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
":���������~:���������*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_11437
v
loss_boardsPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
k
loss_game_phasesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
u
loss_next_move_stone_typesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
p
loss_policiesPlaceholder*'
_output_shapes
:���������~*
dtype0*
shape:���������~
f
loss_valuesPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCall_1StatefulPartitionedCallloss_boardsloss_game_phasesloss_next_move_stone_typesloss_policiesloss_valuesconv_kernel1conv_biases1relu_paramsconv_kernel2conv_biases2relu_params_1conv_kernel3conv_biases3relu_params_2policy_conv_kernelpolicy_conv_biasesrelu_params_3policy_weightspolicy_biasesvalue_conv_kernelvalue_conv_biasesrelu_params_4value_weights1policy_biases1value_weights2policy_biases2*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: : : : *7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_11553
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename conv_kernel1/Read/ReadVariableOp conv_biases1/Read/ReadVariableOp conv_kernel2/Read/ReadVariableOp conv_biases2/Read/ReadVariableOp conv_kernel3/Read/ReadVariableOp conv_biases3/Read/ReadVariableOp&policy_conv_kernel/Read/ReadVariableOp&policy_conv_biases/Read/ReadVariableOp"policy_weights/Read/ReadVariableOp!policy_biases/Read/ReadVariableOp%value_conv_kernel/Read/ReadVariableOp%value_conv_biases/Read/ReadVariableOp"value_weights1/Read/ReadVariableOp"policy_biases1/Read/ReadVariableOp"value_weights2/Read/ReadVariableOp"policy_biases2/Read/ReadVariableOprelu_params/Read/ReadVariableOp!relu_params_1/Read/ReadVariableOp!relu_params_2/Read/ReadVariableOp!relu_params_3/Read/ReadVariableOp!relu_params_4/Read/ReadVariableOpConst*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_11651
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameconv_kernel1conv_biases1conv_kernel2conv_biases2conv_kernel3conv_biases3policy_conv_kernelpolicy_conv_biasespolicy_weightspolicy_biasesvalue_conv_kernelvalue_conv_biasesvalue_weights1policy_biases1value_weights2policy_biases2relu_paramsrelu_params_1relu_params_2relu_params_3relu_params_4*!
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_11724��
�
�
"__inference_TransformVariables_407!
unknown:
 #
	unknown_0: @$
	unknown_1:@�$
	unknown_2:�
	unknown_3:	�~$
	unknown_4:�
	unknown_5:	�@
	unknown_6:@
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7��StatefulPartitionedCall�StatefulPartitionedCall_1�StatefulPartitionedCall_2�
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:
 : @:@�*%
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_TransformVariables_1652
StatefulPartitionedCall�
StatefulPartitionedCall_1StatefulPartitionedCall	unknown_2	unknown_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:�:	�~*$
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_TransformVariables_1542
StatefulPartitionedCall_1�
StatefulPartitionedCall_2StatefulPartitionedCall	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:�:	�@:@*%
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_TransformVariables_3812
StatefulPartitionedCall_2�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*&
_output_shapes
:
 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*&
_output_shapes
: @2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*'
_output_shapes
:@�2

Identity_2�

Identity_3Identity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*'
_output_shapes
:�2

Identity_3�

Identity_4Identity"StatefulPartitionedCall_1:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*
_output_shapes
:	�~2

Identity_4�

Identity_5Identity"StatefulPartitionedCall_2:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*'
_output_shapes
:�2

Identity_5�

Identity_6Identity"StatefulPartitionedCall_2:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*
_output_shapes
:	�@2

Identity_6�

Identity_7Identity"StatefulPartitionedCall_2:output:2^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*
_output_shapes

:@2

Identity_7"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2
�
�
__inference___call___1039

boards
game_phases
next_move_stone_types!
unknown:
 
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�$
	unknown_8:�
	unknown_9:

unknown_10:

unknown_11:	�~

unknown_12:~%

unknown_13:�

unknown_14:

unknown_15:

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallboardsgame_phasesnext_move_stone_typesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*#
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:���������~:���������:���������~*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_Infer_10082
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������~2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*#
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameboards:PL
#
_output_shapes
:���������
%
_user_specified_namegame_phases:ZV
#
_output_shapes
:���������
/
_user_specified_namenext_move_stone_types
�	
p
__inference___call___84
features%
readvariableop_resource:
identity��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yu
MaximumMaximumfeaturesMaximum/y:output:0*
T0*/
_output_shapes
:���������2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yu
MinimumMinimumfeaturesMinimum/y:output:0*
T0*/
_output_shapes
:���������2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpp
mulMulReadVariableOp:value:0Minimum:z:0*
T0*/
_output_shapes
:���������2
mulc
addAddV2Maximum:z:0mul:z:0*
T0*/
_output_shapes
:���������2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: 2 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:���������
"
_user_specified_name
features
�	
r
__inference___call___335
features&
readvariableop_resource:	�
identity��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yv
MaximumMaximumfeaturesMaximum/y:output:0*
T0*0
_output_shapes
:����������2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yv
MinimumMinimumfeaturesMinimum/y:output:0*
T0*0
_output_shapes
:����������2	
Minimumu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOpq
mulMulReadVariableOp:value:0Minimum:z:0*
T0*0
_output_shapes
:����������2
muld
addAddV2Maximum:z:0mul:z:0*
T0*0
_output_shapes
:����������2
addu
IdentityIdentityadd:z:0^ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: 2 
ReadVariableOpReadVariableOp:Z V
0
_output_shapes
:����������
"
_user_specified_name
features
�
�
"__inference_TransformVariables_3812
readvariableop_resource:�,
readvariableop_1_resource:	�@+
readvariableop_2_resource:@
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
ReadVariableOpReadVariableOpreadvariableop_resource*'
_output_shapes
:�*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	�@*
dtype02
ReadVariableOp_1~
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes

:@*
dtype02
ReadVariableOp_2�
IdentityIdentityReadVariableOp:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:�2

Identity�

Identity_1IdentityReadVariableOp_1:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*
_output_shapes
:	�@2

Identity_1�

Identity_2IdentityReadVariableOp_2:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*
_output_shapes

:@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2
�
�
(__inference_restored_function_body_11384

boards
game_phases
next_move_stone_types!
unknown:
 
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�$
	unknown_8:�
	unknown_9:

unknown_10:

unknown_11:	�~

unknown_12:~%

unknown_13:�

unknown_14:

unknown_15:

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallboardsgame_phasesnext_move_stone_typesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*#
Tin
2*
Tout
2*6
_output_shapes$
":���������~:���������*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *"
fR
__inference___call___10392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������~2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*#
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameboards:PL
#
_output_shapes
:���������
%
_user_specified_namegame_phases:ZV
#
_output_shapes
:���������
/
_user_specified_namenext_move_stone_types
�-
�
__forward___call___2047
conv_features_0>
#value_fconv_readvariableop_resource:�)
add_readvariableop_resource:
unknown:7
$value_dense1_readvariableop_resource:	�@+
add_1_readvariableop_resource:@6
$value_dense2_readvariableop_resource:@+
add_2_readvariableop_resource:
identity	
value
value_dense2
add_2_readvariableop
value_dense2_readvariableop	
add_1
value_dense1
add_1_readvariableop
value_dense1_readvariableop
flattened_value_features
statefulpartitionedcall
statefulpartitionedcall_0
statefulpartitionedcall_1
statefulpartitionedcall_2
statefulpartitionedcall_3
statefulpartitionedcall_4
statefulpartitionedcall_5
statefulpartitionedcall_6
value_fconv
add_readvariableop
conv_features
value_fconv_readvariableop��StatefulPartitionedCall�add/ReadVariableOp�add_1/ReadVariableOp�add_2/ReadVariableOp�value_dense1/ReadVariableOp�value_dense2/ReadVariableOp�value_fconv/ReadVariableOp�
value_fconv/ReadVariableOpReadVariableOp#value_fconv_readvariableop_resource*'
_output_shapes
:�*
dtype02
value_fconv/ReadVariableOp�
value_fconv_0Conv2Dconv_features_0"value_fconv/ReadVariableOp:value:0*
T0*
paddingSAME*
strides
2
value_fconv�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOp�
addAddV2value_fconv_0:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
add�
StatefulPartitionedCallStatefulPartitionedCalladd:z:0unknown*
Tin
2*
Tout

2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������:���������: ::���������: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� * 
fR
__forward___call___20052
StatefulPartitionedCall�
flattened_value_features/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2 
flattened_value_features/shape�
flattened_value_features_0Reshape StatefulPartitionedCall:output:0'flattened_value_features/shape:output:0*
T02
flattened_value_features�
value_dense1/ReadVariableOpReadVariableOp$value_dense1_readvariableop_resource*
_output_shapes
:	�@*
dtype02
value_dense1/ReadVariableOp{
value_dense1_0MatMul#flattened_value_features_0:output:0#value_dense1/ReadVariableOp:value:0*
T02
value_dense1�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOpZ
add_1_0AddV2value_dense1_0:product:0add_1/ReadVariableOp:value:0*
T02
add_1�
value_dense2/ReadVariableOpReadVariableOp$value_dense2_readvariableop_resource*
_output_shapes

:@*
dtype02
value_dense2/ReadVariableOpc
value_dense2_0MatMuladd_1_0:z:0#value_dense2/ReadVariableOp:value:0*
T02
value_dense2�
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02
add_2/ReadVariableOp�
add_2AddV2value_dense2_0:product:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
add_2,
value_0Tanh	add_2:z:0*
T02
valueq
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape/shapep
ReshapeReshapevalue_0:y:0Reshape/shape:output:0*
T0*#
_output_shapes
:���������2	
Reshape�
IdentityIdentityReshape:output:0^StatefulPartitionedCall^add/ReadVariableOp^add_1/ReadVariableOp^add_2/ReadVariableOp^value_dense1/ReadVariableOp^value_dense2/ReadVariableOp^value_fconv/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity"
add_1add_1_0:z:0"4
add_1_readvariableopadd_1/ReadVariableOp:value:0"4
add_2_readvariableopadd_2/ReadVariableOp:value:0"0
add_readvariableopadd/ReadVariableOp:value:0" 
conv_featuresconv_features_0"?
flattened_value_features#flattened_value_features_0:output:0"
identityIdentity:output:0";
statefulpartitionedcall StatefulPartitionedCall:output:0"=
statefulpartitionedcall_0 StatefulPartitionedCall:output:1"=
statefulpartitionedcall_1 StatefulPartitionedCall:output:2"=
statefulpartitionedcall_2 StatefulPartitionedCall:output:3"=
statefulpartitionedcall_3 StatefulPartitionedCall:output:4"=
statefulpartitionedcall_4 StatefulPartitionedCall:output:5"=
statefulpartitionedcall_5 StatefulPartitionedCall:output:6"=
statefulpartitionedcall_6 StatefulPartitionedCall:output:7"
valuevalue_0:y:0"(
value_dense1value_dense1_0:product:0"B
value_dense1_readvariableop#value_dense1/ReadVariableOp:value:0"(
value_dense2value_dense2_0:product:0"B
value_dense2_readvariableop#value_dense2/ReadVariableOp:value:0"%
value_fconvvalue_fconv_0:output:0"@
value_fconv_readvariableop"value_fconv/ReadVariableOp:value:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:����������: : : : : : : *E
backward_function_name+)__inference___backward___call___1906_204822
StatefulPartitionedCallStatefulPartitionedCall2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2:
value_dense1/ReadVariableOpvalue_dense1/ReadVariableOp2:
value_dense2/ReadVariableOpvalue_dense2/ReadVariableOp28
value_fconv/ReadVariableOpvalue_fconv/ReadVariableOp:_ [
0
_output_shapes
:����������
'
_user_specified_nameconv_features
�
�
"__inference_TransformVariables_1542
readvariableop_resource:�,
readvariableop_1_resource:	�~
identity

identity_1��ReadVariableOp�ReadVariableOp_1�
ReadVariableOpReadVariableOpreadvariableop_resource*'
_output_shapes
:�*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	�~*
dtype02
ReadVariableOp_1�
IdentityIdentityReadVariableOp:value:0^ReadVariableOp^ReadVariableOp_1*
T0*'
_output_shapes
:�2

Identity�

Identity_1IdentityReadVariableOp_1:value:0^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	�~2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1
�
�
!__forward_TransformVariables_2950!
unknown:
 #
	unknown_0: @$
	unknown_1:@�$
	unknown_2:�
	unknown_3:	�~$
	unknown_4:�
	unknown_5:	�@
	unknown_6:@
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7��StatefulPartitionedCall�StatefulPartitionedCall_1�StatefulPartitionedCall_2�
StatefulPartitionedCallStatefulPartitionedCallunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *K
_output_shapes9
7:
 : @:@�*%
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__forward_TransformVariables_29092
StatefulPartitionedCall�
StatefulPartitionedCall_1StatefulPartitionedCall	unknown_2	unknown_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:�:	�~*$
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__forward_TransformVariables_29222
StatefulPartitionedCall_1�
StatefulPartitionedCall_2StatefulPartitionedCall	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:�:	�@:@*%
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__forward_TransformVariables_29372
StatefulPartitionedCall_2�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*&
_output_shapes
:
 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*&
_output_shapes
: @2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*'
_output_shapes
:@�2

Identity_2�

Identity_3Identity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*'
_output_shapes
:�2

Identity_3�

Identity_4Identity"StatefulPartitionedCall_1:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*
_output_shapes
:	�~2

Identity_4�

Identity_5Identity"StatefulPartitionedCall_2:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*'
_output_shapes
:�2

Identity_5�

Identity_6Identity"StatefulPartitionedCall_2:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*
_output_shapes
:	�@2

Identity_6�

Identity_7Identity"StatefulPartitionedCall_2:output:2^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*
_output_shapes

:@2

Identity_7"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: : : : : : : : *O
backward_function_name53__inference___backward_TransformVariables_2880_295122
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2
�
�
!__forward_TransformVariables_29372
readvariableop_resource:�,
readvariableop_1_resource:	�@+
readvariableop_2_resource:@
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
ReadVariableOpReadVariableOpreadvariableop_resource*'
_output_shapes
:�*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	�@*
dtype02
ReadVariableOp_1~
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*
_output_shapes

:@*
dtype02
ReadVariableOp_2�
IdentityIdentityReadVariableOp:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:�2

Identity�

Identity_1IdentityReadVariableOp_1:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*
_output_shapes
:	�@2

Identity_1�

Identity_2IdentityReadVariableOp_2:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*
_output_shapes

:@2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : *O
backward_function_name53__inference___backward_TransformVariables_2926_29382 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2
�
�
__forward___call___2189

features_0%
readvariableop_resource:
identity
maximum
mul
features
	maximum_y
readvariableop
minimum
	minimum_y��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yw
MaximumMaximum
features_0Maximum/y:output:0*
T0*/
_output_shapes
:���������2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yw
MinimumMinimum
features_0Minimum/y:output:0*
T0*/
_output_shapes
:���������2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpA
mul_0MulReadVariableOp:value:0Minimum:z:0*
T02
mule
addAddV2Maximum:z:0	mul_0:z:0*
T0*/
_output_shapes
:���������2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
features
features_0"
identityIdentity:output:0"
maximumMaximum:z:0"
	maximum_yMaximum/y:output:0"
minimumMinimum:z:0"
	minimum_yMinimum/y:output:0"
mul	mul_0:z:0"(
readvariableopReadVariableOp:value:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: *E
backward_function_name+)__inference___backward___call___2129_21902 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:���������
"
_user_specified_name
features
�
�
__forward___call___2005

features_0%
readvariableop_resource:
identity
maximum
mul
features
	maximum_y
readvariableop
minimum
	minimum_y��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yw
MaximumMaximum
features_0Maximum/y:output:0*
T0*/
_output_shapes
:���������2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yw
MinimumMinimum
features_0Minimum/y:output:0*
T0*/
_output_shapes
:���������2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpA
mul_0MulReadVariableOp:value:0Minimum:z:0*
T02
mule
addAddV2Maximum:z:0	mul_0:z:0*
T0*/
_output_shapes
:���������2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
features
features_0"
identityIdentity:output:0"
maximumMaximum:z:0"
	maximum_yMaximum/y:output:0"
minimumMinimum:z:0"
	minimum_yMinimum/y:output:0"
mul	mul_0:z:0"(
readvariableopReadVariableOp:value:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: *E
backward_function_name+)__inference___backward___call___1945_20062 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:���������
"
_user_specified_name
features
�
�
__inference_Infer_1008

boards
game_phases
next_move_stone_types!
unknown:
 
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�$
	unknown_8:�
	unknown_9:

unknown_10:

unknown_11:	�~

unknown_12:~%

unknown_13:�

unknown_14:

unknown_15:

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:
identity

identity_1

identity_2��StatefulPartitionedCall�StatefulPartitionedCall_1�StatefulPartitionedCall_2�
PartitionedCallPartitionedCallboardsgame_phasesnext_move_stone_types*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___9742
PartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallPartitionedCall:output:0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___7642
StatefulPartitionedCall�
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin

2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������~:���������~*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___7982
StatefulPartitionedCall_1�
StatefulPartitionedCall_2StatefulPartitionedCall StatefulPartitionedCall:output:0
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*
Tin

2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___4772
StatefulPartitionedCall_2�
IdentityIdentity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*'
_output_shapes
:���������~2

Identity�

Identity_1Identity"StatefulPartitionedCall_2:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*#
_output_shapes
:���������2

Identity_1�

Identity_2Identity"StatefulPartitionedCall_1:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*'
_output_shapes
:���������~2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:S O
+
_output_shapes
:���������
 
_user_specified_nameboards:PL
#
_output_shapes
:���������
%
_user_specified_namegame_phases:ZV
#
_output_shapes
:���������
/
_user_specified_namenext_move_stone_types
�
�
__forward___call___2524

features_0%
readvariableop_resource: 
identity
maximum
mul
features
	maximum_y
readvariableop
minimum
	minimum_y��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yw
MaximumMaximum
features_0Maximum/y:output:0*
T0*/
_output_shapes
:��������� 2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yw
MinimumMinimum
features_0Minimum/y:output:0*
T0*/
_output_shapes
:��������� 2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpA
mul_0MulReadVariableOp:value:0Minimum:z:0*
T02
mule
addAddV2Maximum:z:0	mul_0:z:0*
T0*/
_output_shapes
:��������� 2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:��������� 2

Identity"
features
features_0"
identityIdentity:output:0"
maximumMaximum:z:0"
	maximum_yMaximum/y:output:0"
minimumMinimum:z:0"
	minimum_yMinimum/y:output:0"
mul	mul_0:z:0"(
readvariableopReadVariableOp:value:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:��������� : *E
backward_function_name+)__inference___backward___call___2464_25252 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:��������� 
"
_user_specified_name
features
�
�
__forward___call___2430

features_0%
readvariableop_resource:@
identity
maximum
mul
features
	maximum_y
readvariableop
minimum
	minimum_y��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yw
MaximumMaximum
features_0Maximum/y:output:0*
T0*/
_output_shapes
:���������@2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yw
MinimumMinimum
features_0Minimum/y:output:0*
T0*/
_output_shapes
:���������@2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpA
mul_0MulReadVariableOp:value:0Minimum:z:0*
T02
mule
addAddV2Maximum:z:0	mul_0:z:0*
T0*/
_output_shapes
:���������@2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
features
features_0"
identityIdentity:output:0"
maximumMaximum:z:0"
	maximum_yMaximum/y:output:0"
minimumMinimum:z:0"
	minimum_yMinimum/y:output:0"
mul	mul_0:z:0"(
readvariableopReadVariableOp:value:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: *E
backward_function_name+)__inference___backward___call___2370_24312 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:���������@
"
_user_specified_name
features
�	
q
__inference___call___708
features%
readvariableop_resource: 
identity��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yu
MaximumMaximumfeaturesMaximum/y:output:0*
T0*/
_output_shapes
:��������� 2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yu
MinimumMinimumfeaturesMinimum/y:output:0*
T0*/
_output_shapes
:��������� 2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpp
mulMulReadVariableOp:value:0Minimum:z:0*
T0*/
_output_shapes
:��������� 2
mulc
addAddV2Maximum:z:0mul:z:0*
T0*/
_output_shapes
:��������� 2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:��������� : 2 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:��������� 
"
_user_specified_name
features
�
�
!__forward_TransformVariables_29222
readvariableop_resource:�,
readvariableop_1_resource:	�~
identity

identity_1��ReadVariableOp�ReadVariableOp_1�
ReadVariableOpReadVariableOpreadvariableop_resource*'
_output_shapes
:�*
dtype02
ReadVariableOp
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:	�~*
dtype02
ReadVariableOp_1�
IdentityIdentityReadVariableOp:value:0^ReadVariableOp^ReadVariableOp_1*
T0*'
_output_shapes
:�2

Identity�

Identity_1IdentityReadVariableOp_1:value:0^ReadVariableOp^ReadVariableOp_1*
T0*
_output_shapes
:	�~2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : *O
backward_function_name53__inference___backward_TransformVariables_2914_29232 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1
ݡ
�
__inference_Loss_1254

boards
game_phases
next_move_stone_types
policies

values!
unknown:
 
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�$
	unknown_8:�
	unknown_9:

unknown_10:

unknown_11:	�~

unknown_12:~%

unknown_13:�

unknown_14:

unknown_15:

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:
identity

identity_1

identity_2

identity_3��StatefulPartitionedCall�StatefulPartitionedCall_1�
StatefulPartitionedCallStatefulPartitionedCallboardsgame_phasesnext_move_stone_typesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*#
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:���������~:���������:���������~*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_Infer_10082
StatefulPartitionedCall�
&softmax_cross_entropy_with_logits/RankConst*
_output_shapes
: *
dtype0*
value	B :2(
&softmax_cross_entropy_with_logits/Rank�
-softmax_cross_entropy_with_logits/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2/
-softmax_cross_entropy_with_logits/range/start�
-softmax_cross_entropy_with_logits/range/limitConst*
_output_shapes
: *
dtype0*
value	B :2/
-softmax_cross_entropy_with_logits/range/limit�
-softmax_cross_entropy_with_logits/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2/
-softmax_cross_entropy_with_logits/range/delta�
'softmax_cross_entropy_with_logits/rangeRange6softmax_cross_entropy_with_logits/range/start:output:06softmax_cross_entropy_with_logits/range/limit:output:06softmax_cross_entropy_with_logits/range/delta:output:0*
_output_shapes
:2)
'softmax_cross_entropy_with_logits/range�
/softmax_cross_entropy_with_logits/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :21
/softmax_cross_entropy_with_logits/range_1/start�
/softmax_cross_entropy_with_logits/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :21
/softmax_cross_entropy_with_logits/range_1/delta�
)softmax_cross_entropy_with_logits/range_1Range8softmax_cross_entropy_with_logits/range_1/start:output:0/softmax_cross_entropy_with_logits/Rank:output:08softmax_cross_entropy_with_logits/range_1/delta:output:0*
_output_shapes
: 2+
)softmax_cross_entropy_with_logits/range_1�
1softmax_cross_entropy_with_logits/concat/values_2Const*
_output_shapes
:*
dtype0*
valueB:23
1softmax_cross_entropy_with_logits/concat/values_2�
-softmax_cross_entropy_with_logits/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-softmax_cross_entropy_with_logits/concat/axis�
(softmax_cross_entropy_with_logits/concatConcatV20softmax_cross_entropy_with_logits/range:output:02softmax_cross_entropy_with_logits/range_1:output:0:softmax_cross_entropy_with_logits/concat/values_2:output:06softmax_cross_entropy_with_logits/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(softmax_cross_entropy_with_logits/concat�
+softmax_cross_entropy_with_logits/transpose	Transpose StatefulPartitionedCall:output:21softmax_cross_entropy_with_logits/concat:output:0*
T0*'
_output_shapes
:���������~2-
+softmax_cross_entropy_with_logits/transpose�
/softmax_cross_entropy_with_logits/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 21
/softmax_cross_entropy_with_logits/range_2/start�
/softmax_cross_entropy_with_logits/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :21
/softmax_cross_entropy_with_logits/range_2/limit�
/softmax_cross_entropy_with_logits/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :21
/softmax_cross_entropy_with_logits/range_2/delta�
)softmax_cross_entropy_with_logits/range_2Range8softmax_cross_entropy_with_logits/range_2/start:output:08softmax_cross_entropy_with_logits/range_2/limit:output:08softmax_cross_entropy_with_logits/range_2/delta:output:0*
_output_shapes
:2+
)softmax_cross_entropy_with_logits/range_2�
/softmax_cross_entropy_with_logits/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :21
/softmax_cross_entropy_with_logits/range_3/start�
/softmax_cross_entropy_with_logits/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :21
/softmax_cross_entropy_with_logits/range_3/delta�
)softmax_cross_entropy_with_logits/range_3Range8softmax_cross_entropy_with_logits/range_3/start:output:0/softmax_cross_entropy_with_logits/Rank:output:08softmax_cross_entropy_with_logits/range_3/delta:output:0*
_output_shapes
: 2+
)softmax_cross_entropy_with_logits/range_3�
3softmax_cross_entropy_with_logits/concat_1/values_2Const*
_output_shapes
:*
dtype0*
valueB:25
3softmax_cross_entropy_with_logits/concat_1/values_2�
/softmax_cross_entropy_with_logits/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/softmax_cross_entropy_with_logits/concat_1/axis�
*softmax_cross_entropy_with_logits/concat_1ConcatV22softmax_cross_entropy_with_logits/range_2:output:02softmax_cross_entropy_with_logits/range_3:output:0<softmax_cross_entropy_with_logits/concat_1/values_2:output:08softmax_cross_entropy_with_logits/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2,
*softmax_cross_entropy_with_logits/concat_1�
-softmax_cross_entropy_with_logits/transpose_1	Transposepolicies3softmax_cross_entropy_with_logits/concat_1:output:0*
T0*'
_output_shapes
:���������~2/
-softmax_cross_entropy_with_logits/transpose_1�
'softmax_cross_entropy_with_logits/ShapeShape/softmax_cross_entropy_with_logits/transpose:y:0*
T0*
_output_shapes
:2)
'softmax_cross_entropy_with_logits/Shape�
(softmax_cross_entropy_with_logits/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2*
(softmax_cross_entropy_with_logits/Rank_1�
)softmax_cross_entropy_with_logits/Shape_1Shape/softmax_cross_entropy_with_logits/transpose:y:0*
T0*
_output_shapes
:2+
)softmax_cross_entropy_with_logits/Shape_1�
'softmax_cross_entropy_with_logits/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2)
'softmax_cross_entropy_with_logits/Sub/y�
%softmax_cross_entropy_with_logits/SubSub1softmax_cross_entropy_with_logits/Rank_1:output:00softmax_cross_entropy_with_logits/Sub/y:output:0*
T0*
_output_shapes
: 2'
%softmax_cross_entropy_with_logits/Sub�
-softmax_cross_entropy_with_logits/Slice/beginPack)softmax_cross_entropy_with_logits/Sub:z:0*
N*
T0*
_output_shapes
:2/
-softmax_cross_entropy_with_logits/Slice/begin�
,softmax_cross_entropy_with_logits/Slice/sizeConst*
_output_shapes
:*
dtype0*
valueB:2.
,softmax_cross_entropy_with_logits/Slice/size�
'softmax_cross_entropy_with_logits/SliceSlice2softmax_cross_entropy_with_logits/Shape_1:output:06softmax_cross_entropy_with_logits/Slice/begin:output:05softmax_cross_entropy_with_logits/Slice/size:output:0*
Index0*
T0*
_output_shapes
:2)
'softmax_cross_entropy_with_logits/Slice�
3softmax_cross_entropy_with_logits/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
���������25
3softmax_cross_entropy_with_logits/concat_2/values_0�
/softmax_cross_entropy_with_logits/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/softmax_cross_entropy_with_logits/concat_2/axis�
*softmax_cross_entropy_with_logits/concat_2ConcatV2<softmax_cross_entropy_with_logits/concat_2/values_0:output:00softmax_cross_entropy_with_logits/Slice:output:08softmax_cross_entropy_with_logits/concat_2/axis:output:0*
N*
T0*
_output_shapes
:2,
*softmax_cross_entropy_with_logits/concat_2�
)softmax_cross_entropy_with_logits/ReshapeReshape/softmax_cross_entropy_with_logits/transpose:y:03softmax_cross_entropy_with_logits/concat_2:output:0*
T0*0
_output_shapes
:������������������2+
)softmax_cross_entropy_with_logits/Reshape�
(softmax_cross_entropy_with_logits/Rank_2Const*
_output_shapes
: *
dtype0*
value	B :2*
(softmax_cross_entropy_with_logits/Rank_2�
)softmax_cross_entropy_with_logits/Shape_2Shape1softmax_cross_entropy_with_logits/transpose_1:y:0*
T0*
_output_shapes
:2+
)softmax_cross_entropy_with_logits/Shape_2�
)softmax_cross_entropy_with_logits/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2+
)softmax_cross_entropy_with_logits/Sub_1/y�
'softmax_cross_entropy_with_logits/Sub_1Sub1softmax_cross_entropy_with_logits/Rank_2:output:02softmax_cross_entropy_with_logits/Sub_1/y:output:0*
T0*
_output_shapes
: 2)
'softmax_cross_entropy_with_logits/Sub_1�
/softmax_cross_entropy_with_logits/Slice_1/beginPack+softmax_cross_entropy_with_logits/Sub_1:z:0*
N*
T0*
_output_shapes
:21
/softmax_cross_entropy_with_logits/Slice_1/begin�
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
_output_shapes
:*
dtype0*
valueB:20
.softmax_cross_entropy_with_logits/Slice_1/size�
)softmax_cross_entropy_with_logits/Slice_1Slice2softmax_cross_entropy_with_logits/Shape_2:output:08softmax_cross_entropy_with_logits/Slice_1/begin:output:07softmax_cross_entropy_with_logits/Slice_1/size:output:0*
Index0*
T0*
_output_shapes
:2+
)softmax_cross_entropy_with_logits/Slice_1�
3softmax_cross_entropy_with_logits/concat_3/values_0Const*
_output_shapes
:*
dtype0*
valueB:
���������25
3softmax_cross_entropy_with_logits/concat_3/values_0�
/softmax_cross_entropy_with_logits/concat_3/axisConst*
_output_shapes
: *
dtype0*
value	B : 21
/softmax_cross_entropy_with_logits/concat_3/axis�
*softmax_cross_entropy_with_logits/concat_3ConcatV2<softmax_cross_entropy_with_logits/concat_3/values_0:output:02softmax_cross_entropy_with_logits/Slice_1:output:08softmax_cross_entropy_with_logits/concat_3/axis:output:0*
N*
T0*
_output_shapes
:2,
*softmax_cross_entropy_with_logits/concat_3�
+softmax_cross_entropy_with_logits/Reshape_1Reshape1softmax_cross_entropy_with_logits/transpose_1:y:03softmax_cross_entropy_with_logits/concat_3:output:0*
T0*0
_output_shapes
:������������������2-
+softmax_cross_entropy_with_logits/Reshape_1�
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits2softmax_cross_entropy_with_logits/Reshape:output:04softmax_cross_entropy_with_logits/Reshape_1:output:0*
T0*?
_output_shapes-
+:���������:������������������2#
!softmax_cross_entropy_with_logits�
)softmax_cross_entropy_with_logits/Sub_2/yConst*
_output_shapes
: *
dtype0*
value	B :2+
)softmax_cross_entropy_with_logits/Sub_2/y�
'softmax_cross_entropy_with_logits/Sub_2Sub/softmax_cross_entropy_with_logits/Rank:output:02softmax_cross_entropy_with_logits/Sub_2/y:output:0*
T0*
_output_shapes
: 2)
'softmax_cross_entropy_with_logits/Sub_2�
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
_output_shapes
:*
dtype0*
valueB: 21
/softmax_cross_entropy_with_logits/Slice_2/begin�
.softmax_cross_entropy_with_logits/Slice_2/sizePack+softmax_cross_entropy_with_logits/Sub_2:z:0*
N*
T0*
_output_shapes
:20
.softmax_cross_entropy_with_logits/Slice_2/size�
)softmax_cross_entropy_with_logits/Slice_2Slice0softmax_cross_entropy_with_logits/Shape:output:08softmax_cross_entropy_with_logits/Slice_2/begin:output:07softmax_cross_entropy_with_logits/Slice_2/size:output:0*
Index0*
T0*
_output_shapes
:2+
)softmax_cross_entropy_with_logits/Slice_2�
+softmax_cross_entropy_with_logits/Reshape_2Reshape(softmax_cross_entropy_with_logits:loss:02softmax_cross_entropy_with_logits/Slice_2:output:0*
T0*#
_output_shapes
:���������2-
+softmax_cross_entropy_with_logits/Reshape_2r
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B : 2
Mean/reduction_indices�
MeanMean4softmax_cross_entropy_with_logits/Reshape_2:output:0Mean/reduction_indices:output:0*
T0*
_output_shapes
: 2
Mean�
SquaredDifferenceSquaredDifference StatefulPartitionedCall:output:1values*
T0*#
_output_shapes
:���������2
SquaredDifference
Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
���������2
Mean_1/reduction_indicess
Mean_1MeanSquaredDifference:z:0!Mean_1/reduction_indices:output:0*
T0*
_output_shapes
: 2
Mean_1�
StatefulPartitionedCall_1StatefulPartitionedCallunknown	unknown_2	unknown_5	unknown_8
unknown_11
unknown_13
unknown_16
unknown_18*
Tin

2*
Tout

2*
_collective_manager_ids
 *�
_output_shapes
}:
 : @:@�:�:	�~:�:	�@:@**
_read_only_resource_inputs

 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference_TransformVariables_4072
StatefulPartitionedCall_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape/shape
ReshapeReshape"StatefulPartitionedCall_1:output:0Reshape/shape:output:0*
T0*
_output_shapes	
:�>2	
ReshapeR
SquareSquareReshape:output:0*
T0*
_output_shapes	
:�>2
SquareX
ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
ConstN
SumSum
Square:y:0Const:output:0*
T0*
_output_shapes
: 2
SumS
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
add/xR
addAddV2add/x:output:0Sum:output:0*
T0*
_output_shapes
: 2
addu
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape_1/shape�
	Reshape_1Reshape"StatefulPartitionedCall_1:output:1Reshape_1/shape:output:0*
T0*
_output_shapes

:��2
	Reshape_1Y
Square_1SquareReshape_1:output:0*
T0*
_output_shapes

:��2

Square_1\
Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_1V
Sum_1SumSquare_1:y:0Const_1:output:0*
T0*
_output_shapes
: 2
Sum_1Q
add_1AddV2add:z:0Sum_1:output:0*
T0*
_output_shapes
: 2
add_1u
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape_2/shape�
	Reshape_2Reshape"StatefulPartitionedCall_1:output:2Reshape_2/shape:output:0*
T0*
_output_shapes

:��2
	Reshape_2Y
Square_2SquareReshape_2:output:0*
T0*
_output_shapes

:��2

Square_2\
Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_2V
Sum_2SumSquare_2:y:0Const_2:output:0*
T0*
_output_shapes
: 2
Sum_2S
add_2AddV2	add_1:z:0Sum_2:output:0*
T0*
_output_shapes
: 2
add_2u
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape_3/shape�
	Reshape_3Reshape"StatefulPartitionedCall_1:output:3Reshape_3/shape:output:0*
T0*
_output_shapes	
:�2
	Reshape_3X
Square_3SquareReshape_3:output:0*
T0*
_output_shapes	
:�2

Square_3\
Const_3Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_3V
Sum_3SumSquare_3:y:0Const_3:output:0*
T0*
_output_shapes
: 2
Sum_3S
add_3AddV2	add_2:z:0Sum_3:output:0*
T0*
_output_shapes
: 2
add_3u
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape_4/shape�
	Reshape_4Reshape"StatefulPartitionedCall_1:output:4Reshape_4/shape:output:0*
T0*
_output_shapes

:��2
	Reshape_4Y
Square_4SquareReshape_4:output:0*
T0*
_output_shapes

:��2

Square_4\
Const_4Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_4V
Sum_4SumSquare_4:y:0Const_4:output:0*
T0*
_output_shapes
: 2
Sum_4S
add_4AddV2	add_3:z:0Sum_4:output:0*
T0*
_output_shapes
: 2
add_4u
Reshape_5/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape_5/shape�
	Reshape_5Reshape"StatefulPartitionedCall_1:output:5Reshape_5/shape:output:0*
T0*
_output_shapes	
:�2
	Reshape_5X
Square_5SquareReshape_5:output:0*
T0*
_output_shapes	
:�2

Square_5\
Const_5Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_5V
Sum_5SumSquare_5:y:0Const_5:output:0*
T0*
_output_shapes
: 2
Sum_5S
add_5AddV2	add_4:z:0Sum_5:output:0*
T0*
_output_shapes
: 2
add_5u
Reshape_6/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape_6/shape�
	Reshape_6Reshape"StatefulPartitionedCall_1:output:6Reshape_6/shape:output:0*
T0*
_output_shapes	
:�y2
	Reshape_6X
Square_6SquareReshape_6:output:0*
T0*
_output_shapes	
:�y2

Square_6\
Const_6Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_6V
Sum_6SumSquare_6:y:0Const_6:output:0*
T0*
_output_shapes
: 2
Sum_6S
add_6AddV2	add_5:z:0Sum_6:output:0*
T0*
_output_shapes
: 2
add_6u
Reshape_7/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape_7/shape�
	Reshape_7Reshape"StatefulPartitionedCall_1:output:7Reshape_7/shape:output:0*
T0*
_output_shapes
:@2
	Reshape_7W
Square_7SquareReshape_7:output:0*
T0*
_output_shapes
:@2

Square_7\
Const_7Const*
_output_shapes
:*
dtype0*
valueB: 2	
Const_7V
Sum_7SumSquare_7:y:0Const_7:output:0*
T0*
_output_shapes
: 2
Sum_7S
add_7AddV2	add_6:z:0Sum_7:output:0*
T0*
_output_shapes
: 2
add_7S
mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2
mul/yM
mulMul	add_7:z:0mul/y:output:0*
T0*
_output_shapes
: 2
mulX
add_8AddV2Mean:output:0Mean_1:output:0*
T0*
_output_shapes
: 2
add_8L
add_9AddV2	add_8:z:0mul:z:0*
T0*
_output_shapes
: 2
add_9�
IdentityIdentity	add_9:z:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*
_output_shapes
: 2

Identity�

Identity_1IdentityMean:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*
_output_shapes
: 2

Identity_1�

Identity_2IdentityMean_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*
_output_shapes
: 2

Identity_2�

Identity_3Identitymul:z:0^StatefulPartitionedCall^StatefulPartitionedCall_1*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������~:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_1:S O
+
_output_shapes
:���������
 
_user_specified_nameboards:PL
#
_output_shapes
:���������
%
_user_specified_namegame_phases:ZV
#
_output_shapes
:���������
/
_user_specified_namenext_move_stone_types:QM
'
_output_shapes
:���������~
"
_user_specified_name
policies:KG
#
_output_shapes
:���������
 
_user_specified_namevalues
�_
�
__forward_Infer_2667

boards
game_phases
next_move_stone_types!
unknown:
 
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�$
	unknown_8:�
	unknown_9:

unknown_10:

unknown_11:	�~

unknown_12:~%

unknown_13:�

unknown_14:

unknown_15:

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:
identity

identity_1

identity_2
statefulpartitionedcall_2
statefulpartitionedcall_2_0
statefulpartitionedcall_2_1
statefulpartitionedcall_2_2
statefulpartitionedcall_2_3
statefulpartitionedcall_2_4
statefulpartitionedcall_2_5
statefulpartitionedcall_2_6
statefulpartitionedcall_2_7
statefulpartitionedcall_2_8
statefulpartitionedcall_2_9 
statefulpartitionedcall_2_10 
statefulpartitionedcall_2_11 
statefulpartitionedcall_2_12 
statefulpartitionedcall_2_13 
statefulpartitionedcall_2_14 
statefulpartitionedcall_2_15 
statefulpartitionedcall_2_16 
statefulpartitionedcall_2_17 
statefulpartitionedcall_2_18 
statefulpartitionedcall_2_19
statefulpartitionedcall_1
statefulpartitionedcall_1_0
statefulpartitionedcall_1_1
statefulpartitionedcall_1_2
statefulpartitionedcall_1_3
statefulpartitionedcall_1_4
statefulpartitionedcall_1_5
statefulpartitionedcall_1_6
statefulpartitionedcall_1_7
statefulpartitionedcall_1_8
statefulpartitionedcall_1_9 
statefulpartitionedcall_1_10 
statefulpartitionedcall_1_11 
statefulpartitionedcall_1_12 
statefulpartitionedcall_1_13 
statefulpartitionedcall_1_14 
statefulpartitionedcall_1_15
statefulpartitionedcall
statefulpartitionedcall_0
statefulpartitionedcall_3
statefulpartitionedcall_4
statefulpartitionedcall_5
statefulpartitionedcall_6
statefulpartitionedcall_7
statefulpartitionedcall_8
statefulpartitionedcall_9
statefulpartitionedcall_10
statefulpartitionedcall_11
statefulpartitionedcall_12
statefulpartitionedcall_13
statefulpartitionedcall_14
statefulpartitionedcall_15
statefulpartitionedcall_16
statefulpartitionedcall_17
statefulpartitionedcall_18
statefulpartitionedcall_19
statefulpartitionedcall_20
statefulpartitionedcall_21
statefulpartitionedcall_22
statefulpartitionedcall_23
statefulpartitionedcall_24
statefulpartitionedcall_25
statefulpartitionedcall_26
statefulpartitionedcall_27
statefulpartitionedcall_28
statefulpartitionedcall_29
statefulpartitionedcall_30
statefulpartitionedcall_31
statefulpartitionedcall_32
statefulpartitionedcall_33��StatefulPartitionedCall�StatefulPartitionedCall_1�StatefulPartitionedCall_2�
PartitionedCallPartitionedCallboardsgame_phasesnext_move_stone_types*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___9742
PartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallPartitionedCall:output:0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7*
Tin
2
*.
Tout&
$2"*
_collective_manager_ids
 *�
_output_shapes�
�:����������:����������:����������:����������: :�:����������: :����������:�:���������@:@�:���������@:���������@:���������@: :@:���������@: :���������@:@:��������� : @:��������� :��������� :��������� : : :��������� : :��������� : :���������
:
 *+
_read_only_resource_inputs
		*-
config_proto

CPU

GPU 2J 8� * 
fR
__forward___call___25682
StatefulPartitionedCall�
StatefulPartitionedCall_1StatefulPartitionedCall StatefulPartitionedCall:output:0	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin

2*
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������~:���������~:���������~:���������~:~:	�~:����������:���������:���������:���������:���������: ::���������: :���������::����������:�*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8� * 
fR
__forward___call___22292
StatefulPartitionedCall_1�
StatefulPartitionedCall_2StatefulPartitionedCall StatefulPartitionedCall:output:0
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*
Tin

2*"
Tout
2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������::@:���������@:���������@:@:	�@:����������:���������:���������:���������:���������: ::���������: :���������::����������:�*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8� * 
fR
__forward___call___20472
StatefulPartitionedCall_2�
IdentityIdentity"StatefulPartitionedCall_1:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*'
_output_shapes
:���������~2

Identity�

Identity_1Identity"StatefulPartitionedCall_2:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*#
_output_shapes
:���������2

Identity_1�

Identity_2Identity"StatefulPartitionedCall_1:output:1^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2*
T0*'
_output_shapes
:���������~2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0";
statefulpartitionedcall StatefulPartitionedCall:output:1"=
statefulpartitionedcall_0 StatefulPartitionedCall:output:2"?
statefulpartitionedcall_1"StatefulPartitionedCall_1:output:2"?
statefulpartitionedcall_10!StatefulPartitionedCall:output:10"?
statefulpartitionedcall_11!StatefulPartitionedCall:output:11"?
statefulpartitionedcall_12!StatefulPartitionedCall:output:12"?
statefulpartitionedcall_13!StatefulPartitionedCall:output:13"?
statefulpartitionedcall_14!StatefulPartitionedCall:output:14"?
statefulpartitionedcall_15!StatefulPartitionedCall:output:15"?
statefulpartitionedcall_16!StatefulPartitionedCall:output:16"?
statefulpartitionedcall_17!StatefulPartitionedCall:output:17"?
statefulpartitionedcall_18!StatefulPartitionedCall:output:18"?
statefulpartitionedcall_19!StatefulPartitionedCall:output:19"A
statefulpartitionedcall_1_0"StatefulPartitionedCall_1:output:3"A
statefulpartitionedcall_1_1"StatefulPartitionedCall_1:output:4"C
statefulpartitionedcall_1_10#StatefulPartitionedCall_1:output:13"C
statefulpartitionedcall_1_11#StatefulPartitionedCall_1:output:14"C
statefulpartitionedcall_1_12#StatefulPartitionedCall_1:output:15"C
statefulpartitionedcall_1_13#StatefulPartitionedCall_1:output:16"C
statefulpartitionedcall_1_14#StatefulPartitionedCall_1:output:17"C
statefulpartitionedcall_1_15#StatefulPartitionedCall_1:output:18"A
statefulpartitionedcall_1_2"StatefulPartitionedCall_1:output:5"A
statefulpartitionedcall_1_3"StatefulPartitionedCall_1:output:6"A
statefulpartitionedcall_1_4"StatefulPartitionedCall_1:output:7"A
statefulpartitionedcall_1_5"StatefulPartitionedCall_1:output:8"A
statefulpartitionedcall_1_6"StatefulPartitionedCall_1:output:9"B
statefulpartitionedcall_1_7#StatefulPartitionedCall_1:output:10"B
statefulpartitionedcall_1_8#StatefulPartitionedCall_1:output:11"B
statefulpartitionedcall_1_9#StatefulPartitionedCall_1:output:12"?
statefulpartitionedcall_2"StatefulPartitionedCall_2:output:1"?
statefulpartitionedcall_20!StatefulPartitionedCall:output:20"?
statefulpartitionedcall_21!StatefulPartitionedCall:output:21"?
statefulpartitionedcall_22!StatefulPartitionedCall:output:22"?
statefulpartitionedcall_23!StatefulPartitionedCall:output:23"?
statefulpartitionedcall_24!StatefulPartitionedCall:output:24"?
statefulpartitionedcall_25!StatefulPartitionedCall:output:25"?
statefulpartitionedcall_26!StatefulPartitionedCall:output:26"?
statefulpartitionedcall_27!StatefulPartitionedCall:output:27"?
statefulpartitionedcall_28!StatefulPartitionedCall:output:28"?
statefulpartitionedcall_29!StatefulPartitionedCall:output:29"A
statefulpartitionedcall_2_0"StatefulPartitionedCall_2:output:2"A
statefulpartitionedcall_2_1"StatefulPartitionedCall_2:output:3"C
statefulpartitionedcall_2_10#StatefulPartitionedCall_2:output:12"C
statefulpartitionedcall_2_11#StatefulPartitionedCall_2:output:13"C
statefulpartitionedcall_2_12#StatefulPartitionedCall_2:output:14"C
statefulpartitionedcall_2_13#StatefulPartitionedCall_2:output:15"C
statefulpartitionedcall_2_14#StatefulPartitionedCall_2:output:16"C
statefulpartitionedcall_2_15#StatefulPartitionedCall_2:output:17"C
statefulpartitionedcall_2_16#StatefulPartitionedCall_2:output:18"C
statefulpartitionedcall_2_17#StatefulPartitionedCall_2:output:19"C
statefulpartitionedcall_2_18#StatefulPartitionedCall_2:output:20"C
statefulpartitionedcall_2_19#StatefulPartitionedCall_2:output:21"A
statefulpartitionedcall_2_2"StatefulPartitionedCall_2:output:4"A
statefulpartitionedcall_2_3"StatefulPartitionedCall_2:output:5"A
statefulpartitionedcall_2_4"StatefulPartitionedCall_2:output:6"A
statefulpartitionedcall_2_5"StatefulPartitionedCall_2:output:7"A
statefulpartitionedcall_2_6"StatefulPartitionedCall_2:output:8"A
statefulpartitionedcall_2_7"StatefulPartitionedCall_2:output:9"B
statefulpartitionedcall_2_8#StatefulPartitionedCall_2:output:10"B
statefulpartitionedcall_2_9#StatefulPartitionedCall_2:output:11"=
statefulpartitionedcall_3 StatefulPartitionedCall:output:3"?
statefulpartitionedcall_30!StatefulPartitionedCall:output:30"?
statefulpartitionedcall_31!StatefulPartitionedCall:output:31"?
statefulpartitionedcall_32!StatefulPartitionedCall:output:32"?
statefulpartitionedcall_33!StatefulPartitionedCall:output:33"=
statefulpartitionedcall_4 StatefulPartitionedCall:output:4"=
statefulpartitionedcall_5 StatefulPartitionedCall:output:5"=
statefulpartitionedcall_6 StatefulPartitionedCall:output:6"=
statefulpartitionedcall_7 StatefulPartitionedCall:output:7"=
statefulpartitionedcall_8 StatefulPartitionedCall:output:8"=
statefulpartitionedcall_9 StatefulPartitionedCall:output:9*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : *B
backward_function_name(&__inference___backward_Infer_1898_266822
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_2:S O
+
_output_shapes
:���������
 
_user_specified_nameboards:PL
#
_output_shapes
:���������
%
_user_specified_namegame_phases:ZV
#
_output_shapes
:���������
/
_user_specified_namenext_move_stone_types
�	
q
__inference___call___489
features%
readvariableop_resource:
identity��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yu
MaximumMaximumfeaturesMaximum/y:output:0*
T0*/
_output_shapes
:���������2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yu
MinimumMinimumfeaturesMinimum/y:output:0*
T0*/
_output_shapes
:���������2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpp
mulMulReadVariableOp:value:0Minimum:z:0*
T0*/
_output_shapes
:���������2
mulc
addAddV2Maximum:z:0mul:z:0*
T0*/
_output_shapes
:���������2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: 2 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:���������
"
_user_specified_name
features
�
�
#__inference_signature_wrapper_11437

boards
game_phases
next_move_stone_types!
unknown:
 
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�$
	unknown_8:�
	unknown_9:

unknown_10:

unknown_11:	�~

unknown_12:~%

unknown_13:�

unknown_14:

unknown_15:

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallboardsgame_phasesnext_move_stone_typesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*#
Tin
2*
Tout
2*
_collective_manager_ids
 *6
_output_shapes$
":���������~:���������*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_113842
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������~2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*#
_output_shapes
:���������2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*r
_input_shapesa
_:���������:���������:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameboards:PL
#
_output_shapes
:���������
%
_user_specified_namegame_phases:ZV
#
_output_shapes
:���������
/
_user_specified_namenext_move_stone_types
� 
�
__inference___call___477
conv_features>
#value_fconv_readvariableop_resource:�)
add_readvariableop_resource:
unknown:7
$value_dense1_readvariableop_resource:	�@+
add_1_readvariableop_resource:@6
$value_dense2_readvariableop_resource:@+
add_2_readvariableop_resource:
identity��StatefulPartitionedCall�add/ReadVariableOp�add_1/ReadVariableOp�add_2/ReadVariableOp�value_dense1/ReadVariableOp�value_dense2/ReadVariableOp�value_fconv/ReadVariableOp�
value_fconv/ReadVariableOpReadVariableOp#value_fconv_readvariableop_resource*'
_output_shapes
:�*
dtype02
value_fconv/ReadVariableOp�
value_fconvConv2Dconv_features"value_fconv/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
value_fconv�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOp
addAddV2value_fconv:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
add�
StatefulPartitionedCallStatefulPartitionedCalladd:z:0unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___4192
StatefulPartitionedCall�
flattened_value_features/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2 
flattened_value_features/shape�
flattened_value_featuresReshape StatefulPartitionedCall:output:0'flattened_value_features/shape:output:0*
T0*(
_output_shapes
:����������2
flattened_value_features�
value_dense1/ReadVariableOpReadVariableOp$value_dense1_readvariableop_resource*
_output_shapes
:	�@*
dtype02
value_dense1/ReadVariableOp�
value_dense1MatMul!flattened_value_features:output:0#value_dense1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
value_dense1�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOp
add_1AddV2value_dense1:product:0add_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
add_1�
value_dense2/ReadVariableOpReadVariableOp$value_dense2_readvariableop_resource*
_output_shapes

:@*
dtype02
value_dense2/ReadVariableOp�
value_dense2MatMul	add_1:z:0#value_dense2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
value_dense2�
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02
add_2/ReadVariableOp
add_2AddV2value_dense2:product:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
add_2S
valueTanh	add_2:z:0*
T0*'
_output_shapes
:���������2
valueq
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape/shapen
ReshapeReshape	value:y:0Reshape/shape:output:0*
T0*#
_output_shapes
:���������2	
Reshape�
IdentityIdentityReshape:output:0^StatefulPartitionedCall^add/ReadVariableOp^add_1/ReadVariableOp^add_2/ReadVariableOp^value_dense1/ReadVariableOp^value_dense2/ReadVariableOp^value_fconv/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:����������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2:
value_dense1/ReadVariableOpvalue_dense1/ReadVariableOp2:
value_dense2/ReadVariableOpvalue_dense2/ReadVariableOp28
value_fconv/ReadVariableOpvalue_fconv/ReadVariableOp:_ [
0
_output_shapes
:����������
'
_user_specified_nameconv_features
�
�
__inference___call___820
conv_features?
$policy_fconv_readvariableop_resource:�)
add_readvariableop_resource:
unknown:7
$policy_dense_readvariableop_resource:	�~+
add_1_readvariableop_resource:~
identity

identity_1��StatefulPartitionedCall�add/ReadVariableOp�add_1/ReadVariableOp�policy_dense/ReadVariableOp�policy_fconv/ReadVariableOp�
policy_fconv/ReadVariableOpReadVariableOp$policy_fconv_readvariableop_resource*'
_output_shapes
:�*
dtype02
policy_fconv/ReadVariableOp�
policy_fconvConv2Dconv_features#policy_fconv/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
policy_fconv�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOp�
addAddV2policy_fconv:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
add�
StatefulPartitionedCallStatefulPartitionedCalladd:z:0unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___7762
StatefulPartitionedCall�
flattened_policy_features/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  2!
flattened_policy_features/shape�
flattened_policy_featuresReshape StatefulPartitionedCall:output:0(flattened_policy_features/shape:output:0*
T0*(
_output_shapes
:����������2
flattened_policy_features�
policy_dense/ReadVariableOpReadVariableOp$policy_dense_readvariableop_resource*
_output_shapes
:	�~*
dtype02
policy_dense/ReadVariableOp�
policy_denseMatMul"flattened_policy_features:output:0#policy_dense/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~2
policy_dense�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:~*
dtype02
add_1/ReadVariableOp
add_1AddV2policy_dense:product:0add_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~2
add_1X
policySoftmax	add_1:z:0*
T0*'
_output_shapes
:���������~2
policy�
IdentityIdentitypolicy:softmax:0^StatefulPartitionedCall^add/ReadVariableOp^add_1/ReadVariableOp^policy_dense/ReadVariableOp^policy_fconv/ReadVariableOp*
T0*'
_output_shapes
:���������~2

Identity�

Identity_1Identity	add_1:z:0^StatefulPartitionedCall^add/ReadVariableOp^add_1/ReadVariableOp^policy_dense/ReadVariableOp^policy_fconv/ReadVariableOp*
T0*'
_output_shapes
:���������~2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2:
policy_dense/ReadVariableOppolicy_dense/ReadVariableOp2:
policy_fconv/ReadVariableOppolicy_fconv/ReadVariableOp:_ [
0
_output_shapes
:����������
'
_user_specified_nameconv_features
�
�
(__inference_restored_function_body_11494

boards
game_phases
next_move_stone_types
policies

values!
unknown:
 
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�$
	unknown_8:�
	unknown_9:

unknown_10:

unknown_11:	�~

unknown_12:~%

unknown_13:�

unknown_14:

unknown_15:

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:
identity

identity_1

identity_2

identity_3��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallboardsgame_phasesnext_move_stone_typespoliciesvaluesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*%
Tin
2*
Tout
2*
_output_shapes

: : : : *7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *
fR
__inference_Loss_12542
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2�

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������~:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameboards:PL
#
_output_shapes
:���������
%
_user_specified_namegame_phases:ZV
#
_output_shapes
:���������
/
_user_specified_namenext_move_stone_types:QM
'
_output_shapes
:���������~
"
_user_specified_name
policies:KG
#
_output_shapes
:���������
 
_user_specified_namevalues
�;
�
__forward___call___2568
feature_planes_07
conv1_readvariableop_resource:
 )
add_readvariableop_resource: 
unknown: 7
conv2_readvariableop_resource: @+
add_1_readvariableop_resource:@
	unknown_0:@8
conv3_readvariableop_resource:@�,
add_2_readvariableop_resource:	�
	unknown_1:	�
identity
statefulpartitionedcall_2
statefulpartitionedcall_2_0
statefulpartitionedcall_2_1
statefulpartitionedcall_2_2
statefulpartitionedcall_2_3
statefulpartitionedcall_2_4
statefulpartitionedcall_2_5	
conv3
add_2_readvariableop
statefulpartitionedcall_1
conv3_readvariableop
statefulpartitionedcall_1_0
statefulpartitionedcall_1_1
statefulpartitionedcall_1_2
statefulpartitionedcall_1_3
statefulpartitionedcall_1_4
statefulpartitionedcall_1_5
statefulpartitionedcall_1_6	
conv2
add_1_readvariableop
statefulpartitionedcall
conv2_readvariableop
statefulpartitionedcall_0
statefulpartitionedcall_3
statefulpartitionedcall_4
statefulpartitionedcall_5
statefulpartitionedcall_6
statefulpartitionedcall_7
statefulpartitionedcall_8	
conv1
add_readvariableop
feature_planes
conv1_readvariableop��StatefulPartitionedCall�StatefulPartitionedCall_1�StatefulPartitionedCall_2�add/ReadVariableOp�add_1/ReadVariableOp�add_2/ReadVariableOp�conv1/ReadVariableOp�conv2/ReadVariableOp�conv3/ReadVariableOp�
conv1/ReadVariableOpReadVariableOpconv1_readvariableop_resource*&
_output_shapes
:
 *
dtype02
conv1/ReadVariableOp{
conv1_0Conv2Dfeature_planes_0conv1/ReadVariableOp:value:0*
T0*
paddingSAME*
strides
2
conv1�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
add/ReadVariableOp{
addAddV2conv1_0:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2
add�
StatefulPartitionedCallStatefulPartitionedCalladd:z:0unknown*
Tin
2*
Tout

2*
_collective_manager_ids
 *�
_output_shapes�
�:��������� :��������� :��������� :��������� : : :��������� : *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� * 
fR
__forward___call___25242
StatefulPartitionedCall�
conv2/ReadVariableOpReadVariableOpconv2_readvariableop_resource*&
_output_shapes
: @*
dtype02
conv2/ReadVariableOp�
conv2_0Conv2D StatefulPartitionedCall:output:0conv2/ReadVariableOp:value:0*
T0*
paddingSAME*
strides
2
conv2�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOp�
add_1AddV2conv2_0:output:0add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add_1�
StatefulPartitionedCall_1StatefulPartitionedCall	add_1:z:0	unknown_0*
Tin
2*
Tout

2*
_collective_manager_ids
 *�
_output_shapes�
�:���������@:���������@:���������@:���������@: :@:���������@: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� * 
fR
__forward___call___24302
StatefulPartitionedCall_1�
conv3/ReadVariableOpReadVariableOpconv3_readvariableop_resource*'
_output_shapes
:@�*
dtype02
conv3/ReadVariableOp�
conv3_0Conv2D"StatefulPartitionedCall_1:output:0conv3/ReadVariableOp:value:0*
T0*
paddingSAME*
strides
2
conv3�
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_2/ReadVariableOp�
add_2AddV2conv3_0:output:0add_2/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add_2�
StatefulPartitionedCall_2StatefulPartitionedCall	add_2:z:0	unknown_1*
Tin
2*
Tout

2*
_collective_manager_ids
 *�
_output_shapes�
�:����������:����������:����������:����������: :�:����������: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� * 
fR
__forward___call___23362
StatefulPartitionedCall_2�
IdentityIdentity"StatefulPartitionedCall_2:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2^add/ReadVariableOp^add_1/ReadVariableOp^add_2/ReadVariableOp^conv1/ReadVariableOp^conv2/ReadVariableOp^conv3/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"4
add_1_readvariableopadd_1/ReadVariableOp:value:0"4
add_2_readvariableopadd_2/ReadVariableOp:value:0"0
add_readvariableopadd/ReadVariableOp:value:0"
conv1conv1_0:output:0"4
conv1_readvariableopconv1/ReadVariableOp:value:0"
conv2conv2_0:output:0"4
conv2_readvariableopconv2/ReadVariableOp:value:0"
conv3conv3_0:output:0"4
conv3_readvariableopconv3/ReadVariableOp:value:0""
feature_planesfeature_planes_0"
identityIdentity:output:0";
statefulpartitionedcall StatefulPartitionedCall:output:0"=
statefulpartitionedcall_0 StatefulPartitionedCall:output:1"?
statefulpartitionedcall_1"StatefulPartitionedCall_1:output:0"A
statefulpartitionedcall_1_0"StatefulPartitionedCall_1:output:1"A
statefulpartitionedcall_1_1"StatefulPartitionedCall_1:output:2"A
statefulpartitionedcall_1_2"StatefulPartitionedCall_1:output:3"A
statefulpartitionedcall_1_3"StatefulPartitionedCall_1:output:4"A
statefulpartitionedcall_1_4"StatefulPartitionedCall_1:output:5"A
statefulpartitionedcall_1_5"StatefulPartitionedCall_1:output:6"A
statefulpartitionedcall_1_6"StatefulPartitionedCall_1:output:7"?
statefulpartitionedcall_2"StatefulPartitionedCall_2:output:1"A
statefulpartitionedcall_2_0"StatefulPartitionedCall_2:output:2"A
statefulpartitionedcall_2_1"StatefulPartitionedCall_2:output:3"A
statefulpartitionedcall_2_2"StatefulPartitionedCall_2:output:4"A
statefulpartitionedcall_2_3"StatefulPartitionedCall_2:output:5"A
statefulpartitionedcall_2_4"StatefulPartitionedCall_2:output:6"A
statefulpartitionedcall_2_5"StatefulPartitionedCall_2:output:7"=
statefulpartitionedcall_3 StatefulPartitionedCall:output:2"=
statefulpartitionedcall_4 StatefulPartitionedCall:output:3"=
statefulpartitionedcall_5 StatefulPartitionedCall:output:4"=
statefulpartitionedcall_6 StatefulPartitionedCall:output:5"=
statefulpartitionedcall_7 StatefulPartitionedCall:output:6"=
statefulpartitionedcall_8 StatefulPartitionedCall:output:7*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������
: : : : : : : : : *E
backward_function_name+)__inference___backward___call___2272_256922
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_22(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2,
conv1/ReadVariableOpconv1/ReadVariableOp2,
conv2/ReadVariableOpconv2/ReadVariableOp2,
conv3/ReadVariableOpconv3/ReadVariableOp:_ [
/
_output_shapes
:���������

(
_user_specified_namefeature_planes
��
`
__inference___call___323

boards
game_phases
next_move_stone_types
identityx
black_stones_extraction/yConst*
_output_shapes
: *
dtype0*
value	B :2
black_stones_extraction/y�
black_stones_extractionEqualboards"black_stones_extraction/y:output:0*
T0*+
_output_shapes
:���������2
black_stones_extractionv
CastCastblack_stones_extraction:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2
Cast�
!black_stones_create_channel/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2#
!black_stones_create_channel/shape�
black_stones_create_channelReshapeCast:y:0*black_stones_create_channel/shape:output:0*
T0*/
_output_shapes
:���������2
black_stones_create_channelx
white_stones_extraction/yConst*
_output_shapes
: *
dtype0*
value	B :2
white_stones_extraction/y�
white_stones_extractionEqualboards"white_stones_extraction/y:output:0*
T0*+
_output_shapes
:���������2
white_stones_extractionz
Cast_1Castwhite_stones_extraction:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2
Cast_1�
!white_stones_create_channel/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2#
!white_stones_create_channel/shape�
white_stones_create_channelReshape
Cast_1:y:0*white_stones_create_channel/shape:output:0*
T0*/
_output_shapes
:���������2
white_stones_create_channel�
#one_hot_expand_game_phases/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2%
#one_hot_expand_game_phases/on_value�
$one_hot_expand_game_phases/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$one_hot_expand_game_phases/off_value�
 one_hot_expand_game_phases/depthConst*
_output_shapes
: *
dtype0*
value	B :2"
 one_hot_expand_game_phases/depth�
one_hot_expand_game_phasesOneHotgame_phases)one_hot_expand_game_phases/depth:output:0,one_hot_expand_game_phases/on_value:output:0-one_hot_expand_game_phases/off_value:output:0*
T0*
TI0*'
_output_shapes
:���������2
one_hot_expand_game_phases�
!game_phases_create_channels/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2#
!game_phases_create_channels/shape�
game_phases_create_channelsReshape#one_hot_expand_game_phases:output:0*game_phases_create_channels/shape:output:0*
T0*/
_output_shapes
:���������2
game_phases_create_channels�
game_phase_plane_height/repeatsConst*
_output_shapes
:*
dtype0*
valueB:2!
game_phase_plane_height/repeats�
game_phase_plane_height/CastCast(game_phase_plane_height/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
:2
game_phase_plane_height/Cast�
game_phase_plane_height/ShapeShape$game_phases_create_channels:output:0*
T0*
_output_shapes
:2
game_phase_plane_height/Shape�
%game_phase_plane_height/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2'
%game_phase_plane_height/Reshape/shape�
'game_phase_plane_height/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2)
'game_phase_plane_height/Reshape/shape_1�
game_phase_plane_height/ReshapeReshape game_phase_plane_height/Cast:y:00game_phase_plane_height/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2!
game_phase_plane_height/Reshape�
&game_phase_plane_height/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&game_phase_plane_height/ExpandDims/dim�
"game_phase_plane_height/ExpandDims
ExpandDims$game_phases_create_channels:output:0/game_phase_plane_height/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2$
"game_phase_plane_height/ExpandDims�
(game_phase_plane_height/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2*
(game_phase_plane_height/Tile/multiples/0�
(game_phase_plane_height/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(game_phase_plane_height/Tile/multiples/1�
(game_phase_plane_height/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(game_phase_plane_height/Tile/multiples/2�
(game_phase_plane_height/Tile/multiples/4Const*
_output_shapes
: *
dtype0*
value	B :2*
(game_phase_plane_height/Tile/multiples/4�
&game_phase_plane_height/Tile/multiplesPack1game_phase_plane_height/Tile/multiples/0:output:01game_phase_plane_height/Tile/multiples/1:output:01game_phase_plane_height/Tile/multiples/2:output:0(game_phase_plane_height/Reshape:output:01game_phase_plane_height/Tile/multiples/4:output:0*
N*
T0*
_output_shapes
:2(
&game_phase_plane_height/Tile/multiples�
game_phase_plane_height/TileTile+game_phase_plane_height/ExpandDims:output:0/game_phase_plane_height/Tile/multiples:output:0*
T0*3
_output_shapes!
:���������2
game_phase_plane_height/Tile�
+game_phase_plane_height/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+game_phase_plane_height/strided_slice/stack�
-game_phase_plane_height/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-game_phase_plane_height/strided_slice/stack_1�
-game_phase_plane_height/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-game_phase_plane_height/strided_slice/stack_2�
%game_phase_plane_height/strided_sliceStridedSlice&game_phase_plane_height/Shape:output:04game_phase_plane_height/strided_slice/stack:output:06game_phase_plane_height/strided_slice/stack_1:output:06game_phase_plane_height/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2'
%game_phase_plane_height/strided_slice�
-game_phase_plane_height/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-game_phase_plane_height/strided_slice_1/stack�
/game_phase_plane_height/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/game_phase_plane_height/strided_slice_1/stack_1�
/game_phase_plane_height/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/game_phase_plane_height/strided_slice_1/stack_2�
'game_phase_plane_height/strided_slice_1StridedSlice&game_phase_plane_height/Shape:output:06game_phase_plane_height/strided_slice_1/stack:output:08game_phase_plane_height/strided_slice_1/stack_1:output:08game_phase_plane_height/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'game_phase_plane_height/strided_slice_1�
game_phase_plane_height/mulMul(game_phase_plane_height/Reshape:output:00game_phase_plane_height/strided_slice_1:output:0*
T0*
_output_shapes
: 2
game_phase_plane_height/mul�
-game_phase_plane_height/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-game_phase_plane_height/strided_slice_2/stack�
/game_phase_plane_height/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/game_phase_plane_height/strided_slice_2/stack_1�
/game_phase_plane_height/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/game_phase_plane_height/strided_slice_2/stack_2�
'game_phase_plane_height/strided_slice_2StridedSlice&game_phase_plane_height/Shape:output:06game_phase_plane_height/strided_slice_2/stack:output:08game_phase_plane_height/strided_slice_2/stack_1:output:08game_phase_plane_height/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2)
'game_phase_plane_height/strided_slice_2�
'game_phase_plane_height/concat/values_1Packgame_phase_plane_height/mul:z:0*
N*
T0*
_output_shapes
:2)
'game_phase_plane_height/concat/values_1�
#game_phase_plane_height/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#game_phase_plane_height/concat/axis�
game_phase_plane_height/concatConcatV2.game_phase_plane_height/strided_slice:output:00game_phase_plane_height/concat/values_1:output:00game_phase_plane_height/strided_slice_2:output:0,game_phase_plane_height/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
game_phase_plane_height/concat�
!game_phase_plane_height/Reshape_1Reshape%game_phase_plane_height/Tile:output:0'game_phase_plane_height/concat:output:0*
T0*8
_output_shapes&
$:"������������������2#
!game_phase_plane_height/Reshape_1�
game_phase_plane_width/repeatsConst*
_output_shapes
:*
dtype0*
valueB:2 
game_phase_plane_width/repeats�
game_phase_plane_width/CastCast'game_phase_plane_width/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
:2
game_phase_plane_width/Cast�
game_phase_plane_width/ShapeShape*game_phase_plane_height/Reshape_1:output:0*
T0*
_output_shapes
:2
game_phase_plane_width/Shape�
$game_phase_plane_width/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2&
$game_phase_plane_width/Reshape/shape�
&game_phase_plane_width/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2(
&game_phase_plane_width/Reshape/shape_1�
game_phase_plane_width/ReshapeReshapegame_phase_plane_width/Cast:y:0/game_phase_plane_width/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2 
game_phase_plane_width/Reshape�
%game_phase_plane_width/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%game_phase_plane_width/ExpandDims/dim�
!game_phase_plane_width/ExpandDims
ExpandDims*game_phase_plane_height/Reshape_1:output:0.game_phase_plane_width/ExpandDims/dim:output:0*
T0*<
_output_shapes*
(:&������������������2#
!game_phase_plane_width/ExpandDims�
'game_phase_plane_width/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2)
'game_phase_plane_width/Tile/multiples/0�
'game_phase_plane_width/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'game_phase_plane_width/Tile/multiples/1�
'game_phase_plane_width/Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'game_phase_plane_width/Tile/multiples/3�
'game_phase_plane_width/Tile/multiples/4Const*
_output_shapes
: *
dtype0*
value	B :2)
'game_phase_plane_width/Tile/multiples/4�
%game_phase_plane_width/Tile/multiplesPack0game_phase_plane_width/Tile/multiples/0:output:00game_phase_plane_width/Tile/multiples/1:output:0'game_phase_plane_width/Reshape:output:00game_phase_plane_width/Tile/multiples/3:output:00game_phase_plane_width/Tile/multiples/4:output:0*
N*
T0*
_output_shapes
:2'
%game_phase_plane_width/Tile/multiples�
game_phase_plane_width/TileTile*game_phase_plane_width/ExpandDims:output:0.game_phase_plane_width/Tile/multiples:output:0*
T0*<
_output_shapes*
(:&������������������2
game_phase_plane_width/Tile�
*game_phase_plane_width/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*game_phase_plane_width/strided_slice/stack�
,game_phase_plane_width/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,game_phase_plane_width/strided_slice/stack_1�
,game_phase_plane_width/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,game_phase_plane_width/strided_slice/stack_2�
$game_phase_plane_width/strided_sliceStridedSlice%game_phase_plane_width/Shape:output:03game_phase_plane_width/strided_slice/stack:output:05game_phase_plane_width/strided_slice/stack_1:output:05game_phase_plane_width/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2&
$game_phase_plane_width/strided_slice�
,game_phase_plane_width/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,game_phase_plane_width/strided_slice_1/stack�
.game_phase_plane_width/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.game_phase_plane_width/strided_slice_1/stack_1�
.game_phase_plane_width/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.game_phase_plane_width/strided_slice_1/stack_2�
&game_phase_plane_width/strided_slice_1StridedSlice%game_phase_plane_width/Shape:output:05game_phase_plane_width/strided_slice_1/stack:output:07game_phase_plane_width/strided_slice_1/stack_1:output:07game_phase_plane_width/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&game_phase_plane_width/strided_slice_1�
game_phase_plane_width/mulMul'game_phase_plane_width/Reshape:output:0/game_phase_plane_width/strided_slice_1:output:0*
T0*
_output_shapes
: 2
game_phase_plane_width/mul�
,game_phase_plane_width/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,game_phase_plane_width/strided_slice_2/stack�
.game_phase_plane_width/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.game_phase_plane_width/strided_slice_2/stack_1�
.game_phase_plane_width/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.game_phase_plane_width/strided_slice_2/stack_2�
&game_phase_plane_width/strided_slice_2StridedSlice%game_phase_plane_width/Shape:output:05game_phase_plane_width/strided_slice_2/stack:output:07game_phase_plane_width/strided_slice_2/stack_1:output:07game_phase_plane_width/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2(
&game_phase_plane_width/strided_slice_2�
&game_phase_plane_width/concat/values_1Packgame_phase_plane_width/mul:z:0*
N*
T0*
_output_shapes
:2(
&game_phase_plane_width/concat/values_1�
"game_phase_plane_width/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"game_phase_plane_width/concat/axis�
game_phase_plane_width/concatConcatV2-game_phase_plane_width/strided_slice:output:0/game_phase_plane_width/concat/values_1:output:0/game_phase_plane_width/strided_slice_2:output:0+game_phase_plane_width/concat/axis:output:0*
N*
T0*
_output_shapes
:2
game_phase_plane_width/concat�
 game_phase_plane_width/Reshape_1Reshape$game_phase_plane_width/Tile:output:0&game_phase_plane_width/concat:output:0*
T0*A
_output_shapes/
-:+���������������������������2"
 game_phase_plane_width/Reshape_1�
-one_hot_expand_next_move_stone_types/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2/
-one_hot_expand_next_move_stone_types/on_value�
.one_hot_expand_next_move_stone_types/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.one_hot_expand_next_move_stone_types/off_value�
*one_hot_expand_next_move_stone_types/depthConst*
_output_shapes
: *
dtype0*
value	B :2,
*one_hot_expand_next_move_stone_types/depth�
$one_hot_expand_next_move_stone_typesOneHotnext_move_stone_types3one_hot_expand_next_move_stone_types/depth:output:06one_hot_expand_next_move_stone_types/on_value:output:07one_hot_expand_next_move_stone_types/off_value:output:0*
T0*
TI0*'
_output_shapes
:���������2&
$one_hot_expand_next_move_stone_types�
+next_move_stone_types_create_channels/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2-
+next_move_stone_types_create_channels/shape�
%next_move_stone_types_create_channelsReshape-one_hot_expand_next_move_stone_types:output:04next_move_stone_types_create_channels/shape:output:0*
T0*/
_output_shapes
:���������2'
%next_move_stone_types_create_channels�
*next_move_stone_types_plane_height/repeatsConst*
_output_shapes
:*
dtype0*
valueB:2,
*next_move_stone_types_plane_height/repeats�
'next_move_stone_types_plane_height/CastCast3next_move_stone_types_plane_height/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
:2)
'next_move_stone_types_plane_height/Cast�
(next_move_stone_types_plane_height/ShapeShape.next_move_stone_types_create_channels:output:0*
T0*
_output_shapes
:2*
(next_move_stone_types_plane_height/Shape�
0next_move_stone_types_plane_height/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 22
0next_move_stone_types_plane_height/Reshape/shape�
2next_move_stone_types_plane_height/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 24
2next_move_stone_types_plane_height/Reshape/shape_1�
*next_move_stone_types_plane_height/ReshapeReshape+next_move_stone_types_plane_height/Cast:y:0;next_move_stone_types_plane_height/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2,
*next_move_stone_types_plane_height/Reshape�
1next_move_stone_types_plane_height/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :23
1next_move_stone_types_plane_height/ExpandDims/dim�
-next_move_stone_types_plane_height/ExpandDims
ExpandDims.next_move_stone_types_create_channels:output:0:next_move_stone_types_plane_height/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2/
-next_move_stone_types_plane_height/ExpandDims�
3next_move_stone_types_plane_height/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :25
3next_move_stone_types_plane_height/Tile/multiples/0�
3next_move_stone_types_plane_height/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :25
3next_move_stone_types_plane_height/Tile/multiples/1�
3next_move_stone_types_plane_height/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :25
3next_move_stone_types_plane_height/Tile/multiples/2�
3next_move_stone_types_plane_height/Tile/multiples/4Const*
_output_shapes
: *
dtype0*
value	B :25
3next_move_stone_types_plane_height/Tile/multiples/4�
1next_move_stone_types_plane_height/Tile/multiplesPack<next_move_stone_types_plane_height/Tile/multiples/0:output:0<next_move_stone_types_plane_height/Tile/multiples/1:output:0<next_move_stone_types_plane_height/Tile/multiples/2:output:03next_move_stone_types_plane_height/Reshape:output:0<next_move_stone_types_plane_height/Tile/multiples/4:output:0*
N*
T0*
_output_shapes
:23
1next_move_stone_types_plane_height/Tile/multiples�
'next_move_stone_types_plane_height/TileTile6next_move_stone_types_plane_height/ExpandDims:output:0:next_move_stone_types_plane_height/Tile/multiples:output:0*
T0*3
_output_shapes!
:���������2)
'next_move_stone_types_plane_height/Tile�
6next_move_stone_types_plane_height/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6next_move_stone_types_plane_height/strided_slice/stack�
8next_move_stone_types_plane_height/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8next_move_stone_types_plane_height/strided_slice/stack_1�
8next_move_stone_types_plane_height/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8next_move_stone_types_plane_height/strided_slice/stack_2�
0next_move_stone_types_plane_height/strided_sliceStridedSlice1next_move_stone_types_plane_height/Shape:output:0?next_move_stone_types_plane_height/strided_slice/stack:output:0Anext_move_stone_types_plane_height/strided_slice/stack_1:output:0Anext_move_stone_types_plane_height/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask22
0next_move_stone_types_plane_height/strided_slice�
8next_move_stone_types_plane_height/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8next_move_stone_types_plane_height/strided_slice_1/stack�
:next_move_stone_types_plane_height/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:next_move_stone_types_plane_height/strided_slice_1/stack_1�
:next_move_stone_types_plane_height/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:next_move_stone_types_plane_height/strided_slice_1/stack_2�
2next_move_stone_types_plane_height/strided_slice_1StridedSlice1next_move_stone_types_plane_height/Shape:output:0Anext_move_stone_types_plane_height/strided_slice_1/stack:output:0Cnext_move_stone_types_plane_height/strided_slice_1/stack_1:output:0Cnext_move_stone_types_plane_height/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2next_move_stone_types_plane_height/strided_slice_1�
&next_move_stone_types_plane_height/mulMul3next_move_stone_types_plane_height/Reshape:output:0;next_move_stone_types_plane_height/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&next_move_stone_types_plane_height/mul�
8next_move_stone_types_plane_height/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8next_move_stone_types_plane_height/strided_slice_2/stack�
:next_move_stone_types_plane_height/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:next_move_stone_types_plane_height/strided_slice_2/stack_1�
:next_move_stone_types_plane_height/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:next_move_stone_types_plane_height/strided_slice_2/stack_2�
2next_move_stone_types_plane_height/strided_slice_2StridedSlice1next_move_stone_types_plane_height/Shape:output:0Anext_move_stone_types_plane_height/strided_slice_2/stack:output:0Cnext_move_stone_types_plane_height/strided_slice_2/stack_1:output:0Cnext_move_stone_types_plane_height/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask24
2next_move_stone_types_plane_height/strided_slice_2�
2next_move_stone_types_plane_height/concat/values_1Pack*next_move_stone_types_plane_height/mul:z:0*
N*
T0*
_output_shapes
:24
2next_move_stone_types_plane_height/concat/values_1�
.next_move_stone_types_plane_height/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.next_move_stone_types_plane_height/concat/axis�
)next_move_stone_types_plane_height/concatConcatV29next_move_stone_types_plane_height/strided_slice:output:0;next_move_stone_types_plane_height/concat/values_1:output:0;next_move_stone_types_plane_height/strided_slice_2:output:07next_move_stone_types_plane_height/concat/axis:output:0*
N*
T0*
_output_shapes
:2+
)next_move_stone_types_plane_height/concat�
,next_move_stone_types_plane_height/Reshape_1Reshape0next_move_stone_types_plane_height/Tile:output:02next_move_stone_types_plane_height/concat:output:0*
T0*8
_output_shapes&
$:"������������������2.
,next_move_stone_types_plane_height/Reshape_1�
)next_move_stone_types_plane_width/repeatsConst*
_output_shapes
:*
dtype0*
valueB:2+
)next_move_stone_types_plane_width/repeats�
&next_move_stone_types_plane_width/CastCast2next_move_stone_types_plane_width/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
:2(
&next_move_stone_types_plane_width/Cast�
'next_move_stone_types_plane_width/ShapeShape5next_move_stone_types_plane_height/Reshape_1:output:0*
T0*
_output_shapes
:2)
'next_move_stone_types_plane_width/Shape�
/next_move_stone_types_plane_width/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 21
/next_move_stone_types_plane_width/Reshape/shape�
1next_move_stone_types_plane_width/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 23
1next_move_stone_types_plane_width/Reshape/shape_1�
)next_move_stone_types_plane_width/ReshapeReshape*next_move_stone_types_plane_width/Cast:y:0:next_move_stone_types_plane_width/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2+
)next_move_stone_types_plane_width/Reshape�
0next_move_stone_types_plane_width/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :22
0next_move_stone_types_plane_width/ExpandDims/dim�
,next_move_stone_types_plane_width/ExpandDims
ExpandDims5next_move_stone_types_plane_height/Reshape_1:output:09next_move_stone_types_plane_width/ExpandDims/dim:output:0*
T0*<
_output_shapes*
(:&������������������2.
,next_move_stone_types_plane_width/ExpandDims�
2next_move_stone_types_plane_width/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :24
2next_move_stone_types_plane_width/Tile/multiples/0�
2next_move_stone_types_plane_width/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :24
2next_move_stone_types_plane_width/Tile/multiples/1�
2next_move_stone_types_plane_width/Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :24
2next_move_stone_types_plane_width/Tile/multiples/3�
2next_move_stone_types_plane_width/Tile/multiples/4Const*
_output_shapes
: *
dtype0*
value	B :24
2next_move_stone_types_plane_width/Tile/multiples/4�
0next_move_stone_types_plane_width/Tile/multiplesPack;next_move_stone_types_plane_width/Tile/multiples/0:output:0;next_move_stone_types_plane_width/Tile/multiples/1:output:02next_move_stone_types_plane_width/Reshape:output:0;next_move_stone_types_plane_width/Tile/multiples/3:output:0;next_move_stone_types_plane_width/Tile/multiples/4:output:0*
N*
T0*
_output_shapes
:22
0next_move_stone_types_plane_width/Tile/multiples�
&next_move_stone_types_plane_width/TileTile5next_move_stone_types_plane_width/ExpandDims:output:09next_move_stone_types_plane_width/Tile/multiples:output:0*
T0*<
_output_shapes*
(:&������������������2(
&next_move_stone_types_plane_width/Tile�
5next_move_stone_types_plane_width/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5next_move_stone_types_plane_width/strided_slice/stack�
7next_move_stone_types_plane_width/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7next_move_stone_types_plane_width/strided_slice/stack_1�
7next_move_stone_types_plane_width/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7next_move_stone_types_plane_width/strided_slice/stack_2�
/next_move_stone_types_plane_width/strided_sliceStridedSlice0next_move_stone_types_plane_width/Shape:output:0>next_move_stone_types_plane_width/strided_slice/stack:output:0@next_move_stone_types_plane_width/strided_slice/stack_1:output:0@next_move_stone_types_plane_width/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask21
/next_move_stone_types_plane_width/strided_slice�
7next_move_stone_types_plane_width/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7next_move_stone_types_plane_width/strided_slice_1/stack�
9next_move_stone_types_plane_width/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9next_move_stone_types_plane_width/strided_slice_1/stack_1�
9next_move_stone_types_plane_width/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9next_move_stone_types_plane_width/strided_slice_1/stack_2�
1next_move_stone_types_plane_width/strided_slice_1StridedSlice0next_move_stone_types_plane_width/Shape:output:0@next_move_stone_types_plane_width/strided_slice_1/stack:output:0Bnext_move_stone_types_plane_width/strided_slice_1/stack_1:output:0Bnext_move_stone_types_plane_width/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1next_move_stone_types_plane_width/strided_slice_1�
%next_move_stone_types_plane_width/mulMul2next_move_stone_types_plane_width/Reshape:output:0:next_move_stone_types_plane_width/strided_slice_1:output:0*
T0*
_output_shapes
: 2'
%next_move_stone_types_plane_width/mul�
7next_move_stone_types_plane_width/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7next_move_stone_types_plane_width/strided_slice_2/stack�
9next_move_stone_types_plane_width/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2;
9next_move_stone_types_plane_width/strided_slice_2/stack_1�
9next_move_stone_types_plane_width/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9next_move_stone_types_plane_width/strided_slice_2/stack_2�
1next_move_stone_types_plane_width/strided_slice_2StridedSlice0next_move_stone_types_plane_width/Shape:output:0@next_move_stone_types_plane_width/strided_slice_2/stack:output:0Bnext_move_stone_types_plane_width/strided_slice_2/stack_1:output:0Bnext_move_stone_types_plane_width/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask23
1next_move_stone_types_plane_width/strided_slice_2�
1next_move_stone_types_plane_width/concat/values_1Pack)next_move_stone_types_plane_width/mul:z:0*
N*
T0*
_output_shapes
:23
1next_move_stone_types_plane_width/concat/values_1�
-next_move_stone_types_plane_width/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-next_move_stone_types_plane_width/concat/axis�
(next_move_stone_types_plane_width/concatConcatV28next_move_stone_types_plane_width/strided_slice:output:0:next_move_stone_types_plane_width/concat/values_1:output:0:next_move_stone_types_plane_width/strided_slice_2:output:06next_move_stone_types_plane_width/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(next_move_stone_types_plane_width/concat�
+next_move_stone_types_plane_width/Reshape_1Reshape/next_move_stone_types_plane_width/Tile:output:01next_move_stone_types_plane_width/concat:output:0*
T0*A
_output_shapes/
-:+���������������������������2-
+next_move_stone_types_plane_width/Reshape_1x
input_feature_planes/axisConst*
_output_shapes
: *
dtype0*
value	B :2
input_feature_planes/axis�
input_feature_planesConcatV2$black_stones_create_channel:output:0$white_stones_create_channel:output:0)game_phase_plane_width/Reshape_1:output:04next_move_stone_types_plane_width/Reshape_1:output:0"input_feature_planes/axis:output:0*
N*
T0*/
_output_shapes
:���������
2
input_feature_planesy
IdentityIdentityinput_feature_planes:output:0*
T0*/
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������:���������:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameboards:PL
#
_output_shapes
:���������
%
_user_specified_namegame_phases:ZV
#
_output_shapes
:���������
/
_user_specified_namenext_move_stone_types
�
�
!__forward_TransformVariables_29091
readvariableop_resource:
 3
readvariableop_1_resource: @4
readvariableop_2_resource:@�
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
ReadVariableOpReadVariableOpreadvariableop_resource*&
_output_shapes
:
 *
dtype02
ReadVariableOp�
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*&
_output_shapes
: @*
dtype02
ReadVariableOp_1�
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*'
_output_shapes
:@�*
dtype02
ReadVariableOp_2�
IdentityIdentityReadVariableOp:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*&
_output_shapes
:
 2

Identity�

Identity_1IdentityReadVariableOp_1:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*&
_output_shapes
: @2

Identity_1�

Identity_2IdentityReadVariableOp_2:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:@�2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : *O
backward_function_name53__inference___backward_TransformVariables_2898_29102 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2
�Y
�
!__inference__traced_restore_11724
file_prefix7
assignvariableop_conv_kernel1:
 -
assignvariableop_1_conv_biases1: 9
assignvariableop_2_conv_kernel2: @-
assignvariableop_3_conv_biases2:@:
assignvariableop_4_conv_kernel3:@�.
assignvariableop_5_conv_biases3:	�@
%assignvariableop_6_policy_conv_kernel:�3
%assignvariableop_7_policy_conv_biases:4
!assignvariableop_8_policy_weights:	�~.
 assignvariableop_9_policy_biases:~@
%assignvariableop_10_value_conv_kernel:�3
%assignvariableop_11_value_conv_biases:5
"assignvariableop_12_value_weights1:	�@0
"assignvariableop_13_policy_biases1:@4
"assignvariableop_14_value_weights2:@0
"assignvariableop_15_policy_biases2:-
assignvariableop_16_relu_params: /
!assignvariableop_17_relu_params_1:@0
!assignvariableop_18_relu_params_2:	�/
!assignvariableop_19_relu_params_3:/
!assignvariableop_20_relu_params_4:
identity_22��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B2cnn_layers/conv_kernel1/.ATTRIBUTES/VARIABLE_VALUEB2cnn_layers/conv_biases1/.ATTRIBUTES/VARIABLE_VALUEB2cnn_layers/conv_kernel2/.ATTRIBUTES/VARIABLE_VALUEB2cnn_layers/conv_biases2/.ATTRIBUTES/VARIABLE_VALUEB2cnn_layers/conv_kernel3/.ATTRIBUTES/VARIABLE_VALUEB2cnn_layers/conv_biases3/.ATTRIBUTES/VARIABLE_VALUEB3policy_layer/conv_kernel/.ATTRIBUTES/VARIABLE_VALUEB3policy_layer/conv_biases/.ATTRIBUTES/VARIABLE_VALUEB/policy_layer/weights/.ATTRIBUTES/VARIABLE_VALUEB.policy_layer/biases/.ATTRIBUTES/VARIABLE_VALUEB2value_layer/conv_kernel/.ATTRIBUTES/VARIABLE_VALUEB2value_layer/conv_biases/.ATTRIBUTES/VARIABLE_VALUEB/value_layer/weights1/.ATTRIBUTES/VARIABLE_VALUEB.value_layer/biases1/.ATTRIBUTES/VARIABLE_VALUEB/value_layer/weights2/.ATTRIBUTES/VARIABLE_VALUEB.value_layer/biases2/.ATTRIBUTES/VARIABLE_VALUEB3cnn_layers/prelu1/alphas/.ATTRIBUTES/VARIABLE_VALUEB3cnn_layers/prelu2/alphas/.ATTRIBUTES/VARIABLE_VALUEB3cnn_layers/prelu3/alphas/.ATTRIBUTES/VARIABLE_VALUEB4policy_layer/prelu/alphas/.ATTRIBUTES/VARIABLE_VALUEB3value_layer/prelu/alphas/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_conv_kernel1Identity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv_biases1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_conv_kernel2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOpassignvariableop_3_conv_biases2Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOpassignvariableop_4_conv_kernel3Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOpassignvariableop_5_conv_biases3Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp%assignvariableop_6_policy_conv_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp%assignvariableop_7_policy_conv_biasesIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_policy_weightsIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOp assignvariableop_9_policy_biasesIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp%assignvariableop_10_value_conv_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOp%assignvariableop_11_value_conv_biasesIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp"assignvariableop_12_value_weights1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp"assignvariableop_13_policy_biases1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp"assignvariableop_14_value_weights2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOp"assignvariableop_15_policy_biases2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_relu_paramsIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp!assignvariableop_17_relu_params_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp!assignvariableop_18_relu_params_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp!assignvariableop_19_relu_params_3Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp!assignvariableop_20_relu_params_4Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21�
Identity_22IdentityIdentity_21:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_22"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�2
�
__inference__traced_save_11651
file_prefix+
'savev2_conv_kernel1_read_readvariableop+
'savev2_conv_biases1_read_readvariableop+
'savev2_conv_kernel2_read_readvariableop+
'savev2_conv_biases2_read_readvariableop+
'savev2_conv_kernel3_read_readvariableop+
'savev2_conv_biases3_read_readvariableop1
-savev2_policy_conv_kernel_read_readvariableop1
-savev2_policy_conv_biases_read_readvariableop-
)savev2_policy_weights_read_readvariableop,
(savev2_policy_biases_read_readvariableop0
,savev2_value_conv_kernel_read_readvariableop0
,savev2_value_conv_biases_read_readvariableop-
)savev2_value_weights1_read_readvariableop-
)savev2_policy_biases1_read_readvariableop-
)savev2_value_weights2_read_readvariableop-
)savev2_policy_biases2_read_readvariableop*
&savev2_relu_params_read_readvariableop,
(savev2_relu_params_1_read_readvariableop,
(savev2_relu_params_2_read_readvariableop,
(savev2_relu_params_3_read_readvariableop,
(savev2_relu_params_4_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B2cnn_layers/conv_kernel1/.ATTRIBUTES/VARIABLE_VALUEB2cnn_layers/conv_biases1/.ATTRIBUTES/VARIABLE_VALUEB2cnn_layers/conv_kernel2/.ATTRIBUTES/VARIABLE_VALUEB2cnn_layers/conv_biases2/.ATTRIBUTES/VARIABLE_VALUEB2cnn_layers/conv_kernel3/.ATTRIBUTES/VARIABLE_VALUEB2cnn_layers/conv_biases3/.ATTRIBUTES/VARIABLE_VALUEB3policy_layer/conv_kernel/.ATTRIBUTES/VARIABLE_VALUEB3policy_layer/conv_biases/.ATTRIBUTES/VARIABLE_VALUEB/policy_layer/weights/.ATTRIBUTES/VARIABLE_VALUEB.policy_layer/biases/.ATTRIBUTES/VARIABLE_VALUEB2value_layer/conv_kernel/.ATTRIBUTES/VARIABLE_VALUEB2value_layer/conv_biases/.ATTRIBUTES/VARIABLE_VALUEB/value_layer/weights1/.ATTRIBUTES/VARIABLE_VALUEB.value_layer/biases1/.ATTRIBUTES/VARIABLE_VALUEB/value_layer/weights2/.ATTRIBUTES/VARIABLE_VALUEB.value_layer/biases2/.ATTRIBUTES/VARIABLE_VALUEB3cnn_layers/prelu1/alphas/.ATTRIBUTES/VARIABLE_VALUEB3cnn_layers/prelu2/alphas/.ATTRIBUTES/VARIABLE_VALUEB3cnn_layers/prelu3/alphas/.ATTRIBUTES/VARIABLE_VALUEB4policy_layer/prelu/alphas/.ATTRIBUTES/VARIABLE_VALUEB3value_layer/prelu/alphas/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_conv_kernel1_read_readvariableop'savev2_conv_biases1_read_readvariableop'savev2_conv_kernel2_read_readvariableop'savev2_conv_biases2_read_readvariableop'savev2_conv_kernel3_read_readvariableop'savev2_conv_biases3_read_readvariableop-savev2_policy_conv_kernel_read_readvariableop-savev2_policy_conv_biases_read_readvariableop)savev2_policy_weights_read_readvariableop(savev2_policy_biases_read_readvariableop,savev2_value_conv_kernel_read_readvariableop,savev2_value_conv_biases_read_readvariableop)savev2_value_weights1_read_readvariableop)savev2_policy_biases1_read_readvariableop)savev2_value_weights2_read_readvariableop)savev2_policy_biases2_read_readvariableop&savev2_relu_params_read_readvariableop(savev2_relu_params_1_read_readvariableop(savev2_relu_params_2_read_readvariableop(savev2_relu_params_3_read_readvariableop(savev2_relu_params_4_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
22
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
 : : @:@:@�:�:�::	�~:~:�::	�@:@:@:: :@:�::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:
 : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�:-)
'
_output_shapes
:�: 

_output_shapes
::%	!

_output_shapes
:	�~: 


_output_shapes
:~:-)
'
_output_shapes
:�: 

_output_shapes
::%!

_output_shapes
:	�@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
:: 

_output_shapes
: : 

_output_shapes
:@:!

_output_shapes	
:�: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
�	
q
__inference___call___347
features%
readvariableop_resource:@
identity��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yu
MaximumMaximumfeaturesMaximum/y:output:0*
T0*/
_output_shapes
:���������@2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yu
MinimumMinimumfeaturesMinimum/y:output:0*
T0*/
_output_shapes
:���������@2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpp
mulMulReadVariableOp:value:0Minimum:z:0*
T0*/
_output_shapes
:���������@2
mulc
addAddV2Maximum:z:0mul:z:0*
T0*/
_output_shapes
:���������@2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: 2 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:���������@
"
_user_specified_name
features
� 
�
__inference___call___448
conv_features>
#value_fconv_readvariableop_resource:�)
add_readvariableop_resource:
unknown:7
$value_dense1_readvariableop_resource:	�@+
add_1_readvariableop_resource:@6
$value_dense2_readvariableop_resource:@+
add_2_readvariableop_resource:
identity��StatefulPartitionedCall�add/ReadVariableOp�add_1/ReadVariableOp�add_2/ReadVariableOp�value_dense1/ReadVariableOp�value_dense2/ReadVariableOp�value_fconv/ReadVariableOp�
value_fconv/ReadVariableOpReadVariableOp#value_fconv_readvariableop_resource*'
_output_shapes
:�*
dtype02
value_fconv/ReadVariableOp�
value_fconvConv2Dconv_features"value_fconv/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
value_fconv�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOp
addAddV2value_fconv:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
add�
StatefulPartitionedCallStatefulPartitionedCalladd:z:0unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___4192
StatefulPartitionedCall�
flattened_value_features/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����   2 
flattened_value_features/shape�
flattened_value_featuresReshape StatefulPartitionedCall:output:0'flattened_value_features/shape:output:0*
T0*(
_output_shapes
:����������2
flattened_value_features�
value_dense1/ReadVariableOpReadVariableOp$value_dense1_readvariableop_resource*
_output_shapes
:	�@*
dtype02
value_dense1/ReadVariableOp�
value_dense1MatMul!flattened_value_features:output:0#value_dense1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
value_dense1�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOp
add_1AddV2value_dense1:product:0add_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
add_1�
value_dense2/ReadVariableOpReadVariableOp$value_dense2_readvariableop_resource*
_output_shapes

:@*
dtype02
value_dense2/ReadVariableOp�
value_dense2MatMul	add_1:z:0#value_dense2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
value_dense2�
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes
:*
dtype02
add_2/ReadVariableOp
add_2AddV2value_dense2:product:0add_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
add_2S
valueTanh	add_2:z:0*
T0*'
_output_shapes
:���������2
valueq
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������2
Reshape/shapen
ReshapeReshape	value:y:0Reshape/shape:output:0*
T0*#
_output_shapes
:���������2	
Reshape�
IdentityIdentityReshape:output:0^StatefulPartitionedCall^add/ReadVariableOp^add_1/ReadVariableOp^add_2/ReadVariableOp^value_dense1/ReadVariableOp^value_dense2/ReadVariableOp^value_fconv/ReadVariableOp*
T0*#
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*=
_input_shapes,
*:����������: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2:
value_dense1/ReadVariableOpvalue_dense1/ReadVariableOp2:
value_dense2/ReadVariableOpvalue_dense2/ReadVariableOp28
value_fconv/ReadVariableOpvalue_fconv/ReadVariableOp:_ [
0
_output_shapes
:����������
'
_user_specified_nameconv_features
�
�
"__inference_TransformVariables_1651
readvariableop_resource:
 3
readvariableop_1_resource: @4
readvariableop_2_resource:@�
identity

identity_1

identity_2��ReadVariableOp�ReadVariableOp_1�ReadVariableOp_2�
ReadVariableOpReadVariableOpreadvariableop_resource*&
_output_shapes
:
 *
dtype02
ReadVariableOp�
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*&
_output_shapes
: @*
dtype02
ReadVariableOp_1�
ReadVariableOp_2ReadVariableOpreadvariableop_2_resource*'
_output_shapes
:@�*
dtype02
ReadVariableOp_2�
IdentityIdentityReadVariableOp:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*&
_output_shapes
:
 2

Identity�

Identity_1IdentityReadVariableOp_1:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*&
_output_shapes
: @2

Identity_1�

Identity_2IdentityReadVariableOp_2:value:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2*
T0*'
_output_shapes
:@�2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_2
�
$
__inference_Name_169
identityd
ConstConst*
_output_shapes
: *
dtype0*&
valueB Bgomoku_cnn_shared_i112
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�	
r
__inference___call___1443
features%
readvariableop_resource:@
identity��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yu
MaximumMaximumfeaturesMaximum/y:output:0*
T0*/
_output_shapes
:���������@2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yu
MinimumMinimumfeaturesMinimum/y:output:0*
T0*/
_output_shapes
:���������@2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpp
mulMulReadVariableOp:value:0Minimum:z:0*
T0*/
_output_shapes
:���������@2
mulc
addAddV2Maximum:z:0mul:z:0*
T0*/
_output_shapes
:���������@2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������@: 2 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:���������@
"
_user_specified_name
features
�
�
__inference___call___798
conv_features?
$policy_fconv_readvariableop_resource:�)
add_readvariableop_resource:
unknown:7
$policy_dense_readvariableop_resource:	�~+
add_1_readvariableop_resource:~
identity

identity_1��StatefulPartitionedCall�add/ReadVariableOp�add_1/ReadVariableOp�policy_dense/ReadVariableOp�policy_fconv/ReadVariableOp�
policy_fconv/ReadVariableOpReadVariableOp$policy_fconv_readvariableop_resource*'
_output_shapes
:�*
dtype02
policy_fconv/ReadVariableOp�
policy_fconvConv2Dconv_features#policy_fconv/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������*
paddingSAME*
strides
2
policy_fconv�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOp�
addAddV2policy_fconv:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
add�
StatefulPartitionedCallStatefulPartitionedCalladd:z:0unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___7762
StatefulPartitionedCall�
flattened_policy_features/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  2!
flattened_policy_features/shape�
flattened_policy_featuresReshape StatefulPartitionedCall:output:0(flattened_policy_features/shape:output:0*
T0*(
_output_shapes
:����������2
flattened_policy_features�
policy_dense/ReadVariableOpReadVariableOp$policy_dense_readvariableop_resource*
_output_shapes
:	�~*
dtype02
policy_dense/ReadVariableOp�
policy_denseMatMul"flattened_policy_features:output:0#policy_dense/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~2
policy_dense�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:~*
dtype02
add_1/ReadVariableOp
add_1AddV2policy_dense:product:0add_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~2
add_1X
policySoftmax	add_1:z:0*
T0*'
_output_shapes
:���������~2
policy�
IdentityIdentitypolicy:softmax:0^StatefulPartitionedCall^add/ReadVariableOp^add_1/ReadVariableOp^policy_dense/ReadVariableOp^policy_fconv/ReadVariableOp*
T0*'
_output_shapes
:���������~2

Identity�

Identity_1Identity	add_1:z:0^StatefulPartitionedCall^add/ReadVariableOp^add_1/ReadVariableOp^policy_dense/ReadVariableOp^policy_fconv/ReadVariableOp*
T0*'
_output_shapes
:���������~2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2:
policy_dense/ReadVariableOppolicy_dense/ReadVariableOp2:
policy_fconv/ReadVariableOppolicy_fconv/ReadVariableOp:_ [
0
_output_shapes
:����������
'
_user_specified_nameconv_features
�"
�
__inference___call___764
feature_planes7
conv1_readvariableop_resource:
 )
add_readvariableop_resource: 
unknown: 7
conv2_readvariableop_resource: @+
add_1_readvariableop_resource:@
	unknown_0:@8
conv3_readvariableop_resource:@�,
add_2_readvariableop_resource:	�
	unknown_1:	�
identity��StatefulPartitionedCall�StatefulPartitionedCall_1�StatefulPartitionedCall_2�add/ReadVariableOp�add_1/ReadVariableOp�add_2/ReadVariableOp�conv1/ReadVariableOp�conv2/ReadVariableOp�conv3/ReadVariableOp�
conv1/ReadVariableOpReadVariableOpconv1_readvariableop_resource*&
_output_shapes
:
 *
dtype02
conv1/ReadVariableOp�
conv1Conv2Dfeature_planesconv1/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
2
conv1�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
add/ReadVariableOpy
addAddV2conv1:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2
add�
StatefulPartitionedCallStatefulPartitionedCalladd:z:0unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___7082
StatefulPartitionedCall�
conv2/ReadVariableOpReadVariableOpconv2_readvariableop_resource*&
_output_shapes
: @*
dtype02
conv2/ReadVariableOp�
conv2Conv2D StatefulPartitionedCall:output:0conv2/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
conv2�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOp
add_1AddV2conv2:output:0add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add_1�
StatefulPartitionedCall_1StatefulPartitionedCall	add_1:z:0	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___3472
StatefulPartitionedCall_1�
conv3/ReadVariableOpReadVariableOpconv3_readvariableop_resource*'
_output_shapes
:@�*
dtype02
conv3/ReadVariableOp�
conv3Conv2D"StatefulPartitionedCall_1:output:0conv3/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv3�
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_2/ReadVariableOp�
add_2AddV2conv3:output:0add_2/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add_2�
StatefulPartitionedCall_2StatefulPartitionedCall	add_2:z:0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___3702
StatefulPartitionedCall_2�
IdentityIdentity"StatefulPartitionedCall_2:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2^add/ReadVariableOp^add_1/ReadVariableOp^add_2/ReadVariableOp^conv1/ReadVariableOp^conv2/ReadVariableOp^conv3/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������
: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_22(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2,
conv1/ReadVariableOpconv1/ReadVariableOp2,
conv2/ReadVariableOpconv2/ReadVariableOp2,
conv3/ReadVariableOpconv3/ReadVariableOp:_ [
/
_output_shapes
:���������

(
_user_specified_namefeature_planes
�	
q
__inference___call___419
features%
readvariableop_resource:
identity��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yu
MaximumMaximumfeaturesMaximum/y:output:0*
T0*/
_output_shapes
:���������2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yu
MinimumMinimumfeaturesMinimum/y:output:0*
T0*/
_output_shapes
:���������2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpp
mulMulReadVariableOp:value:0Minimum:z:0*
T0*/
_output_shapes
:���������2
mulc
addAddV2Maximum:z:0mul:z:0*
T0*/
_output_shapes
:���������2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: 2 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:���������
"
_user_specified_name
features
�
�
#__inference_signature_wrapper_11553

boards
game_phases
next_move_stone_types
policies

values!
unknown:
 
	unknown_0: 
	unknown_1: #
	unknown_2: @
	unknown_3:@
	unknown_4:@$
	unknown_5:@�
	unknown_6:	�
	unknown_7:	�$
	unknown_8:�
	unknown_9:

unknown_10:

unknown_11:	�~

unknown_12:~%

unknown_13:�

unknown_14:

unknown_15:

unknown_16:	�@

unknown_17:@

unknown_18:@

unknown_19:
identity

identity_1

identity_2

identity_3��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallboardsgame_phasesnext_move_stone_typespoliciesvaluesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*%
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

: : : : *7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *1
f,R*
(__inference_restored_function_body_114942
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity�

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_1�

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_2�

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:���������:���������:���������:���������~:���������: : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameboards:PL
#
_output_shapes
:���������
%
_user_specified_namegame_phases:ZV
#
_output_shapes
:���������
/
_user_specified_namenext_move_stone_types:QM
'
_output_shapes
:���������~
"
_user_specified_name
policies:KG
#
_output_shapes
:���������
 
_user_specified_namevalues
�
�
__forward___call___2336

features_0&
readvariableop_resource:	�
identity
maximum
mul
features
	maximum_y
readvariableop
minimum
	minimum_y��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yx
MaximumMaximum
features_0Maximum/y:output:0*
T0*0
_output_shapes
:����������2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yx
MinimumMinimum
features_0Minimum/y:output:0*
T0*0
_output_shapes
:����������2	
Minimumu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOpA
mul_0MulReadVariableOp:value:0Minimum:z:0*
T02
mulf
addAddV2Maximum:z:0	mul_0:z:0*
T0*0
_output_shapes
:����������2
addu
IdentityIdentityadd:z:0^ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
features
features_0"
identityIdentity:output:0"
maximumMaximum:z:0"
	maximum_yMaximum/y:output:0"
minimumMinimum:z:0"
	minimum_yMinimum/y:output:0"
mul	mul_0:z:0"(
readvariableopReadVariableOp:value:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: *E
backward_function_name+)__inference___backward___call___2276_23372 
ReadVariableOpReadVariableOp:Z V
0
_output_shapes
:����������
"
_user_specified_name
features
�&
�
__forward___call___2229
conv_features_0?
$policy_fconv_readvariableop_resource:�)
add_readvariableop_resource:
unknown:7
$policy_dense_readvariableop_resource:	�~+
add_1_readvariableop_resource:~
identity

identity_1

policy
policy_dense
add_1_readvariableop
policy_dense_readvariableop
flattened_policy_features
statefulpartitionedcall
statefulpartitionedcall_0
statefulpartitionedcall_1
statefulpartitionedcall_2
statefulpartitionedcall_3
statefulpartitionedcall_4
statefulpartitionedcall_5
statefulpartitionedcall_6
policy_fconv
add_readvariableop
conv_features
policy_fconv_readvariableop��StatefulPartitionedCall�add/ReadVariableOp�add_1/ReadVariableOp�policy_dense/ReadVariableOp�policy_fconv/ReadVariableOp�
policy_fconv/ReadVariableOpReadVariableOp$policy_fconv_readvariableop_resource*'
_output_shapes
:�*
dtype02
policy_fconv/ReadVariableOp�
policy_fconv_0Conv2Dconv_features_0#policy_fconv/ReadVariableOp:value:0*
T0*
paddingSAME*
strides
2
policy_fconv�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
:*
dtype02
add/ReadVariableOp�
addAddV2policy_fconv_0:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������2
add�
StatefulPartitionedCallStatefulPartitionedCalladd:z:0unknown*
Tin
2*
Tout

2*
_collective_manager_ids
 *�
_output_shapes�
�:���������:���������:���������:���������: ::���������: *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� * 
fR
__forward___call___21892
StatefulPartitionedCall�
flattened_policy_features/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  2!
flattened_policy_features/shape�
flattened_policy_features_0Reshape StatefulPartitionedCall:output:0(flattened_policy_features/shape:output:0*
T02
flattened_policy_features�
policy_dense/ReadVariableOpReadVariableOp$policy_dense_readvariableop_resource*
_output_shapes
:	�~*
dtype02
policy_dense/ReadVariableOp|
policy_dense_0MatMul$flattened_policy_features_0:output:0#policy_dense/ReadVariableOp:value:0*
T02
policy_dense�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:~*
dtype02
add_1/ReadVariableOp�
add_1AddV2policy_dense_0:product:0add_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~2
add_11
policy_0Softmax	add_1:z:0*
T02
policy�
IdentityIdentitypolicy_0:softmax:0^StatefulPartitionedCall^add/ReadVariableOp^add_1/ReadVariableOp^policy_dense/ReadVariableOp^policy_fconv/ReadVariableOp*
T0*'
_output_shapes
:���������~2

Identity�

Identity_1Identity	add_1:z:0^StatefulPartitionedCall^add/ReadVariableOp^add_1/ReadVariableOp^policy_dense/ReadVariableOp^policy_fconv/ReadVariableOp*
T0*'
_output_shapes
:���������~2

Identity_1"4
add_1_readvariableopadd_1/ReadVariableOp:value:0"0
add_readvariableopadd/ReadVariableOp:value:0" 
conv_featuresconv_features_0"A
flattened_policy_features$flattened_policy_features_0:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"
policypolicy_0:softmax:0"(
policy_densepolicy_dense_0:product:0"B
policy_dense_readvariableop#policy_dense/ReadVariableOp:value:0"'
policy_fconvpolicy_fconv_0:output:0"B
policy_fconv_readvariableop#policy_fconv/ReadVariableOp:value:0";
statefulpartitionedcall StatefulPartitionedCall:output:0"=
statefulpartitionedcall_0 StatefulPartitionedCall:output:1"=
statefulpartitionedcall_1 StatefulPartitionedCall:output:2"=
statefulpartitionedcall_2 StatefulPartitionedCall:output:3"=
statefulpartitionedcall_3 StatefulPartitionedCall:output:4"=
statefulpartitionedcall_4 StatefulPartitionedCall:output:5"=
statefulpartitionedcall_5 StatefulPartitionedCall:output:6"=
statefulpartitionedcall_6 StatefulPartitionedCall:output:7*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:����������: : : : : *E
backward_function_name+)__inference___backward___call___2099_223022
StatefulPartitionedCallStatefulPartitionedCall2(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2:
policy_dense/ReadVariableOppolicy_dense/ReadVariableOp2:
policy_fconv/ReadVariableOppolicy_fconv/ReadVariableOp:_ [
0
_output_shapes
:����������
'
_user_specified_nameconv_features
�	
r
__inference___call___370
features&
readvariableop_resource:	�
identity��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yv
MaximumMaximumfeaturesMaximum/y:output:0*
T0*0
_output_shapes
:����������2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yv
MinimumMinimumfeaturesMinimum/y:output:0*
T0*0
_output_shapes
:����������2	
Minimumu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype02
ReadVariableOpq
mulMulReadVariableOp:value:0Minimum:z:0*
T0*0
_output_shapes
:����������2
muld
addAddV2Maximum:z:0mul:z:0*
T0*0
_output_shapes
:����������2
addu
IdentityIdentityadd:z:0^ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:����������: 2 
ReadVariableOpReadVariableOp:Z V
0
_output_shapes
:����������
"
_user_specified_name
features
�	
q
__inference___call___776
features%
readvariableop_resource:
identity��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yu
MaximumMaximumfeaturesMaximum/y:output:0*
T0*/
_output_shapes
:���������2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yu
MinimumMinimumfeaturesMinimum/y:output:0*
T0*/
_output_shapes
:���������2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpp
mulMulReadVariableOp:value:0Minimum:z:0*
T0*/
_output_shapes
:���������2
mulc
addAddV2Maximum:z:0mul:z:0*
T0*/
_output_shapes
:���������2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:���������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������: 2 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:���������
"
_user_specified_name
features
�"
�
__inference___call___736
feature_planes7
conv1_readvariableop_resource:
 )
add_readvariableop_resource: 
unknown: 7
conv2_readvariableop_resource: @+
add_1_readvariableop_resource:@
	unknown_0:@8
conv3_readvariableop_resource:@�,
add_2_readvariableop_resource:	�
	unknown_1:	�
identity��StatefulPartitionedCall�StatefulPartitionedCall_1�StatefulPartitionedCall_2�add/ReadVariableOp�add_1/ReadVariableOp�add_2/ReadVariableOp�conv1/ReadVariableOp�conv2/ReadVariableOp�conv3/ReadVariableOp�
conv1/ReadVariableOpReadVariableOpconv1_readvariableop_resource*&
_output_shapes
:
 *
dtype02
conv1/ReadVariableOp�
conv1Conv2Dfeature_planesconv1/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingSAME*
strides
2
conv1�
add/ReadVariableOpReadVariableOpadd_readvariableop_resource*
_output_shapes
: *
dtype02
add/ReadVariableOpy
addAddV2conv1:output:0add/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� 2
add�
StatefulPartitionedCallStatefulPartitionedCalladd:z:0unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:��������� *#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___7082
StatefulPartitionedCall�
conv2/ReadVariableOpReadVariableOpconv2_readvariableop_resource*&
_output_shapes
: @*
dtype02
conv2/ReadVariableOp�
conv2Conv2D StatefulPartitionedCall:output:0conv2/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingSAME*
strides
2
conv2�
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype02
add_1/ReadVariableOp
add_1AddV2conv2:output:0add_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@2
add_1�
StatefulPartitionedCall_1StatefulPartitionedCall	add_1:z:0	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:���������@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___3472
StatefulPartitionedCall_1�
conv3/ReadVariableOpReadVariableOpconv3_readvariableop_resource*'
_output_shapes
:@�*
dtype02
conv3/ReadVariableOp�
conv3Conv2D"StatefulPartitionedCall_1:output:0conv3/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
2
conv3�
add_2/ReadVariableOpReadVariableOpadd_2_readvariableop_resource*
_output_shapes	
:�*
dtype02
add_2/ReadVariableOp�
add_2AddV2conv3:output:0add_2/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������2
add_2�
StatefulPartitionedCall_2StatefulPartitionedCall	add_2:z:0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *!
fR
__inference___call___3702
StatefulPartitionedCall_2�
IdentityIdentity"StatefulPartitionedCall_2:output:0^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2^add/ReadVariableOp^add_1/ReadVariableOp^add_2/ReadVariableOp^conv1/ReadVariableOp^conv2/ReadVariableOp^conv3/ReadVariableOp*
T0*0
_output_shapes
:����������2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������
: : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall26
StatefulPartitionedCall_1StatefulPartitionedCall_126
StatefulPartitionedCall_2StatefulPartitionedCall_22(
add/ReadVariableOpadd/ReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2,
add_2/ReadVariableOpadd_2/ReadVariableOp2,
conv1/ReadVariableOpconv1/ReadVariableOp2,
conv2/ReadVariableOpconv2/ReadVariableOp2,
conv3/ReadVariableOpconv3/ReadVariableOp:_ [
/
_output_shapes
:���������

(
_user_specified_namefeature_planes
�	
q
__inference___call___146
features%
readvariableop_resource: 
identity��ReadVariableOp[
	Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Maximum/yu
MaximumMaximumfeaturesMaximum/y:output:0*
T0*/
_output_shapes
:��������� 2	
Maximum[
	Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2
	Minimum/yu
MinimumMinimumfeaturesMinimum/y:output:0*
T0*/
_output_shapes
:��������� 2	
Minimumt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpp
mulMulReadVariableOp:value:0Minimum:z:0*
T0*/
_output_shapes
:��������� 2
mulc
addAddV2Maximum:z:0mul:z:0*
T0*/
_output_shapes
:��������� 2
addt
IdentityIdentityadd:z:0^ReadVariableOp*
T0*/
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:��������� : 2 
ReadVariableOpReadVariableOp:Y U
/
_output_shapes
:��������� 
"
_user_specified_name
features
��
`
__inference___call___974

boards
game_phases
next_move_stone_types
identityx
black_stones_extraction/yConst*
_output_shapes
: *
dtype0*
value	B :2
black_stones_extraction/y�
black_stones_extractionEqualboards"black_stones_extraction/y:output:0*
T0*+
_output_shapes
:���������2
black_stones_extractionv
CastCastblack_stones_extraction:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2
Cast�
!black_stones_create_channel/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2#
!black_stones_create_channel/shape�
black_stones_create_channelReshapeCast:y:0*black_stones_create_channel/shape:output:0*
T0*/
_output_shapes
:���������2
black_stones_create_channelx
white_stones_extraction/yConst*
_output_shapes
: *
dtype0*
value	B :2
white_stones_extraction/y�
white_stones_extractionEqualboards"white_stones_extraction/y:output:0*
T0*+
_output_shapes
:���������2
white_stones_extractionz
Cast_1Castwhite_stones_extraction:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������2
Cast_1�
!white_stones_create_channel/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2#
!white_stones_create_channel/shape�
white_stones_create_channelReshape
Cast_1:y:0*white_stones_create_channel/shape:output:0*
T0*/
_output_shapes
:���������2
white_stones_create_channel�
#one_hot_expand_game_phases/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2%
#one_hot_expand_game_phases/on_value�
$one_hot_expand_game_phases/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    2&
$one_hot_expand_game_phases/off_value�
 one_hot_expand_game_phases/depthConst*
_output_shapes
: *
dtype0*
value	B :2"
 one_hot_expand_game_phases/depth�
one_hot_expand_game_phasesOneHotgame_phases)one_hot_expand_game_phases/depth:output:0,one_hot_expand_game_phases/on_value:output:0-one_hot_expand_game_phases/off_value:output:0*
T0*
TI0*'
_output_shapes
:���������2
one_hot_expand_game_phases�
!game_phases_create_channels/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2#
!game_phases_create_channels/shape�
game_phases_create_channelsReshape#one_hot_expand_game_phases:output:0*game_phases_create_channels/shape:output:0*
T0*/
_output_shapes
:���������2
game_phases_create_channels�
game_phase_plane_height/repeatsConst*
_output_shapes
:*
dtype0*
valueB:2!
game_phase_plane_height/repeats�
game_phase_plane_height/CastCast(game_phase_plane_height/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
:2
game_phase_plane_height/Cast�
game_phase_plane_height/ShapeShape$game_phases_create_channels:output:0*
T0*
_output_shapes
:2
game_phase_plane_height/Shape�
%game_phase_plane_height/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2'
%game_phase_plane_height/Reshape/shape�
'game_phase_plane_height/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2)
'game_phase_plane_height/Reshape/shape_1�
game_phase_plane_height/ReshapeReshape game_phase_plane_height/Cast:y:00game_phase_plane_height/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2!
game_phase_plane_height/Reshape�
&game_phase_plane_height/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&game_phase_plane_height/ExpandDims/dim�
"game_phase_plane_height/ExpandDims
ExpandDims$game_phases_create_channels:output:0/game_phase_plane_height/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2$
"game_phase_plane_height/ExpandDims�
(game_phase_plane_height/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2*
(game_phase_plane_height/Tile/multiples/0�
(game_phase_plane_height/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(game_phase_plane_height/Tile/multiples/1�
(game_phase_plane_height/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(game_phase_plane_height/Tile/multiples/2�
(game_phase_plane_height/Tile/multiples/4Const*
_output_shapes
: *
dtype0*
value	B :2*
(game_phase_plane_height/Tile/multiples/4�
&game_phase_plane_height/Tile/multiplesPack1game_phase_plane_height/Tile/multiples/0:output:01game_phase_plane_height/Tile/multiples/1:output:01game_phase_plane_height/Tile/multiples/2:output:0(game_phase_plane_height/Reshape:output:01game_phase_plane_height/Tile/multiples/4:output:0*
N*
T0*
_output_shapes
:2(
&game_phase_plane_height/Tile/multiples�
game_phase_plane_height/TileTile+game_phase_plane_height/ExpandDims:output:0/game_phase_plane_height/Tile/multiples:output:0*
T0*3
_output_shapes!
:���������2
game_phase_plane_height/Tile�
+game_phase_plane_height/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2-
+game_phase_plane_height/strided_slice/stack�
-game_phase_plane_height/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2/
-game_phase_plane_height/strided_slice/stack_1�
-game_phase_plane_height/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2/
-game_phase_plane_height/strided_slice/stack_2�
%game_phase_plane_height/strided_sliceStridedSlice&game_phase_plane_height/Shape:output:04game_phase_plane_height/strided_slice/stack:output:06game_phase_plane_height/strided_slice/stack_1:output:06game_phase_plane_height/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2'
%game_phase_plane_height/strided_slice�
-game_phase_plane_height/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-game_phase_plane_height/strided_slice_1/stack�
/game_phase_plane_height/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:21
/game_phase_plane_height/strided_slice_1/stack_1�
/game_phase_plane_height/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/game_phase_plane_height/strided_slice_1/stack_2�
'game_phase_plane_height/strided_slice_1StridedSlice&game_phase_plane_height/Shape:output:06game_phase_plane_height/strided_slice_1/stack:output:08game_phase_plane_height/strided_slice_1/stack_1:output:08game_phase_plane_height/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2)
'game_phase_plane_height/strided_slice_1�
game_phase_plane_height/mulMul(game_phase_plane_height/Reshape:output:00game_phase_plane_height/strided_slice_1:output:0*
T0*
_output_shapes
: 2
game_phase_plane_height/mul�
-game_phase_plane_height/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2/
-game_phase_plane_height/strided_slice_2/stack�
/game_phase_plane_height/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 21
/game_phase_plane_height/strided_slice_2/stack_1�
/game_phase_plane_height/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:21
/game_phase_plane_height/strided_slice_2/stack_2�
'game_phase_plane_height/strided_slice_2StridedSlice&game_phase_plane_height/Shape:output:06game_phase_plane_height/strided_slice_2/stack:output:08game_phase_plane_height/strided_slice_2/stack_1:output:08game_phase_plane_height/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2)
'game_phase_plane_height/strided_slice_2�
'game_phase_plane_height/concat/values_1Packgame_phase_plane_height/mul:z:0*
N*
T0*
_output_shapes
:2)
'game_phase_plane_height/concat/values_1�
#game_phase_plane_height/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2%
#game_phase_plane_height/concat/axis�
game_phase_plane_height/concatConcatV2.game_phase_plane_height/strided_slice:output:00game_phase_plane_height/concat/values_1:output:00game_phase_plane_height/strided_slice_2:output:0,game_phase_plane_height/concat/axis:output:0*
N*
T0*
_output_shapes
:2 
game_phase_plane_height/concat�
!game_phase_plane_height/Reshape_1Reshape%game_phase_plane_height/Tile:output:0'game_phase_plane_height/concat:output:0*
T0*8
_output_shapes&
$:"������������������2#
!game_phase_plane_height/Reshape_1�
game_phase_plane_width/repeatsConst*
_output_shapes
:*
dtype0*
valueB:2 
game_phase_plane_width/repeats�
game_phase_plane_width/CastCast'game_phase_plane_width/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
:2
game_phase_plane_width/Cast�
game_phase_plane_width/ShapeShape*game_phase_plane_height/Reshape_1:output:0*
T0*
_output_shapes
:2
game_phase_plane_width/Shape�
$game_phase_plane_width/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 2&
$game_phase_plane_width/Reshape/shape�
&game_phase_plane_width/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 2(
&game_phase_plane_width/Reshape/shape_1�
game_phase_plane_width/ReshapeReshapegame_phase_plane_width/Cast:y:0/game_phase_plane_width/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2 
game_phase_plane_width/Reshape�
%game_phase_plane_width/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2'
%game_phase_plane_width/ExpandDims/dim�
!game_phase_plane_width/ExpandDims
ExpandDims*game_phase_plane_height/Reshape_1:output:0.game_phase_plane_width/ExpandDims/dim:output:0*
T0*<
_output_shapes*
(:&������������������2#
!game_phase_plane_width/ExpandDims�
'game_phase_plane_width/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :2)
'game_phase_plane_width/Tile/multiples/0�
'game_phase_plane_width/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :2)
'game_phase_plane_width/Tile/multiples/1�
'game_phase_plane_width/Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :2)
'game_phase_plane_width/Tile/multiples/3�
'game_phase_plane_width/Tile/multiples/4Const*
_output_shapes
: *
dtype0*
value	B :2)
'game_phase_plane_width/Tile/multiples/4�
%game_phase_plane_width/Tile/multiplesPack0game_phase_plane_width/Tile/multiples/0:output:00game_phase_plane_width/Tile/multiples/1:output:0'game_phase_plane_width/Reshape:output:00game_phase_plane_width/Tile/multiples/3:output:00game_phase_plane_width/Tile/multiples/4:output:0*
N*
T0*
_output_shapes
:2'
%game_phase_plane_width/Tile/multiples�
game_phase_plane_width/TileTile*game_phase_plane_width/ExpandDims:output:0.game_phase_plane_width/Tile/multiples:output:0*
T0*<
_output_shapes*
(:&������������������2
game_phase_plane_width/Tile�
*game_phase_plane_width/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*game_phase_plane_width/strided_slice/stack�
,game_phase_plane_width/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,game_phase_plane_width/strided_slice/stack_1�
,game_phase_plane_width/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,game_phase_plane_width/strided_slice/stack_2�
$game_phase_plane_width/strided_sliceStridedSlice%game_phase_plane_width/Shape:output:03game_phase_plane_width/strided_slice/stack:output:05game_phase_plane_width/strided_slice/stack_1:output:05game_phase_plane_width/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask2&
$game_phase_plane_width/strided_slice�
,game_phase_plane_width/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,game_phase_plane_width/strided_slice_1/stack�
.game_phase_plane_width/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.game_phase_plane_width/strided_slice_1/stack_1�
.game_phase_plane_width/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.game_phase_plane_width/strided_slice_1/stack_2�
&game_phase_plane_width/strided_slice_1StridedSlice%game_phase_plane_width/Shape:output:05game_phase_plane_width/strided_slice_1/stack:output:07game_phase_plane_width/strided_slice_1/stack_1:output:07game_phase_plane_width/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&game_phase_plane_width/strided_slice_1�
game_phase_plane_width/mulMul'game_phase_plane_width/Reshape:output:0/game_phase_plane_width/strided_slice_1:output:0*
T0*
_output_shapes
: 2
game_phase_plane_width/mul�
,game_phase_plane_width/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2.
,game_phase_plane_width/strided_slice_2/stack�
.game_phase_plane_width/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 20
.game_phase_plane_width/strided_slice_2/stack_1�
.game_phase_plane_width/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.game_phase_plane_width/strided_slice_2/stack_2�
&game_phase_plane_width/strided_slice_2StridedSlice%game_phase_plane_width/Shape:output:05game_phase_plane_width/strided_slice_2/stack:output:07game_phase_plane_width/strided_slice_2/stack_1:output:07game_phase_plane_width/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask2(
&game_phase_plane_width/strided_slice_2�
&game_phase_plane_width/concat/values_1Packgame_phase_plane_width/mul:z:0*
N*
T0*
_output_shapes
:2(
&game_phase_plane_width/concat/values_1�
"game_phase_plane_width/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2$
"game_phase_plane_width/concat/axis�
game_phase_plane_width/concatConcatV2-game_phase_plane_width/strided_slice:output:0/game_phase_plane_width/concat/values_1:output:0/game_phase_plane_width/strided_slice_2:output:0+game_phase_plane_width/concat/axis:output:0*
N*
T0*
_output_shapes
:2
game_phase_plane_width/concat�
 game_phase_plane_width/Reshape_1Reshape$game_phase_plane_width/Tile:output:0&game_phase_plane_width/concat:output:0*
T0*A
_output_shapes/
-:+���������������������������2"
 game_phase_plane_width/Reshape_1�
-one_hot_expand_next_move_stone_types/on_valueConst*
_output_shapes
: *
dtype0*
valueB
 *  �?2/
-one_hot_expand_next_move_stone_types/on_value�
.one_hot_expand_next_move_stone_types/off_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    20
.one_hot_expand_next_move_stone_types/off_value�
*one_hot_expand_next_move_stone_types/depthConst*
_output_shapes
: *
dtype0*
value	B :2,
*one_hot_expand_next_move_stone_types/depth�
$one_hot_expand_next_move_stone_typesOneHotnext_move_stone_types3one_hot_expand_next_move_stone_types/depth:output:06one_hot_expand_next_move_stone_types/on_value:output:07one_hot_expand_next_move_stone_types/off_value:output:0*
T0*
TI0*'
_output_shapes
:���������2&
$one_hot_expand_next_move_stone_types�
+next_move_stone_types_create_channels/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����         2-
+next_move_stone_types_create_channels/shape�
%next_move_stone_types_create_channelsReshape-one_hot_expand_next_move_stone_types:output:04next_move_stone_types_create_channels/shape:output:0*
T0*/
_output_shapes
:���������2'
%next_move_stone_types_create_channels�
*next_move_stone_types_plane_height/repeatsConst*
_output_shapes
:*
dtype0*
valueB:2,
*next_move_stone_types_plane_height/repeats�
'next_move_stone_types_plane_height/CastCast3next_move_stone_types_plane_height/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
:2)
'next_move_stone_types_plane_height/Cast�
(next_move_stone_types_plane_height/ShapeShape.next_move_stone_types_create_channels:output:0*
T0*
_output_shapes
:2*
(next_move_stone_types_plane_height/Shape�
0next_move_stone_types_plane_height/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 22
0next_move_stone_types_plane_height/Reshape/shape�
2next_move_stone_types_plane_height/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 24
2next_move_stone_types_plane_height/Reshape/shape_1�
*next_move_stone_types_plane_height/ReshapeReshape+next_move_stone_types_plane_height/Cast:y:0;next_move_stone_types_plane_height/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2,
*next_move_stone_types_plane_height/Reshape�
1next_move_stone_types_plane_height/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :23
1next_move_stone_types_plane_height/ExpandDims/dim�
-next_move_stone_types_plane_height/ExpandDims
ExpandDims.next_move_stone_types_create_channels:output:0:next_move_stone_types_plane_height/ExpandDims/dim:output:0*
T0*3
_output_shapes!
:���������2/
-next_move_stone_types_plane_height/ExpandDims�
3next_move_stone_types_plane_height/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :25
3next_move_stone_types_plane_height/Tile/multiples/0�
3next_move_stone_types_plane_height/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :25
3next_move_stone_types_plane_height/Tile/multiples/1�
3next_move_stone_types_plane_height/Tile/multiples/2Const*
_output_shapes
: *
dtype0*
value	B :25
3next_move_stone_types_plane_height/Tile/multiples/2�
3next_move_stone_types_plane_height/Tile/multiples/4Const*
_output_shapes
: *
dtype0*
value	B :25
3next_move_stone_types_plane_height/Tile/multiples/4�
1next_move_stone_types_plane_height/Tile/multiplesPack<next_move_stone_types_plane_height/Tile/multiples/0:output:0<next_move_stone_types_plane_height/Tile/multiples/1:output:0<next_move_stone_types_plane_height/Tile/multiples/2:output:03next_move_stone_types_plane_height/Reshape:output:0<next_move_stone_types_plane_height/Tile/multiples/4:output:0*
N*
T0*
_output_shapes
:23
1next_move_stone_types_plane_height/Tile/multiples�
'next_move_stone_types_plane_height/TileTile6next_move_stone_types_plane_height/ExpandDims:output:0:next_move_stone_types_plane_height/Tile/multiples:output:0*
T0*3
_output_shapes!
:���������2)
'next_move_stone_types_plane_height/Tile�
6next_move_stone_types_plane_height/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6next_move_stone_types_plane_height/strided_slice/stack�
8next_move_stone_types_plane_height/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8next_move_stone_types_plane_height/strided_slice/stack_1�
8next_move_stone_types_plane_height/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8next_move_stone_types_plane_height/strided_slice/stack_2�
0next_move_stone_types_plane_height/strided_sliceStridedSlice1next_move_stone_types_plane_height/Shape:output:0?next_move_stone_types_plane_height/strided_slice/stack:output:0Anext_move_stone_types_plane_height/strided_slice/stack_1:output:0Anext_move_stone_types_plane_height/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask22
0next_move_stone_types_plane_height/strided_slice�
8next_move_stone_types_plane_height/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8next_move_stone_types_plane_height/strided_slice_1/stack�
:next_move_stone_types_plane_height/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:next_move_stone_types_plane_height/strided_slice_1/stack_1�
:next_move_stone_types_plane_height/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:next_move_stone_types_plane_height/strided_slice_1/stack_2�
2next_move_stone_types_plane_height/strided_slice_1StridedSlice1next_move_stone_types_plane_height/Shape:output:0Anext_move_stone_types_plane_height/strided_slice_1/stack:output:0Cnext_move_stone_types_plane_height/strided_slice_1/stack_1:output:0Cnext_move_stone_types_plane_height/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2next_move_stone_types_plane_height/strided_slice_1�
&next_move_stone_types_plane_height/mulMul3next_move_stone_types_plane_height/Reshape:output:0;next_move_stone_types_plane_height/strided_slice_1:output:0*
T0*
_output_shapes
: 2(
&next_move_stone_types_plane_height/mul�
8next_move_stone_types_plane_height/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2:
8next_move_stone_types_plane_height/strided_slice_2/stack�
:next_move_stone_types_plane_height/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:next_move_stone_types_plane_height/strided_slice_2/stack_1�
:next_move_stone_types_plane_height/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:next_move_stone_types_plane_height/strided_slice_2/stack_2�
2next_move_stone_types_plane_height/strided_slice_2StridedSlice1next_move_stone_types_plane_height/Shape:output:0Anext_move_stone_types_plane_height/strided_slice_2/stack:output:0Cnext_move_stone_types_plane_height/strided_slice_2/stack_1:output:0Cnext_move_stone_types_plane_height/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask24
2next_move_stone_types_plane_height/strided_slice_2�
2next_move_stone_types_plane_height/concat/values_1Pack*next_move_stone_types_plane_height/mul:z:0*
N*
T0*
_output_shapes
:24
2next_move_stone_types_plane_height/concat/values_1�
.next_move_stone_types_plane_height/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.next_move_stone_types_plane_height/concat/axis�
)next_move_stone_types_plane_height/concatConcatV29next_move_stone_types_plane_height/strided_slice:output:0;next_move_stone_types_plane_height/concat/values_1:output:0;next_move_stone_types_plane_height/strided_slice_2:output:07next_move_stone_types_plane_height/concat/axis:output:0*
N*
T0*
_output_shapes
:2+
)next_move_stone_types_plane_height/concat�
,next_move_stone_types_plane_height/Reshape_1Reshape0next_move_stone_types_plane_height/Tile:output:02next_move_stone_types_plane_height/concat:output:0*
T0*8
_output_shapes&
$:"������������������2.
,next_move_stone_types_plane_height/Reshape_1�
)next_move_stone_types_plane_width/repeatsConst*
_output_shapes
:*
dtype0*
valueB:2+
)next_move_stone_types_plane_width/repeats�
&next_move_stone_types_plane_width/CastCast2next_move_stone_types_plane_width/repeats:output:0*

DstT0*

SrcT0*
_output_shapes
:2(
&next_move_stone_types_plane_width/Cast�
'next_move_stone_types_plane_width/ShapeShape5next_move_stone_types_plane_height/Reshape_1:output:0*
T0*
_output_shapes
:2)
'next_move_stone_types_plane_width/Shape�
/next_move_stone_types_plane_width/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 21
/next_move_stone_types_plane_width/Reshape/shape�
1next_move_stone_types_plane_width/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 23
1next_move_stone_types_plane_width/Reshape/shape_1�
)next_move_stone_types_plane_width/ReshapeReshape*next_move_stone_types_plane_width/Cast:y:0:next_move_stone_types_plane_width/Reshape/shape_1:output:0*
T0*
_output_shapes
: 2+
)next_move_stone_types_plane_width/Reshape�
0next_move_stone_types_plane_width/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :22
0next_move_stone_types_plane_width/ExpandDims/dim�
,next_move_stone_types_plane_width/ExpandDims
ExpandDims5next_move_stone_types_plane_height/Reshape_1:output:09next_move_stone_types_plane_width/ExpandDims/dim:output:0*
T0*<
_output_shapes*
(:&������������������2.
,next_move_stone_types_plane_width/ExpandDims�
2next_move_stone_types_plane_width/Tile/multiples/0Const*
_output_shapes
: *
dtype0*
value	B :24
2next_move_stone_types_plane_width/Tile/multiples/0�
2next_move_stone_types_plane_width/Tile/multiples/1Const*
_output_shapes
: *
dtype0*
value	B :24
2next_move_stone_types_plane_width/Tile/multiples/1�
2next_move_stone_types_plane_width/Tile/multiples/3Const*
_output_shapes
: *
dtype0*
value	B :24
2next_move_stone_types_plane_width/Tile/multiples/3�
2next_move_stone_types_plane_width/Tile/multiples/4Const*
_output_shapes
: *
dtype0*
value	B :24
2next_move_stone_types_plane_width/Tile/multiples/4�
0next_move_stone_types_plane_width/Tile/multiplesPack;next_move_stone_types_plane_width/Tile/multiples/0:output:0;next_move_stone_types_plane_width/Tile/multiples/1:output:02next_move_stone_types_plane_width/Reshape:output:0;next_move_stone_types_plane_width/Tile/multiples/3:output:0;next_move_stone_types_plane_width/Tile/multiples/4:output:0*
N*
T0*
_output_shapes
:22
0next_move_stone_types_plane_width/Tile/multiples�
&next_move_stone_types_plane_width/TileTile5next_move_stone_types_plane_width/ExpandDims:output:09next_move_stone_types_plane_width/Tile/multiples:output:0*
T0*<
_output_shapes*
(:&������������������2(
&next_move_stone_types_plane_width/Tile�
5next_move_stone_types_plane_width/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 27
5next_move_stone_types_plane_width/strided_slice/stack�
7next_move_stone_types_plane_width/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:29
7next_move_stone_types_plane_width/strided_slice/stack_1�
7next_move_stone_types_plane_width/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:29
7next_move_stone_types_plane_width/strided_slice/stack_2�
/next_move_stone_types_plane_width/strided_sliceStridedSlice0next_move_stone_types_plane_width/Shape:output:0>next_move_stone_types_plane_width/strided_slice/stack:output:0@next_move_stone_types_plane_width/strided_slice/stack_1:output:0@next_move_stone_types_plane_width/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask21
/next_move_stone_types_plane_width/strided_slice�
7next_move_stone_types_plane_width/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7next_move_stone_types_plane_width/strided_slice_1/stack�
9next_move_stone_types_plane_width/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2;
9next_move_stone_types_plane_width/strided_slice_1/stack_1�
9next_move_stone_types_plane_width/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9next_move_stone_types_plane_width/strided_slice_1/stack_2�
1next_move_stone_types_plane_width/strided_slice_1StridedSlice0next_move_stone_types_plane_width/Shape:output:0@next_move_stone_types_plane_width/strided_slice_1/stack:output:0Bnext_move_stone_types_plane_width/strided_slice_1/stack_1:output:0Bnext_move_stone_types_plane_width/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask23
1next_move_stone_types_plane_width/strided_slice_1�
%next_move_stone_types_plane_width/mulMul2next_move_stone_types_plane_width/Reshape:output:0:next_move_stone_types_plane_width/strided_slice_1:output:0*
T0*
_output_shapes
: 2'
%next_move_stone_types_plane_width/mul�
7next_move_stone_types_plane_width/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:29
7next_move_stone_types_plane_width/strided_slice_2/stack�
9next_move_stone_types_plane_width/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2;
9next_move_stone_types_plane_width/strided_slice_2/stack_1�
9next_move_stone_types_plane_width/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2;
9next_move_stone_types_plane_width/strided_slice_2/stack_2�
1next_move_stone_types_plane_width/strided_slice_2StridedSlice0next_move_stone_types_plane_width/Shape:output:0@next_move_stone_types_plane_width/strided_slice_2/stack:output:0Bnext_move_stone_types_plane_width/strided_slice_2/stack_1:output:0Bnext_move_stone_types_plane_width/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask23
1next_move_stone_types_plane_width/strided_slice_2�
1next_move_stone_types_plane_width/concat/values_1Pack)next_move_stone_types_plane_width/mul:z:0*
N*
T0*
_output_shapes
:23
1next_move_stone_types_plane_width/concat/values_1�
-next_move_stone_types_plane_width/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2/
-next_move_stone_types_plane_width/concat/axis�
(next_move_stone_types_plane_width/concatConcatV28next_move_stone_types_plane_width/strided_slice:output:0:next_move_stone_types_plane_width/concat/values_1:output:0:next_move_stone_types_plane_width/strided_slice_2:output:06next_move_stone_types_plane_width/concat/axis:output:0*
N*
T0*
_output_shapes
:2*
(next_move_stone_types_plane_width/concat�
+next_move_stone_types_plane_width/Reshape_1Reshape/next_move_stone_types_plane_width/Tile:output:01next_move_stone_types_plane_width/concat:output:0*
T0*A
_output_shapes/
-:+���������������������������2-
+next_move_stone_types_plane_width/Reshape_1x
input_feature_planes/axisConst*
_output_shapes
: *
dtype0*
value	B :2
input_feature_planes/axis�
input_feature_planesConcatV2$black_stones_create_channel:output:0$white_stones_create_channel:output:0)game_phase_plane_width/Reshape_1:output:04next_move_stone_types_plane_width/Reshape_1:output:0"input_feature_planes/axis:output:0*
N*
T0*/
_output_shapes
:���������
2
input_feature_planesy
IdentityIdentityinput_feature_planes:output:0*
T0*/
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:���������:���������:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameboards:PL
#
_output_shapes
:���������
%
_user_specified_namegame_phases:ZV
#
_output_shapes
:���������
/
_user_specified_namenext_move_stone_types"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
	inference�
7
boards-
inference_boards:0���������
9
game_phases*
inference_game_phases:0���������
M
next_move_stone_types4
!inference_next_move_stone_types:0���������<
output_00
StatefulPartitionedCall:0���������~8
output_1,
StatefulPartitionedCall:1���������tensorflow/serving/predict*�
loss�
2
boards(
loss_boards:0���������
4
game_phases%
loss_game_phases:0���������
H
next_move_stone_types/
loss_next_move_stone_types:0���������
2
policies&
loss_policies:0���������~
*
values 
loss_values:0���������-
output_0!
StatefulPartitionedCall_1:0 -
output_1!
StatefulPartitionedCall_1:1 -
output_2!
StatefulPartitionedCall_1:2 -
output_3!
StatefulPartitionedCall_1:3 tensorflow/serving/predict:�P
�
feature_planes_builder

cnn_layers
policy_layer
value_layer

signatures
#_self_saveable_object_factories
	*Infer
+Loss
,Name
-TransformVariables
.__call__"
_generic_user_object
Q
#_self_saveable_object_factories
/__call__"
_generic_user_object
�
conv_kernel1
	conv_biases1


prelu1
conv_kernel2
conv_biases2

prelu2
conv_kernel3
conv_biases3

prelu3
#_self_saveable_object_factories
0TransformVariables
1__call__"
_generic_user_object
�
conv_kernel
conv_biases
	prelu
weights

biases
#_self_saveable_object_factories
2TransformVariables
3__call__"
_generic_user_object
�
conv_kernel
conv_biases
	prelu
weights1
biases1
weights2
biases2
#_self_saveable_object_factories
4TransformVariables
5__call__"
_generic_user_object
0
6	inference
7loss"
signature_map
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
&:$
 2conv_kernel1
: 2conv_biases1
]

 alphas
#!_self_saveable_object_factories
8__call__"
_generic_user_object
&:$ @2conv_kernel2
:@2conv_biases2
]

"alphas
##_self_saveable_object_factories
9__call__"
_generic_user_object
':%@�2conv_kernel3
:�2conv_biases3
]

$alphas
#%_self_saveable_object_factories
:__call__"
_generic_user_object
 "
trackable_dict_wrapper
-:+�2policy_conv_kernel
 :2policy_conv_biases
]

&alphas
#'_self_saveable_object_factories
;__call__"
_generic_user_object
!:	�~2policy_weights
:~2policy_biases
 "
trackable_dict_wrapper
,:*�2value_conv_kernel
:2value_conv_biases
]

(alphas
#)_self_saveable_object_factories
<__call__"
_generic_user_object
!:	�@2value_weights1
:@2policy_biases1
 :@2value_weights2
:2policy_biases2
 "
trackable_dict_wrapper
: 2relu_params
 "
trackable_dict_wrapper
:@2relu_params
 "
trackable_dict_wrapper
:�2relu_params
 "
trackable_dict_wrapper
:2relu_params
 "
trackable_dict_wrapper
:2relu_params
 "
trackable_dict_wrapper
�2�
__inference_Infer_1008�
���
FullArgSpec=
args5�2
jboards
jgame_phases
jnext_move_stone_types
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *M�J
����������
����������
����������
�2�
__inference_Loss_1254�
���
FullArgSpecS
argsK�H
jboards
jgame_phases
jnext_move_stone_types

jpolicies
jvalues
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *}�z
����������
����������
����������
����������~
����������
�2�
__inference_Name_169�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
"__inference_TransformVariables_407�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference___call___1039�
���
FullArgSpec=
args5�2
jboards
jgame_phases
jnext_move_stone_types
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *M�J
����������
����������
����������
�2�
__inference___call___323�
���
FullArgSpec=
args5�2
jboards
jgame_phases
jnext_move_stone_types
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
"__inference_TransformVariables_165�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference___call___736�
���
FullArgSpec
args�
jfeature_planes
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
"__inference_TransformVariables_154�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference___call___820�
���
FullArgSpec
args�
jconv_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
"__inference_TransformVariables_381�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference___call___448�
���
FullArgSpec
args�
jconv_features
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_11437boardsgame_phasesnext_move_stone_types"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
#__inference_signature_wrapper_11553boardsgame_phasesnext_move_stone_typespoliciesvalues"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference___call___146�
���
FullArgSpec
args�

jfeatures
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference___call___1443�
���
FullArgSpec
args�

jfeatures
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference___call___335�
���
FullArgSpec
args�

jfeatures
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference___call___84�
���
FullArgSpec
args�

jfeatures
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference___call___489�
���
FullArgSpec
args�

jfeatures
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
__inference_Infer_1008�	 "$&(���
y�v
$�!
boards���������
!�
game_phases���������
+�(
next_move_stone_types���������
� "V�S
�
0���������~
�
1���������
�
2���������~�
__inference_Loss_1254�	 "$&(���
���
$�!
boards���������
!�
game_phases���������
+�(
next_move_stone_types���������
"�
policies���������~
�
values���������
� "3�0

�
0 

�
1 

�
2 

�
3 0
__inference_Name_169�

� 
� "� p
"__inference_TransformVariables_154J�

� 
� "5�2
�
0�
�
1	�~�
"__inference_TransformVariables_165n�

� 
� "X�U
�
0
 
�
1 @
�
2@��
"__inference_TransformVariables_381_�

� 
� "I�F
�
0�
�
1	�@
�
2@�
"__inference_TransformVariables_407��

� 
� "���
�
0
 
�
1 @
�
2@�
�
3�
�
4	�~
�
5�
�
6	�@
�
7@�
__inference___call___1039�	 "$&(���
y�v
$�!
boards���������
!�
game_phases���������
+�(
next_move_stone_types���������
� "9�6
�
0���������~
�
1���������}
__inference___call___1443`"9�6
/�,
*�'
features���������@
� " ����������@|
__inference___call___146` 9�6
/�,
*�'
features��������� 
� " ���������� �
__inference___call___323����
y�v
$�!
boards���������
!�
game_phases���������
+�(
next_move_stone_types���������
� " ����������
~
__inference___call___335b$:�7
0�-
+�(
features����������
� "!�����������|
__inference___call___448`(?�<
5�2
0�-
conv_features����������
� "����������|
__inference___call___489`(9�6
/�,
*�'
features���������
� " �����������
__inference___call___736o		 "$?�<
5�2
0�-
feature_planes���������

� "!������������
__inference___call___820�&?�<
5�2
0�-
conv_features����������
� "=�:
�
0���������~
�
1���������~{
__inference___call___84`&9�6
/�,
*�'
features���������
� " �����������
#__inference_signature_wrapper_11437�	 "$&(���
� 
���
.
boards$�!
boards���������
0
game_phases!�
game_phases���������
D
next_move_stone_types+�(
next_move_stone_types���������"_�\
.
output_0"�
output_0���������~
*
output_1�
output_1����������
#__inference_signature_wrapper_11553�	 "$&(���
� 
���
.
boards$�!
boards���������
0
game_phases!�
game_phases���������
D
next_move_stone_types+�(
next_move_stone_types���������
.
policies"�
policies���������~
&
values�
values���������"�|

output_0�
output_0 

output_1�
output_1 

output_2�
output_2 

output_3�
output_3 