Ћж
Єљ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
A
BroadcastArgs
s0"T
s1"T
r0"T"
Ttype0:
2	
Z
BroadcastTo

input"T
shape"Tidx
output"T"	
Ttype"
Tidxtype0:
2	
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
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
Г
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
-
Tanh
x"T
y"T"
Ttype:

2

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018им

ActorNetwork/action/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameActorNetwork/action/bias

,ActorNetwork/action/bias/Read/ReadVariableOpReadVariableOpActorNetwork/action/bias*
_output_shapes
:*
dtype0

ActorNetwork/action/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*+
shared_nameActorNetwork/action/kernel

.ActorNetwork/action/kernel/Read/ReadVariableOpReadVariableOpActorNetwork/action/kernel*
_output_shapes
:	*
dtype0

!ActorNetwork/input_mlp/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!ActorNetwork/input_mlp/dense/bias

5ActorNetwork/input_mlp/dense/bias/Read/ReadVariableOpReadVariableOp!ActorNetwork/input_mlp/dense/bias*
_output_shapes	
:*
dtype0
Є
#ActorNetwork/input_mlp/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#ActorNetwork/input_mlp/dense/kernel

7ActorNetwork/input_mlp/dense/kernel/Read/ReadVariableOpReadVariableOp#ActorNetwork/input_mlp/dense/kernel* 
_output_shapes
:
*
dtype0

#ActorNetwork/input_mlp/dense/bias_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#ActorNetwork/input_mlp/dense/bias_1

7ActorNetwork/input_mlp/dense/bias_1/Read/ReadVariableOpReadVariableOp#ActorNetwork/input_mlp/dense/bias_1*
_output_shapes	
:*
dtype0
Ї
%ActorNetwork/input_mlp/dense/kernel_1VarHandleOp*
_output_shapes
: *
dtype0*
shape:	*6
shared_name'%ActorNetwork/input_mlp/dense/kernel_1
 
9ActorNetwork/input_mlp/dense/kernel_1/Read/ReadVariableOpReadVariableOp%ActorNetwork/input_mlp/dense/kernel_1*
_output_shapes
:	*
dtype0
d
VariableVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0	

NoOpNoOp
Ѕ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*р
valueжBг BЬ
Г

train_step
metadata
model_variables
_all_assets

action
distribution
get_initial_state
get_metadata
	get_train_step


signatures*
GA
VARIABLE_VALUEVariable%train_step/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

_actor_network*

trace_0
trace_1* 

trace_0* 

trace_0* 
* 
* 
K

action
get_initial_state
get_train_step
get_metadata* 
ke
VARIABLE_VALUE%ActorNetwork/input_mlp/dense/kernel_1,model_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE#ActorNetwork/input_mlp/dense/bias_1,model_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE#ActorNetwork/input_mlp/dense/kernel,model_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE!ActorNetwork/input_mlp/dense/bias,model_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEActorNetwork/action/kernel,model_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEActorNetwork/action/bias,model_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _mlp_layers*
* 
* 
* 
* 
* 
* 
* 
* 
.
0
1
2
3
4
5*
.
0
1
2
3
4
5*
* 

!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
 
&0
'1
(2
)3*
* 
 
&0
'1
(2
)3*
* 
* 
* 

*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
І
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

kernel
bias*
І
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias*
І
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias*
* 
* 
* 

Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 
* 
* 

0
1*

0
1*
* 

Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 

Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
* 
* 

0
1*

0
1*
* 

Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
l
action_0_discountPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
w
action_0_observationPlaceholder*'
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
j
action_0_rewardPlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
m
action_0_step_typePlaceholder*#
_output_shapes
:џџџџџџџџџ*
dtype0*
shape:џџџџџџџџџ
Ц
StatefulPartitionedCallStatefulPartitionedCallaction_0_discountaction_0_observationaction_0_rewardaction_0_step_type%ActorNetwork/input_mlp/dense/kernel_1#ActorNetwork/input_mlp/dense/bias_1#ActorNetwork/input_mlp/dense/kernel!ActorNetwork/input_mlp/dense/biasActorNetwork/action/kernelActorNetwork/action/bias*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *0
f+R)
'__inference_signature_wrapper_136696886
]
get_initial_state_batch_sizePlaceholder*
_output_shapes
: *
dtype0*
shape: 
џ
PartitionedCallPartitionedCallget_initial_state_batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *0
f+R)
'__inference_signature_wrapper_136696891
р
PartitionedCall_1PartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *0
f+R)
'__inference_signature_wrapper_136696903

StatefulPartitionedCall_1StatefulPartitionedCallVariable*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *0
f+R)
'__inference_signature_wrapper_136696899
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOp9ActorNetwork/input_mlp/dense/kernel_1/Read/ReadVariableOp7ActorNetwork/input_mlp/dense/bias_1/Read/ReadVariableOp7ActorNetwork/input_mlp/dense/kernel/Read/ReadVariableOp5ActorNetwork/input_mlp/dense/bias/Read/ReadVariableOp.ActorNetwork/action/kernel/Read/ReadVariableOp,ActorNetwork/action/bias/Read/ReadVariableOpConst*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__traced_save_136696952
ї
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable%ActorNetwork/input_mlp/dense/kernel_1#ActorNetwork/input_mlp/dense/bias_1#ActorNetwork/input_mlp/dense/kernel!ActorNetwork/input_mlp/dense/biasActorNetwork/action/kernelActorNetwork/action/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference__traced_restore_136696983й
з

"__inference__traced_save_136696952
file_prefix'
#savev2_variable_read_readvariableop	D
@savev2_actornetwork_input_mlp_dense_kernel_1_read_readvariableopB
>savev2_actornetwork_input_mlp_dense_bias_1_read_readvariableopB
>savev2_actornetwork_input_mlp_dense_kernel_read_readvariableop@
<savev2_actornetwork_input_mlp_dense_bias_read_readvariableop9
5savev2_actornetwork_action_kernel_read_readvariableop7
3savev2_actornetwork_action_bias_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Х
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ю
valueфBсB%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH}
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B Ш
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop@savev2_actornetwork_input_mlp_dense_kernel_1_read_readvariableop>savev2_actornetwork_input_mlp_dense_bias_1_read_readvariableop>savev2_actornetwork_input_mlp_dense_kernel_read_readvariableop<savev2_actornetwork_input_mlp_dense_bias_read_readvariableop5savev2_actornetwork_action_kernel_read_readvariableop3savev2_actornetwork_action_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes

2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*O
_input_shapes>
<: : :	::
::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :%!

_output_shapes
:	:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: 
К!
Ѓ
%__inference__traced_restore_136696983
file_prefix#
assignvariableop_variable:	 K
8assignvariableop_1_actornetwork_input_mlp_dense_kernel_1:	E
6assignvariableop_2_actornetwork_input_mlp_dense_bias_1:	J
6assignvariableop_3_actornetwork_input_mlp_dense_kernel:
C
4assignvariableop_4_actornetwork_input_mlp_dense_bias:	@
-assignvariableop_5_actornetwork_action_kernel:	9
+assignvariableop_6_actornetwork_action_bias:

identity_8ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_2ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6Ш
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ю
valueфBсB%train_step/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/0/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/1/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/2/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/3/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/4/.ATTRIBUTES/VARIABLE_VALUEB,model_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B Ц
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_1AssignVariableOp8assignvariableop_1_actornetwork_input_mlp_dense_kernel_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_2AssignVariableOp6assignvariableop_2_actornetwork_input_mlp_dense_bias_1Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_3AssignVariableOp6assignvariableop_3_actornetwork_input_mlp_dense_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_4AssignVariableOp4assignvariableop_4_actornetwork_input_mlp_dense_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp-assignvariableop_5_actornetwork_action_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp+assignvariableop_6_actornetwork_action_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ы

Identity_7Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_8IdentityIdentity_7:output:0^NoOp_1*
T0*
_output_shapes
: й
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "!

identity_8Identity_8:output:0*#
_input_shapes
: : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_6:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ж
,
*__inference_function_with_signature_350955ш
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *$
fR
__inference_<lambda>_327408*(
_construction_contextkEagerRuntime*
_input_shapes 
Ц
<
*__inference_function_with_signature_350932

batch_size
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *-
f(R&
$__inference_get_initial_state_350931*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
Н
6
$__inference_get_initial_state_351132

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
б
j
*__inference_function_with_signature_350944
unknown:	 
identity	ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *$
fR
__inference_<lambda>_327405^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
ЪO

(__inference_polymorphic_action_fn_351089
time_step_step_type
time_step_reward
time_step_discount
time_step_observationN
;actornetwork_input_mlp_dense_matmul_readvariableop_resource:	K
<actornetwork_input_mlp_dense_biasadd_readvariableop_resource:	Q
=actornetwork_input_mlp_dense_matmul_1_readvariableop_resource:
M
>actornetwork_input_mlp_dense_biasadd_1_readvariableop_resource:	E
2actornetwork_action_matmul_readvariableop_resource:	A
3actornetwork_action_biasadd_readvariableop_resource:
identityЂ*ActorNetwork/action/BiasAdd/ReadVariableOpЂ)ActorNetwork/action/MatMul/ReadVariableOpЂ3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOpЂ5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpЂ2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOpЂ4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOpk
ActorNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ActorNetwork/flatten/ReshapeReshapetime_step_observation#ActorNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџЏ
2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOpReadVariableOp;actornetwork_input_mlp_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0У
#ActorNetwork/input_mlp/dense/MatMulMatMul%ActorNetwork/flatten/Reshape:output:0:ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ­
3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ю
$ActorNetwork/input_mlp/dense/BiasAddBiasAdd-ActorNetwork/input_mlp/dense/MatMul:product:0;ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!ActorNetwork/input_mlp/dense/TanhTanh-ActorNetwork/input_mlp/dense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџД
4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ч
%ActorNetwork/input_mlp/dense/MatMul_1MatMul%ActorNetwork/input_mlp/dense/Tanh:y:0<ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpReadVariableOp>actornetwork_input_mlp_dense_biasadd_1_readvariableop_resource*
_output_shapes	
:*
dtype0д
&ActorNetwork/input_mlp/dense/BiasAdd_1BiasAdd/ActorNetwork/input_mlp/dense/MatMul_1:product:0=ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
#ActorNetwork/input_mlp/dense/Tanh_1Tanh/ActorNetwork/input_mlp/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
)ActorNetwork/action/MatMul/ReadVariableOpReadVariableOp2actornetwork_action_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0В
ActorNetwork/action/MatMulMatMul'ActorNetwork/input_mlp/dense/Tanh_1:y:01ActorNetwork/action/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
*ActorNetwork/action/BiasAdd/ReadVariableOpReadVariableOp3actornetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0В
ActorNetwork/action/BiasAddBiasAdd$ActorNetwork/action/MatMul:product:02ActorNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
ActorNetwork/action/TanhTanh$ActorNetwork/action/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
ActorNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ActorNetwork/ReshapeReshapeActorNetwork/action/Tanh:y:0#ActorNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџW
ActorNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ActorNetwork/mulMulActorNetwork/mul/x:output:0ActorNetwork/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџW
ActorNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
ActorNetwork/addAddV2ActorNetwork/add/x:output:0ActorNetwork/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    W
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ^
Deterministic/sample/ShapeShapeActorNetwork/add:z:0*
T0*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ў
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ё
 Deterministic/sample/BroadcastToBroadcastToActorNetwork/add:z:0$Deterministic/sample/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџu
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Р
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ќ
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentityclip_by_value:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџљ
NoOpNoOp+^ActorNetwork/action/BiasAdd/ReadVariableOp*^ActorNetwork/action/MatMul/ReadVariableOp4^ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp6^ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp3^ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2X
*ActorNetwork/action/BiasAdd/ReadVariableOp*ActorNetwork/action/BiasAdd/ReadVariableOp2V
)ActorNetwork/action/MatMul/ReadVariableOp)ActorNetwork/action/MatMul/ReadVariableOp2j
3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp2n
5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp2h
2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:X T
#
_output_shapes
:џџџџџџџџџ
-
_user_specified_nametime_step/step_type:UQ
#
_output_shapes
:џџџџџџџџџ
*
_user_specified_nametime_step/reward:WS
#
_output_shapes
:џџџџџџџџџ
,
_user_specified_nametime_step/discount:^Z
'
_output_shapes
:џџџџџџџџџ
/
_user_specified_nametime_step/observation
ў2

.__inference_polymorphic_distribution_fn_351129
	step_type

reward
discount
observationN
;actornetwork_input_mlp_dense_matmul_readvariableop_resource:	K
<actornetwork_input_mlp_dense_biasadd_readvariableop_resource:	Q
=actornetwork_input_mlp_dense_matmul_1_readvariableop_resource:
M
>actornetwork_input_mlp_dense_biasadd_1_readvariableop_resource:	E
2actornetwork_action_matmul_readvariableop_resource:	A
3actornetwork_action_biasadd_readvariableop_resource:
identity

identity_1

identity_2Ђ*ActorNetwork/action/BiasAdd/ReadVariableOpЂ)ActorNetwork/action/MatMul/ReadVariableOpЂ3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOpЂ5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpЂ2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOpЂ4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOpk
ActorNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ActorNetwork/flatten/ReshapeReshapeobservation#ActorNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџЏ
2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOpReadVariableOp;actornetwork_input_mlp_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0У
#ActorNetwork/input_mlp/dense/MatMulMatMul%ActorNetwork/flatten/Reshape:output:0:ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ­
3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ю
$ActorNetwork/input_mlp/dense/BiasAddBiasAdd-ActorNetwork/input_mlp/dense/MatMul:product:0;ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!ActorNetwork/input_mlp/dense/TanhTanh-ActorNetwork/input_mlp/dense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџД
4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ч
%ActorNetwork/input_mlp/dense/MatMul_1MatMul%ActorNetwork/input_mlp/dense/Tanh:y:0<ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpReadVariableOp>actornetwork_input_mlp_dense_biasadd_1_readvariableop_resource*
_output_shapes	
:*
dtype0д
&ActorNetwork/input_mlp/dense/BiasAdd_1BiasAdd/ActorNetwork/input_mlp/dense/MatMul_1:product:0=ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
#ActorNetwork/input_mlp/dense/Tanh_1Tanh/ActorNetwork/input_mlp/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
)ActorNetwork/action/MatMul/ReadVariableOpReadVariableOp2actornetwork_action_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0В
ActorNetwork/action/MatMulMatMul'ActorNetwork/input_mlp/dense/Tanh_1:y:01ActorNetwork/action/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
*ActorNetwork/action/BiasAdd/ReadVariableOpReadVariableOp3actornetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0В
ActorNetwork/action/BiasAddBiasAdd$ActorNetwork/action/MatMul:product:02ActorNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
ActorNetwork/action/TanhTanh$ActorNetwork/action/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
ActorNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ActorNetwork/ReshapeReshapeActorNetwork/action/Tanh:y:0#ActorNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџW
ActorNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ActorNetwork/mulMulActorNetwork/mul/x:output:0ActorNetwork/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџW
ActorNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
ActorNetwork/addAddV2ActorNetwork/add/x:output:0ActorNetwork/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    W
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    Y
IdentityIdentityDeterministic/atol:output:0^NoOp*
T0*
_output_shapes
: e

Identity_1IdentityActorNetwork/add:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ[

Identity_2IdentityDeterministic/rtol:output:0^NoOp*
T0*
_output_shapes
: љ
NoOpNoOp+^ActorNetwork/action/BiasAdd/ReadVariableOp*^ActorNetwork/action/MatMul/ReadVariableOp4^ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp6^ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp3^ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2X
*ActorNetwork/action/BiasAdd/ReadVariableOp*ActorNetwork/action/BiasAdd/ReadVariableOp2V
)ActorNetwork/action/MatMul/ReadVariableOp)ActorNetwork/action/MatMul/ReadVariableOp2j
3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp2n
5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp2h
2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:N J
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	step_type:KG
#
_output_shapes
:џџџџџџџџџ
 
_user_specified_namereward:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
discount:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameobservation
а
Д
'__inference_signature_wrapper_136696886
discount
observation

reward
	step_type
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	
	unknown_4:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *3
f.R,
*__inference_function_with_signature_350903o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
#
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
0/discount:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_name0/observation:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
0/reward:PL
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_name0/step_type
њN
љ
(__inference_polymorphic_action_fn_350888
	time_step
time_step_1
time_step_2
time_step_3N
;actornetwork_input_mlp_dense_matmul_readvariableop_resource:	K
<actornetwork_input_mlp_dense_biasadd_readvariableop_resource:	Q
=actornetwork_input_mlp_dense_matmul_1_readvariableop_resource:
M
>actornetwork_input_mlp_dense_biasadd_1_readvariableop_resource:	E
2actornetwork_action_matmul_readvariableop_resource:	A
3actornetwork_action_biasadd_readvariableop_resource:
identityЂ*ActorNetwork/action/BiasAdd/ReadVariableOpЂ)ActorNetwork/action/MatMul/ReadVariableOpЂ3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOpЂ5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpЂ2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOpЂ4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOpk
ActorNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ActorNetwork/flatten/ReshapeReshapetime_step_3#ActorNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџЏ
2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOpReadVariableOp;actornetwork_input_mlp_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0У
#ActorNetwork/input_mlp/dense/MatMulMatMul%ActorNetwork/flatten/Reshape:output:0:ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ­
3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ю
$ActorNetwork/input_mlp/dense/BiasAddBiasAdd-ActorNetwork/input_mlp/dense/MatMul:product:0;ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!ActorNetwork/input_mlp/dense/TanhTanh-ActorNetwork/input_mlp/dense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџД
4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ч
%ActorNetwork/input_mlp/dense/MatMul_1MatMul%ActorNetwork/input_mlp/dense/Tanh:y:0<ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpReadVariableOp>actornetwork_input_mlp_dense_biasadd_1_readvariableop_resource*
_output_shapes	
:*
dtype0д
&ActorNetwork/input_mlp/dense/BiasAdd_1BiasAdd/ActorNetwork/input_mlp/dense/MatMul_1:product:0=ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
#ActorNetwork/input_mlp/dense/Tanh_1Tanh/ActorNetwork/input_mlp/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
)ActorNetwork/action/MatMul/ReadVariableOpReadVariableOp2actornetwork_action_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0В
ActorNetwork/action/MatMulMatMul'ActorNetwork/input_mlp/dense/Tanh_1:y:01ActorNetwork/action/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
*ActorNetwork/action/BiasAdd/ReadVariableOpReadVariableOp3actornetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0В
ActorNetwork/action/BiasAddBiasAdd$ActorNetwork/action/MatMul:product:02ActorNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
ActorNetwork/action/TanhTanh$ActorNetwork/action/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
ActorNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ActorNetwork/ReshapeReshapeActorNetwork/action/Tanh:y:0#ActorNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџW
ActorNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ActorNetwork/mulMulActorNetwork/mul/x:output:0ActorNetwork/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџW
ActorNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
ActorNetwork/addAddV2ActorNetwork/add/x:output:0ActorNetwork/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    W
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ^
Deterministic/sample/ShapeShapeActorNetwork/add:z:0*
T0*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ў
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ё
 Deterministic/sample/BroadcastToBroadcastToActorNetwork/add:z:0$Deterministic/sample/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџu
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Р
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ќ
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentityclip_by_value:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџљ
NoOpNoOp+^ActorNetwork/action/BiasAdd/ReadVariableOp*^ActorNetwork/action/MatMul/ReadVariableOp4^ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp6^ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp3^ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2X
*ActorNetwork/action/BiasAdd/ReadVariableOp*ActorNetwork/action/BiasAdd/ReadVariableOp2V
)ActorNetwork/action/MatMul/ReadVariableOp)ActorNetwork/action/MatMul/ReadVariableOp2j
3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp2n
5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp2h
2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:N J
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	time_step:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	time_step:NJ
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	time_step:RN
'
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	time_step
б
З
*__inference_function_with_signature_350903
	step_type

reward
discount
observation
unknown:	
	unknown_0:	
	unknown_1:

	unknown_2:	
	unknown_3:	
	unknown_4:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall	step_typerewarddiscountobservationunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2
*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*(
_read_only_resource_inputs

	*0
config_proto 

CPU

GPU2*0J 8 *1
f,R*
(__inference_polymorphic_action_fn_350888o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:џџџџџџџџџ
%
_user_specified_name0/step_type:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
0/reward:OK
#
_output_shapes
:џџџџџџџџџ
$
_user_specified_name
0/discount:VR
'
_output_shapes
:џџџџџџџџџ
'
_user_specified_name0/observation
Щ
9
'__inference_signature_wrapper_136696891

batch_size
PartitionedCallPartitionedCall
batch_size*
Tin
2*

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *3
f.R,
*__inference_function_with_signature_350932*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
н
g
'__inference_signature_wrapper_136696899
unknown:	 
identity	ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallunknown*
Tin
2*
Tout
2	*
_collective_manager_ids
 *
_output_shapes
: *#
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *3
f.R,
*__inference_function_with_signature_350944^
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0	*
_output_shapes
: `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 22
StatefulPartitionedCallStatefulPartitionedCall
Н
6
$__inference_get_initial_state_350931

batch_size*(
_construction_contextkEagerRuntime*
_input_shapes
: :B >

_output_shapes
: 
$
_user_specified_name
batch_size
\

__inference_<lambda>_327408*(
_construction_contextkEagerRuntime*
_input_shapes 
№N
ё
(__inference_polymorphic_action_fn_351024
	step_type

reward
discount
observationN
;actornetwork_input_mlp_dense_matmul_readvariableop_resource:	K
<actornetwork_input_mlp_dense_biasadd_readvariableop_resource:	Q
=actornetwork_input_mlp_dense_matmul_1_readvariableop_resource:
M
>actornetwork_input_mlp_dense_biasadd_1_readvariableop_resource:	E
2actornetwork_action_matmul_readvariableop_resource:	A
3actornetwork_action_biasadd_readvariableop_resource:
identityЂ*ActorNetwork/action/BiasAdd/ReadVariableOpЂ)ActorNetwork/action/MatMul/ReadVariableOpЂ3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOpЂ5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpЂ2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOpЂ4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOpk
ActorNetwork/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ActorNetwork/flatten/ReshapeReshapeobservation#ActorNetwork/flatten/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџЏ
2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOpReadVariableOp;actornetwork_input_mlp_dense_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0У
#ActorNetwork/input_mlp/dense/MatMulMatMul%ActorNetwork/flatten/Reshape:output:0:ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ­
3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOpReadVariableOp<actornetwork_input_mlp_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ю
$ActorNetwork/input_mlp/dense/BiasAddBiasAdd-ActorNetwork/input_mlp/dense/MatMul:product:0;ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!ActorNetwork/input_mlp/dense/TanhTanh-ActorNetwork/input_mlp/dense/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџД
4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOpReadVariableOp=actornetwork_input_mlp_dense_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ч
%ActorNetwork/input_mlp/dense/MatMul_1MatMul%ActorNetwork/input_mlp/dense/Tanh:y:0<ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџБ
5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOpReadVariableOp>actornetwork_input_mlp_dense_biasadd_1_readvariableop_resource*
_output_shapes	
:*
dtype0д
&ActorNetwork/input_mlp/dense/BiasAdd_1BiasAdd/ActorNetwork/input_mlp/dense/MatMul_1:product:0=ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
#ActorNetwork/input_mlp/dense/Tanh_1Tanh/ActorNetwork/input_mlp/dense/BiasAdd_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
)ActorNetwork/action/MatMul/ReadVariableOpReadVariableOp2actornetwork_action_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0В
ActorNetwork/action/MatMulMatMul'ActorNetwork/input_mlp/dense/Tanh_1:y:01ActorNetwork/action/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
*ActorNetwork/action/BiasAdd/ReadVariableOpReadVariableOp3actornetwork_action_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0В
ActorNetwork/action/BiasAddBiasAdd$ActorNetwork/action/MatMul:product:02ActorNetwork/action/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџx
ActorNetwork/action/TanhTanh$ActorNetwork/action/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџk
ActorNetwork/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   
ActorNetwork/ReshapeReshapeActorNetwork/action/Tanh:y:0#ActorNetwork/Reshape/shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџW
ActorNetwork/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
ActorNetwork/mulMulActorNetwork/mul/x:output:0ActorNetwork/Reshape:output:0*
T0*'
_output_shapes
:џџџџџџџџџW
ActorNetwork/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?~
ActorNetwork/addAddV2ActorNetwork/add/x:output:0ActorNetwork/mul:z:0*
T0*'
_output_shapes
:џџџџџџџџџW
Deterministic/atolConst*
_output_shapes
: *
dtype0*
valueB
 *    W
Deterministic/rtolConst*
_output_shapes
: *
dtype0*
valueB
 *    d
!Deterministic/sample/sample_shapeConst*
_output_shapes
: *
dtype0*
valueB ^
Deterministic/sample/ShapeShapeActorNetwork/add:z:0*
T0*
_output_shapes
:\
Deterministic/sample/ConstConst*
_output_shapes
: *
dtype0*
value	B : r
(Deterministic/sample/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*Deterministic/sample/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*Deterministic/sample/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
"Deterministic/sample/strided_sliceStridedSlice#Deterministic/sample/Shape:output:01Deterministic/sample/strided_slice/stack:output:03Deterministic/sample/strided_slice/stack_1:output:03Deterministic/sample/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskh
%Deterministic/sample/BroadcastArgs/s0Const*
_output_shapes
: *
dtype0*
valueB j
'Deterministic/sample/BroadcastArgs/s0_1Const*
_output_shapes
: *
dtype0*
valueB Ў
"Deterministic/sample/BroadcastArgsBroadcastArgs0Deterministic/sample/BroadcastArgs/s0_1:output:0+Deterministic/sample/strided_slice:output:0*
_output_shapes
:n
$Deterministic/sample/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB:g
$Deterministic/sample/concat/values_2Const*
_output_shapes
: *
dtype0*
valueB b
 Deterministic/sample/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Deterministic/sample/concatConcatV2-Deterministic/sample/concat/values_0:output:0'Deterministic/sample/BroadcastArgs:r0:0-Deterministic/sample/concat/values_2:output:0)Deterministic/sample/concat/axis:output:0*
N*
T0*
_output_shapes
:Ё
 Deterministic/sample/BroadcastToBroadcastToActorNetwork/add:z:0$Deterministic/sample/concat:output:0*
T0*+
_output_shapes
:џџџџџџџџџu
Deterministic/sample/Shape_1Shape)Deterministic/sample/BroadcastTo:output:0*
T0*
_output_shapes
:t
*Deterministic/sample/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:v
,Deterministic/sample/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: v
,Deterministic/sample/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Р
$Deterministic/sample/strided_slice_1StridedSlice%Deterministic/sample/Shape_1:output:03Deterministic/sample/strided_slice_1/stack:output:05Deterministic/sample/strided_slice_1/stack_1:output:05Deterministic/sample/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskd
"Deterministic/sample/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : п
Deterministic/sample/concat_1ConcatV2*Deterministic/sample/sample_shape:output:0-Deterministic/sample/strided_slice_1:output:0+Deterministic/sample/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ќ
Deterministic/sample/ReshapeReshape)Deterministic/sample/BroadcastTo:output:0&Deterministic/sample/concat_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ\
clip_by_value/Minimum/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
clip_by_value/MinimumMinimum%Deterministic/sample/Reshape:output:0 clip_by_value/Minimum/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџT
clip_by_value/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
clip_by_valueMaximumclip_by_value/Minimum:z:0clip_by_value/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentityclip_by_value:z:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџљ
NoOpNoOp+^ActorNetwork/action/BiasAdd/ReadVariableOp*^ActorNetwork/action/MatMul/ReadVariableOp4^ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp6^ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp3^ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp5^ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ: : : : : : 2X
*ActorNetwork/action/BiasAdd/ReadVariableOp*ActorNetwork/action/BiasAdd/ReadVariableOp2V
)ActorNetwork/action/MatMul/ReadVariableOp)ActorNetwork/action/MatMul/ReadVariableOp2j
3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp3ActorNetwork/input_mlp/dense/BiasAdd/ReadVariableOp2n
5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp5ActorNetwork/input_mlp/dense/BiasAdd_1/ReadVariableOp2h
2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp2ActorNetwork/input_mlp/dense/MatMul/ReadVariableOp2l
4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp4ActorNetwork/input_mlp/dense/MatMul_1/ReadVariableOp:N J
#
_output_shapes
:џџџџџџџџџ
#
_user_specified_name	step_type:KG
#
_output_shapes
:џџџџџџџџџ
 
_user_specified_namereward:MI
#
_output_shapes
:џџџџџџџџџ
"
_user_specified_name
discount:TP
'
_output_shapes
:џџџџџџџџџ
%
_user_specified_nameobservation
т
)
'__inference_signature_wrapper_136696903ї
PartitionedCallPartitionedCall*	
Tin
 *

Tout
 *
_collective_manager_ids
 *
_output_shapes
 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *3
f.R,
*__inference_function_with_signature_350955*(
_construction_contextkEagerRuntime*
_input_shapes 
ѕ
b
__inference_<lambda>_327405!
readvariableop_resource:	 
identity	ЂReadVariableOp^
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0	T
IdentityIdentityReadVariableOp:value:0^NoOp*
T0	*
_output_shapes
: W
NoOpNoOp^ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2 
ReadVariableOpReadVariableOp"ПL
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*У
actionИ
4

0/discount&
action_0_discount:0џџџџџџџџџ
>
0/observation-
action_0_observation:0џџџџџџџџџ
0
0/reward$
action_0_reward:0џџџџџџџџџ
6
0/step_type'
action_0_step_type:0џџџџџџџџџ:
action0
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict*e
get_initial_stateP
2

batch_size$
get_initial_state_batch_size:0 tensorflow/serving/predict*,
get_metadatatensorflow/serving/predict*Z
get_train_stepH*
int64!
StatefulPartitionedCall_1:0	 tensorflow/serving/predict:П]
Э

train_step
metadata
model_variables
_all_assets

action
distribution
get_initial_state
get_metadata
	get_train_step


signatures"
_generic_user_object
:	 (2Variable
 "
trackable_dict_wrapper
K
0
1
2
3
4
5"
trackable_tuple_wrapper
4
_actor_network"
trackable_dict_wrapper
П
trace_0
trace_12
(__inference_polymorphic_action_fn_351024
(__inference_polymorphic_action_fn_351089Б
ЊВІ
FullArgSpec(
args 
j	time_step
jpolicy_state
varargs
 
varkw
 
defaultsЂ
Ђ 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_02ф
.__inference_polymorphic_distribution_fn_351129Б
ЊВІ
FullArgSpec(
args 
j	time_step
jpolicy_state
varargs
 
varkw
 
defaultsЂ
Ђ 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
ь
trace_02Я
$__inference_get_initial_state_351132І
В
FullArgSpec!
args
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
БBЎ
__inference_<lambda>_327408"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
БBЎ
__inference_<lambda>_327405"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
`

action
get_initial_state
get_train_step
get_metadata"
signature_map
6:4	2#ActorNetwork/input_mlp/dense/kernel
0:.2!ActorNetwork/input_mlp/dense/bias
7:5
2#ActorNetwork/input_mlp/dense/kernel
0:.2!ActorNetwork/input_mlp/dense/bias
-:+	2ActorNetwork/action/kernel
&:$2ActorNetwork/action/bias
Ж
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
 _mlp_layers"
_tf_keras_layer
B
(__inference_polymorphic_action_fn_351024	step_typerewarddiscountobservation"Б
ЊВІ
FullArgSpec(
args 
j	time_step
jpolicy_state
varargs
 
varkw
 
defaultsЂ
Ђ 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЕBВ
(__inference_polymorphic_action_fn_351089time_step/step_typetime_step/rewardtime_step/discounttime_step/observation"Б
ЊВІ
FullArgSpec(
args 
j	time_step
jpolicy_state
varargs
 
varkw
 
defaultsЂ
Ђ 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
.__inference_polymorphic_distribution_fn_351129	step_typerewarddiscountobservation"Б
ЊВІ
FullArgSpec(
args 
j	time_step
jpolicy_state
varargs
 
varkw
 
defaultsЂ
Ђ 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
рBн
$__inference_get_initial_state_351132
batch_size"І
В
FullArgSpec!
args
jself
j
batch_size
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ѕBђ
'__inference_signature_wrapper_136696886
0/discount0/observation0/reward0/step_type"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
бBЮ
'__inference_signature_wrapper_136696891
batch_size"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
УBР
'__inference_signature_wrapper_136696899"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
УBР
'__inference_signature_wrapper_136696903"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
J
0
1
2
3
4
5"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
­
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ш2хт
йВе
FullArgSpecM
argsEB
jself
jobservations
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults
Ђ 
Ђ 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ш2хт
йВе
FullArgSpecM
argsEB
jself
jobservations
j	step_type
jnetwork_state

jtraining
varargs
 
varkw
 
defaults
Ђ 
Ђ 
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
<
&0
'1
(2
)3"
trackable_list_wrapper
 "
trackable_list_wrapper
<
&0
'1
(2
)3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
Ѕ
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Л
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Л
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Ј2ЅЂ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper:
__inference_<lambda>_327405Ђ

Ђ 
Њ " 	3
__inference_<lambda>_327408Ђ

Ђ 
Њ "Њ Q
$__inference_get_initial_state_351132)"Ђ
Ђ


batch_size 
Њ "Ђ ю
(__inference_polymorphic_action_fn_351024СоЂк
вЂЮ
ЦВТ
TimeStep,
	step_type
	step_typeџџџџџџџџџ&
reward
rewardџџџџџџџџџ*
discount
discountџџџџџџџџџ4
observation%"
observationџџџџџџџџџ
Ђ 
Њ "VВS

PolicyStep*
action 
actionџџџџџџџџџ
stateЂ 
infoЂ 
(__inference_polymorphic_action_fn_351089щЂ
њЂі
юВъ
TimeStep6
	step_type)&
time_step/step_typeџџџџџџџџџ0
reward&#
time_step/rewardџџџџџџџџџ4
discount(%
time_step/discountџџџџџџџџџ>
observation/,
time_step/observationџџџџџџџџџ
Ђ 
Њ "VВS

PolicyStep*
action 
actionџџџџџџџџџ
stateЂ 
infoЂ б
.__inference_polymorphic_distribution_fn_351129оЂк
вЂЮ
ЦВТ
TimeStep,
	step_type
	step_typeџџџџџџџџџ&
reward
rewardџџџџџџџџџ*
discount
discountџџџџџџџџџ4
observation%"
observationџџџџџџџџџ
Ђ 
Њ "ВВЎ

PolicyStep
actionљѕСЂН
`
FЊC

atol 

locџџџџџџџџџ

rtol 
JЊG

allow_nan_statsp

namejDeterministic_1

validate_argsp 
Ђ
j
parameters
Ђ 
Ђ
jname+tfp.distributions.Deterministic_ACTTypeSpec 
stateЂ 
infoЂ Р
'__inference_signature_wrapper_136696886иЂд
Ђ 
ЬЊШ
.

0/discount 

0/discountџџџџџџџџџ
8
0/observation'$
0/observationџџџџџџџџџ
*
0/reward
0/rewardџџџџџџџџџ
0
0/step_type!
0/step_typeџџџџџџџџџ"/Њ,
*
action 
actionџџџџџџџџџb
'__inference_signature_wrapper_13669689170Ђ-
Ђ 
&Њ#
!

batch_size

batch_size "Њ [
'__inference_signature_wrapper_1366968990Ђ

Ђ 
Њ "Њ

int64
int64 	?
'__inference_signature_wrapper_136696903Ђ

Ђ 
Њ "Њ 