��
��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
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
H
ShardedFilename
basename	
shard

num_shards
filename
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.12.02v2.12.0-rc1-12-g0db597d0d758��
�
ConstConst*
_output_shapes
:*
dtype0	*M
valueDBB	"8                                                 
�
Const_1Const*
_output_shapes
:*
dtype0*~
valueuBsBAktivitas AirBBerkeliling KotaBHutan / FloraBRelaxingBRuang TerbukaBSeni & BudayaBTempat Bersejarah
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
m

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name15337*
value_dtype0	
�
embedding_5/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*'
shared_nameembedding_5/embeddings
�
*embedding_5/embeddings/Read/ReadVariableOpReadVariableOpembedding_5/embeddings*
_output_shapes
:	�*
dtype0
q

candidatesVarHandleOp*
_output_shapes
: *
dtype0*
shape:	\�*
shared_name
candidates
j
candidates/Read/ReadVariableOpReadVariableOp
candidates*
_output_shapes
:	\�*
dtype0
n
identifiersVarHandleOp*
_output_shapes
: *
dtype0*
shape:\*
shared_nameidentifiers
g
identifiers/Read/ReadVariableOpReadVariableOpidentifiers*
_output_shapes
:\*
dtype0
r
serving_default_input_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1
hash_tableConst_2embedding_5/embeddings
candidatesidentifiers*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_64188
�
StatefulPartitionedCall_1StatefulPartitionedCall
hash_tableConst_1Const*
Tin
2	*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
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
__inference__initializer_64345
(
NoOpNoOp^StatefulPartitionedCall_1
�
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
query_model
	identifiers
	_identifiers


candidates

_candidates
query_with_exclusions

signatures*

0
	1

2*

0*
* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
trace_0
trace_1
trace_2
trace_3* 

	capture_1* 
�
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses*
KE
VARIABLE_VALUEidentifiers&identifiers/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUE
candidates%candidates/.ATTRIBUTES/VARIABLE_VALUE*
* 

$serving_default* 
VP
VARIABLE_VALUEembedding_5/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*

	0

1*

0*
* 
* 
* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 
* 
#
%	keras_api
&lookup_table* 
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

embeddings*

0*

0*
* 
�
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*
6
2trace_0
3trace_1
4trace_2
5trace_3* 
6
6trace_0
7trace_1
8trace_2
9trace_3* 

	capture_1* 
* 
R
:_initializer
;_create_resource
<_initialize
=_destroy_resource* 

0*

0*
* 
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

Ctrace_0* 

Dtrace_0* 
* 

0
1*
* 
* 
* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 

	capture_1* 
* 

Etrace_0* 

Ftrace_0* 

Gtrace_0* 
* 
* 
* 
* 
* 
* 
* 
* 
 
H	capture_1
I	capture_2* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding_5/embeddingsConst_3*
Tin	
2*
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
__inference__traced_save_64397
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameidentifiers
candidatesembedding_5/embeddings*
Tin
2*
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
!__inference__traced_restore_64416��
�
,
__inference__destroyer_64350
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�
�
,__inference_sequential_5_layer_call_fn_63963
string_lookup_5_input
unknown
	unknown_0	
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_5_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_63954p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:���������
/
_user_specified_namestring_lookup_5_input:

_output_shapes
: 
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_63976

inputs>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	$
embedding_5_63972:	�
identity��#embedding_5/StatefulPartitionedCall�-string_lookup_5/None_Lookup/LookupTableFindV2�
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_5/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_5/Identity:output:0embedding_5_63972*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_5_layer_call_and_return_conditional_losses_63924|
IdentityIdentity,embedding_5/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp$^embedding_5/StatefulPartitionedCall.^string_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
,__inference_sequential_5_layer_call_fn_64279

inputs
unknown
	unknown_0	
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_63954p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_64303

inputs>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	5
"embedding_5_embedding_lookup_64297:	�
identity��embedding_5/embedding_lookup�-string_lookup_5/None_Lookup/LookupTableFindV2�
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding_5/embedding_lookupResourceGather"embedding_5_embedding_lookup_64297!string_lookup_5/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_5/embedding_lookup/64297*(
_output_shapes
:����������*
dtype0�
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_5/embedding_lookup/64297*(
_output_shapes
:�����������
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
IdentityIdentity0embedding_5/embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^embedding_5/embedding_lookup.^string_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2<
embedding_5/embedding_lookupembedding_5/embedding_lookup2^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
+__inference_embedding_5_layer_call_fn_64323

inputs	
unknown:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_5_layer_call_and_return_conditional_losses_63924p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�

�
+__inference_brute_force_layer_call_fn_64135
input_1
unknown
	unknown_0	
	unknown_1:	�
	unknown_2:	\�
	unknown_3:\
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_64120o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: 
�
�
 __inference__wrapped_model_63907
input_1W
Sbrute_force_sequential_5_string_lookup_5_none_lookup_lookuptablefindv2_table_handleX
Tbrute_force_sequential_5_string_lookup_5_none_lookup_lookuptablefindv2_default_value	N
;brute_force_sequential_5_embedding_5_embedding_lookup_63891:	�=
*brute_force_matmul_readvariableop_resource:	\�)
brute_force_gather_resource:\
identity

identity_1��brute_force/Gather�!brute_force/MatMul/ReadVariableOp�5brute_force/sequential_5/embedding_5/embedding_lookup�Fbrute_force/sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2�
Fbrute_force/sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2Sbrute_force_sequential_5_string_lookup_5_none_lookup_lookuptablefindv2_table_handleinput_1Tbrute_force_sequential_5_string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
1brute_force/sequential_5/string_lookup_5/IdentityIdentityObrute_force/sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
5brute_force/sequential_5/embedding_5/embedding_lookupResourceGather;brute_force_sequential_5_embedding_5_embedding_lookup_63891:brute_force/sequential_5/string_lookup_5/Identity:output:0*
Tindices0	*N
_classD
B@loc:@brute_force/sequential_5/embedding_5/embedding_lookup/63891*(
_output_shapes
:����������*
dtype0�
>brute_force/sequential_5/embedding_5/embedding_lookup/IdentityIdentity>brute_force/sequential_5/embedding_5/embedding_lookup:output:0*
T0*N
_classD
B@loc:@brute_force/sequential_5/embedding_5/embedding_lookup/63891*(
_output_shapes
:�����������
@brute_force/sequential_5/embedding_5/embedding_lookup/Identity_1IdentityGbrute_force/sequential_5/embedding_5/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
!brute_force/MatMul/ReadVariableOpReadVariableOp*brute_force_matmul_readvariableop_resource*
_output_shapes
:	\�*
dtype0�
brute_force/MatMulMatMulIbrute_force/sequential_5/embedding_5/embedding_lookup/Identity_1:output:0)brute_force/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\*
transpose_b(V
brute_force/TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :�
brute_force/TopKV2TopKV2brute_force/MatMul:product:0brute_force/TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������:����������
brute_force/GatherResourceGatherbrute_force_gather_resourcebrute_force/TopKV2:indices:0*
Tindices0*'
_output_shapes
:���������*
dtype0o
brute_force/IdentityIdentitybrute_force/Gather:output:0*
T0*'
_output_shapes
:���������j
IdentityIdentitybrute_force/TopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������n

Identity_1Identitybrute_force/Identity:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^brute_force/Gather"^brute_force/MatMul/ReadVariableOp6^brute_force/sequential_5/embedding_5/embedding_lookupG^brute_force/sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2(
brute_force/Gatherbrute_force/Gather2F
!brute_force/MatMul/ReadVariableOp!brute_force/MatMul/ReadVariableOp2n
5brute_force/sequential_5/embedding_5/embedding_lookup5brute_force/sequential_5/embedding_5/embedding_lookup2�
Fbrute_force/sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2Fbrute_force/sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: 
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_63929
string_lookup_5_input>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	$
embedding_5_63925:	�
identity��#embedding_5/StatefulPartitionedCall�-string_lookup_5/None_Lookup/LookupTableFindV2�
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handlestring_lookup_5_input;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_5/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_5/Identity:output:0embedding_5_63925*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_5_layer_call_and_return_conditional_losses_63924|
IdentityIdentity,embedding_5/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp$^embedding_5/StatefulPartitionedCall.^string_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:���������
/
_user_specified_namestring_lookup_5_input:

_output_shapes
: 
�	
�
#__inference_signature_wrapper_64188
input_1
unknown
	unknown_0	
	unknown_1:	�
	unknown_2:	\�
	unknown_3:\
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_63907o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: 
�
�
!__inference__traced_restore_64416
file_prefix*
assignvariableop_identifiers:\0
assignvariableop_1_candidates:	\�<
)assignvariableop_2_embedding_5_embeddings:	�

identity_4��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHx
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*$
_output_shapes
::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_identifiersIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_candidatesIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp)assignvariableop_2_embedding_5_embeddingsIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_3Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_4IdentityIdentity_3:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_4Identity_4:output:0*
_input_shapes

: : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
:
__inference__creator_64337
identity��
hash_tablem

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name15337*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
�
�
__inference__initializer_643458
4key_value_init15336_lookuptableimportv2_table_handle0
,key_value_init15336_lookuptableimportv2_keys2
.key_value_init15336_lookuptableimportv2_values	
identity��'key_value_init15336/LookupTableImportV2�
'key_value_init15336/LookupTableImportV2LookupTableImportV24key_value_init15336_lookuptableimportv2_table_handle,key_value_init15336_lookuptableimportv2_keys.key_value_init15336_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: p
NoOpNoOp(^key_value_init15336/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2R
'key_value_init15336/LookupTableImportV2'key_value_init15336/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
�
�
F__inference_brute_force_layer_call_and_return_conditional_losses_64245
queriesK
Gsequential_5_string_lookup_5_none_lookup_lookuptablefindv2_table_handleL
Hsequential_5_string_lookup_5_none_lookup_lookuptablefindv2_default_value	B
/sequential_5_embedding_5_embedding_lookup_64229:	�1
matmul_readvariableop_resource:	\�
gather_resource:\

identity_1

identity_2��Gather�MatMul/ReadVariableOp�)sequential_5/embedding_5/embedding_lookup�:sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2�
:sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_5_string_lookup_5_none_lookup_lookuptablefindv2_table_handlequeriesHsequential_5_string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
%sequential_5/string_lookup_5/IdentityIdentityCsequential_5/string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)sequential_5/embedding_5/embedding_lookupResourceGather/sequential_5_embedding_5_embedding_lookup_64229.sequential_5/string_lookup_5/Identity:output:0*
Tindices0	*B
_class8
64loc:@sequential_5/embedding_5/embedding_lookup/64229*(
_output_shapes
:����������*
dtype0�
2sequential_5/embedding_5/embedding_lookup/IdentityIdentity2sequential_5/embedding_5/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_5/embedding_5/embedding_lookup/64229*(
_output_shapes
:�����������
4sequential_5/embedding_5/embedding_lookup/Identity_1Identity;sequential_5/embedding_5/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	\�*
dtype0�
MatMulMatMul=sequential_5/embedding_5/embedding_lookup/Identity_1:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������:����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:���������`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Gather^MatMul/ReadVariableOp*^sequential_5/embedding_5/embedding_lookup;^sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2V
)sequential_5/embedding_5/embedding_lookup)sequential_5/embedding_5/embedding_lookup2x
:sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2:sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:���������
!
_user_specified_name	queries:

_output_shapes
: 
�%
�
__inference__traced_save_64397
file_prefix0
"read_disablecopyonread_identifiers:\6
#read_1_disablecopyonread_candidates:	\�B
/read_2_disablecopyonread_embedding_5_embeddings:	�
savev2_const_3

identity_7��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOpw
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
_temp/part�
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
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: t
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_identifiers"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_identifiers^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:\*
dtype0e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:\]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:\w
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_candidates"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_candidates^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	\�*
dtype0n

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	\�d

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	\��
Read_2/DisableCopyOnReadDisableCopyOnRead/read_2_disablecopyonread_embedding_5_embeddings"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp/read_2_disablecopyonread_embedding_5_embeddings^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&identifiers/.ATTRIBUTES/VARIABLE_VALUEB%candidates/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHu
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0savev2_const_3"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h

Identity_6Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: S

Identity_7IdentityIdentity_6:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_7Identity_7:output:0*
_input_shapes

: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: 
�

�
+__inference_brute_force_layer_call_fn_64222
queries
unknown
	unknown_0	
	unknown_1:	�
	unknown_2:	\�
	unknown_3:\
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueriesunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_64120o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	queries:

_output_shapes
: 
�
�
,__inference_sequential_5_layer_call_fn_63985
string_lookup_5_input
unknown
	unknown_0	
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallstring_lookup_5_inputunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_63976p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
#
_output_shapes
:���������
/
_user_specified_namestring_lookup_5_input:

_output_shapes
: 
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_63954

inputs>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	$
embedding_5_63950:	�
identity��#embedding_5/StatefulPartitionedCall�-string_lookup_5/None_Lookup/LookupTableFindV2�
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_5/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_5/Identity:output:0embedding_5_63950*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_5_layer_call_and_return_conditional_losses_63924|
IdentityIdentity,embedding_5/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp$^embedding_5/StatefulPartitionedCall.^string_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_64316

inputs>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	5
"embedding_5_embedding_lookup_64310:	�
identity��embedding_5/embedding_lookup�-string_lookup_5/None_Lookup/LookupTableFindV2�
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handleinputs;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
embedding_5/embedding_lookupResourceGather"embedding_5_embedding_lookup_64310!string_lookup_5/Identity:output:0*
Tindices0	*5
_class+
)'loc:@embedding_5/embedding_lookup/64310*(
_output_shapes
:����������*
dtype0�
%embedding_5/embedding_lookup/IdentityIdentity%embedding_5/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_5/embedding_lookup/64310*(
_output_shapes
:�����������
'embedding_5/embedding_lookup/Identity_1Identity.embedding_5/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
IdentityIdentity0embedding_5/embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^embedding_5/embedding_lookup.^string_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2<
embedding_5/embedding_lookupembedding_5/embedding_lookup2^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�

�
+__inference_brute_force_layer_call_fn_64205
queries
unknown
	unknown_0	
	unknown_1:	�
	unknown_2:	\�
	unknown_3:\
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueriesunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_64082o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	queries:

_output_shapes
: 
�
�
F__inference_brute_force_layer_call_and_return_conditional_losses_64268
queriesK
Gsequential_5_string_lookup_5_none_lookup_lookuptablefindv2_table_handleL
Hsequential_5_string_lookup_5_none_lookup_lookuptablefindv2_default_value	B
/sequential_5_embedding_5_embedding_lookup_64252:	�1
matmul_readvariableop_resource:	\�
gather_resource:\

identity_1

identity_2��Gather�MatMul/ReadVariableOp�)sequential_5/embedding_5/embedding_lookup�:sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2�
:sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2Gsequential_5_string_lookup_5_none_lookup_lookuptablefindv2_table_handlequeriesHsequential_5_string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
%sequential_5/string_lookup_5/IdentityIdentityCsequential_5/string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
)sequential_5/embedding_5/embedding_lookupResourceGather/sequential_5_embedding_5_embedding_lookup_64252.sequential_5/string_lookup_5/Identity:output:0*
Tindices0	*B
_class8
64loc:@sequential_5/embedding_5/embedding_lookup/64252*(
_output_shapes
:����������*
dtype0�
2sequential_5/embedding_5/embedding_lookup/IdentityIdentity2sequential_5/embedding_5/embedding_lookup:output:0*
T0*B
_class8
64loc:@sequential_5/embedding_5/embedding_lookup/64252*(
_output_shapes
:�����������
4sequential_5/embedding_5/embedding_lookup/Identity_1Identity;sequential_5/embedding_5/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	\�*
dtype0�
MatMulMatMul=sequential_5/embedding_5/embedding_lookup/Identity_1:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������:����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:���������`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Gather^MatMul/ReadVariableOp*^sequential_5/embedding_5/embedding_lookup;^sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2V
)sequential_5/embedding_5/embedding_lookup)sequential_5/embedding_5/embedding_lookup2x
:sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2:sequential_5/string_lookup_5/None_Lookup/LookupTableFindV2:L H
#
_output_shapes
:���������
!
_user_specified_name	queries:

_output_shapes
: 
�
�
F__inference_brute_force_layer_call_and_return_conditional_losses_64037
input_1
sequential_5_64019
sequential_5_64021	%
sequential_5_64023:	�1
matmul_readvariableop_resource:	\�
gather_resource:\

identity_1

identity_2��Gather�MatMul/ReadVariableOp�$sequential_5/StatefulPartitionedCall�
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_5_64019sequential_5_64021sequential_5_64023*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_63954u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	\�*
dtype0�
MatMulMatMul-sequential_5/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������:����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:���������`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Gather^MatMul/ReadVariableOp%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: 
�
�
F__inference_embedding_5_layer_call_and_return_conditional_losses_63924

inputs	)
embedding_lookup_63918:	�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_63918inputs*
Tindices0	*)
_class
loc:@embedding_lookup/63918*(
_output_shapes
:����������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/63918*(
_output_shapes
:����������~
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������t
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:����������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
G__inference_sequential_5_layer_call_and_return_conditional_losses_63940
string_lookup_5_input>
:string_lookup_5_none_lookup_lookuptablefindv2_table_handle?
;string_lookup_5_none_lookup_lookuptablefindv2_default_value	$
embedding_5_63936:	�
identity��#embedding_5/StatefulPartitionedCall�-string_lookup_5/None_Lookup/LookupTableFindV2�
-string_lookup_5/None_Lookup/LookupTableFindV2LookupTableFindV2:string_lookup_5_none_lookup_lookuptablefindv2_table_handlestring_lookup_5_input;string_lookup_5_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:����������
string_lookup_5/IdentityIdentity6string_lookup_5/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:����������
#embedding_5/StatefulPartitionedCallStatefulPartitionedCall!string_lookup_5/Identity:output:0embedding_5_63936*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_embedding_5_layer_call_and_return_conditional_losses_63924|
IdentityIdentity,embedding_5/StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp$^embedding_5/StatefulPartitionedCall.^string_lookup_5/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 2J
#embedding_5/StatefulPartitionedCall#embedding_5/StatefulPartitionedCall2^
-string_lookup_5/None_Lookup/LookupTableFindV2-string_lookup_5/None_Lookup/LookupTableFindV2:Z V
#
_output_shapes
:���������
/
_user_specified_namestring_lookup_5_input:

_output_shapes
: 
�
�
F__inference_embedding_5_layer_call_and_return_conditional_losses_64332

inputs	)
embedding_lookup_64326:	�
identity��embedding_lookup�
embedding_lookupResourceGatherembedding_lookup_64326inputs*
Tindices0	*)
_class
loc:@embedding_lookup/64326*(
_output_shapes
:����������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/64326*(
_output_shapes
:����������~
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������t
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:����������Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*$
_input_shapes
:���������: 2$
embedding_lookupembedding_lookup:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_brute_force_layer_call_and_return_conditional_losses_64058
input_1
sequential_5_64040
sequential_5_64042	%
sequential_5_64044:	�1
matmul_readvariableop_resource:	\�
gather_resource:\

identity_1

identity_2��Gather�MatMul/ReadVariableOp�$sequential_5/StatefulPartitionedCall�
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallinput_1sequential_5_64040sequential_5_64042sequential_5_64044*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_63976u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	\�*
dtype0�
MatMulMatMul-sequential_5/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������:����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:���������`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Gather^MatMul/ReadVariableOp%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: 
�
�
F__inference_brute_force_layer_call_and_return_conditional_losses_64082
queries
sequential_5_64064
sequential_5_64066	%
sequential_5_64068:	�1
matmul_readvariableop_resource:	\�
gather_resource:\

identity_1

identity_2��Gather�MatMul/ReadVariableOp�$sequential_5/StatefulPartitionedCall�
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallqueriessequential_5_64064sequential_5_64066sequential_5_64068*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_63954u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	\�*
dtype0�
MatMulMatMul-sequential_5/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������:����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:���������`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Gather^MatMul/ReadVariableOp%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	queries:

_output_shapes
: 
�
�
F__inference_brute_force_layer_call_and_return_conditional_losses_64120
queries
sequential_5_64102
sequential_5_64104	%
sequential_5_64106:	�1
matmul_readvariableop_resource:	\�
gather_resource:\

identity_1

identity_2��Gather�MatMul/ReadVariableOp�$sequential_5/StatefulPartitionedCall�
$sequential_5/StatefulPartitionedCallStatefulPartitionedCallqueriessequential_5_64102sequential_5_64104sequential_5_64106*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_63976u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	\�*
dtype0�
MatMulMatMul-sequential_5/StatefulPartitionedCall:output:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������\*
transpose_b(J
TopKV2/kConst*
_output_shapes
: *
dtype0*
value	B :z
TopKV2TopKV2MatMul:product:0TopKV2/k:output:0*
T0*:
_output_shapes(
&:���������:����������
GatherResourceGathergather_resourceTopKV2:indices:0*
Tindices0*'
_output_shapes
:���������*
dtype0W
IdentityIdentityGather:output:0*
T0*'
_output_shapes
:���������`

Identity_1IdentityTopKV2:values:0^NoOp*
T0*'
_output_shapes
:���������b

Identity_2IdentityIdentity:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^Gather^MatMul/ReadVariableOp%^sequential_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 2
GatherGather2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2L
$sequential_5/StatefulPartitionedCall$sequential_5/StatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	queries:

_output_shapes
: 
�
�
,__inference_sequential_5_layer_call_fn_64290

inputs
unknown
	unknown_0	
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2	*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_5_layer_call_and_return_conditional_losses_63976p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:���������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:���������
 
_user_specified_nameinputs:

_output_shapes
: 
�

�
+__inference_brute_force_layer_call_fn_64097
input_1
unknown
	unknown_0	
	unknown_1:	�
	unknown_2:	\�
	unknown_3:\
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2	*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_brute_force_layer_call_and_return_conditional_losses_64082o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:���������: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:L H
#
_output_shapes
:���������
!
_user_specified_name	input_1:

_output_shapes
: "�
L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
7
input_1,
serving_default_input_1:0���������<
output_10
StatefulPartitionedCall:0���������<
output_20
StatefulPartitionedCall:1���������tensorflow/serving/predict:�
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
query_model
	identifiers
	_identifiers


candidates

_candidates
query_with_exclusions

signatures"
_tf_keras_model
5
0
	1

2"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_1
trace_2
trace_32�
+__inference_brute_force_layer_call_fn_64097
+__inference_brute_force_layer_call_fn_64135
+__inference_brute_force_layer_call_fn_64205
+__inference_brute_force_layer_call_fn_64222�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 ztrace_0ztrace_1ztrace_2ztrace_3
�
trace_0
trace_1
trace_2
trace_32�
F__inference_brute_force_layer_call_and_return_conditional_losses_64037
F__inference_brute_force_layer_call_and_return_conditional_losses_64058
F__inference_brute_force_layer_call_and_return_conditional_losses_64245
F__inference_brute_force_layer_call_and_return_conditional_losses_64268�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 ztrace_0ztrace_1ztrace_2ztrace_3
�
	capture_1B�
 __inference__wrapped_model_63907input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1
�
layer-0
layer_with_weights-0
layer-1
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_sequential
:\2identifiers
:	\�2
candidates
�2��
���
FullArgSpec)
args!�
	jqueries
j
exclusions
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
$serving_default"
signature_map
):'	�2embedding_5/embeddings
.
	0

1"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
	capture_1B�
+__inference_brute_force_layer_call_fn_64097input_1"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z	capture_1
�
	capture_1B�
+__inference_brute_force_layer_call_fn_64135input_1"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z	capture_1
�
	capture_1B�
+__inference_brute_force_layer_call_fn_64205queries"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z	capture_1
�
	capture_1B�
+__inference_brute_force_layer_call_fn_64222queries"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z	capture_1
�
	capture_1B�
F__inference_brute_force_layer_call_and_return_conditional_losses_64037input_1"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z	capture_1
�
	capture_1B�
F__inference_brute_force_layer_call_and_return_conditional_losses_64058input_1"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z	capture_1
�
	capture_1B�
F__inference_brute_force_layer_call_and_return_conditional_losses_64245queries"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z	capture_1
�
	capture_1B�
F__inference_brute_force_layer_call_and_return_conditional_losses_64268queries"�
���
FullArgSpec
args�
	jqueries
jk
varargs
 
varkw
 
defaults�

 

kwonlyargs�

jtraining%
kwonlydefaults�

trainingp 
annotations� *
 z	capture_1
!J	
Const_2jtf.TrackableConstant
:
%	keras_api
&lookup_table"
_tf_keras_layer
�
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
2trace_0
3trace_1
4trace_2
5trace_32�
,__inference_sequential_5_layer_call_fn_63963
,__inference_sequential_5_layer_call_fn_63985
,__inference_sequential_5_layer_call_fn_64279
,__inference_sequential_5_layer_call_fn_64290�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z2trace_0z3trace_1z4trace_2z5trace_3
�
6trace_0
7trace_1
8trace_2
9trace_32�
G__inference_sequential_5_layer_call_and_return_conditional_losses_63929
G__inference_sequential_5_layer_call_and_return_conditional_losses_63940
G__inference_sequential_5_layer_call_and_return_conditional_losses_64303
G__inference_sequential_5_layer_call_and_return_conditional_losses_64316�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z6trace_0z7trace_1z8trace_2z9trace_3
�
	capture_1B�
#__inference_signature_wrapper_64188input_1"�
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
 z	capture_1
"
_generic_user_object
f
:_initializer
;_create_resource
<_initialize
=_destroy_resourceR jtf.StaticHashTable
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
�
Ctrace_02�
+__inference_embedding_5_layer_call_fn_64323�
���
FullArgSpec
args�

jinputs
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
 zCtrace_0
�
Dtrace_02�
F__inference_embedding_5_layer_call_and_return_conditional_losses_64332�
���
FullArgSpec
args�

jinputs
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
 zDtrace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
	capture_1B�
,__inference_sequential_5_layer_call_fn_63963string_lookup_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1
�
	capture_1B�
,__inference_sequential_5_layer_call_fn_63985string_lookup_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1
�
	capture_1B�
,__inference_sequential_5_layer_call_fn_64279inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1
�
	capture_1B�
,__inference_sequential_5_layer_call_fn_64290inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1
�
	capture_1B�
G__inference_sequential_5_layer_call_and_return_conditional_losses_63929string_lookup_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1
�
	capture_1B�
G__inference_sequential_5_layer_call_and_return_conditional_losses_63940string_lookup_5_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1
�
	capture_1B�
G__inference_sequential_5_layer_call_and_return_conditional_losses_64303inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1
�
	capture_1B�
G__inference_sequential_5_layer_call_and_return_conditional_losses_64316inputs"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z	capture_1
"
_generic_user_object
�
Etrace_02�
__inference__creator_64337�
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
annotations� *� zEtrace_0
�
Ftrace_02�
__inference__initializer_64345�
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
annotations� *� zFtrace_0
�
Gtrace_02�
__inference__destroyer_64350�
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
annotations� *� zGtrace_0
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
�B�
+__inference_embedding_5_layer_call_fn_64323inputs"�
���
FullArgSpec
args�

jinputs
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
F__inference_embedding_5_layer_call_and_return_conditional_losses_64332inputs"�
���
FullArgSpec
args�

jinputs
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
__inference__creator_64337"�
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
�
H	capture_1
I	capture_2B�
__inference__initializer_64345"�
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
annotations� *� zH	capture_1zI	capture_2
�B�
__inference__destroyer_64350"�
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
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant?
__inference__creator_64337!�

� 
� "�
unknown A
__inference__destroyer_64350!�

� 
� "�
unknown H
__inference__initializer_64345&&HI�

� 
� "�
unknown �
 __inference__wrapped_model_63907�&
	,�)
"�
�
input_1���������
� "c�`
.
output_1"�
output_1���������
.
output_2"�
output_2����������
F__inference_brute_force_layer_call_and_return_conditional_losses_64037�&
	@�=
&�#
�
input_1���������

 
�

trainingp"Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
F__inference_brute_force_layer_call_and_return_conditional_losses_64058�&
	@�=
&�#
�
input_1���������

 
�

trainingp "Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
F__inference_brute_force_layer_call_and_return_conditional_losses_64245�&
	@�=
&�#
�
queries���������

 
�

trainingp"Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
F__inference_brute_force_layer_call_and_return_conditional_losses_64268�&
	@�=
&�#
�
queries���������

 
�

trainingp "Y�V
O�L
$�!

tensor_0_0���������
$�!

tensor_0_1���������
� �
+__inference_brute_force_layer_call_fn_64097�&
	@�=
&�#
�
input_1���������

 
�

trainingp"K�H
"�
tensor_0���������
"�
tensor_1����������
+__inference_brute_force_layer_call_fn_64135�&
	@�=
&�#
�
input_1���������

 
�

trainingp "K�H
"�
tensor_0���������
"�
tensor_1����������
+__inference_brute_force_layer_call_fn_64205�&
	@�=
&�#
�
queries���������

 
�

trainingp"K�H
"�
tensor_0���������
"�
tensor_1����������
+__inference_brute_force_layer_call_fn_64222�&
	@�=
&�#
�
queries���������

 
�

trainingp "K�H
"�
tensor_0���������
"�
tensor_1����������
F__inference_embedding_5_layer_call_and_return_conditional_losses_64332_+�(
!�
�
inputs���������	
� "-�*
#� 
tensor_0����������
� �
+__inference_embedding_5_layer_call_fn_64323T+�(
!�
�
inputs���������	
� ""�
unknown�����������
G__inference_sequential_5_layer_call_and_return_conditional_losses_63929x&B�?
8�5
+�(
string_lookup_5_input���������
p

 
� "-�*
#� 
tensor_0����������
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_63940x&B�?
8�5
+�(
string_lookup_5_input���������
p 

 
� "-�*
#� 
tensor_0����������
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_64303i&3�0
)�&
�
inputs���������
p

 
� "-�*
#� 
tensor_0����������
� �
G__inference_sequential_5_layer_call_and_return_conditional_losses_64316i&3�0
)�&
�
inputs���������
p 

 
� "-�*
#� 
tensor_0����������
� �
,__inference_sequential_5_layer_call_fn_63963m&B�?
8�5
+�(
string_lookup_5_input���������
p

 
� ""�
unknown�����������
,__inference_sequential_5_layer_call_fn_63985m&B�?
8�5
+�(
string_lookup_5_input���������
p 

 
� ""�
unknown�����������
,__inference_sequential_5_layer_call_fn_64279^&3�0
)�&
�
inputs���������
p

 
� ""�
unknown�����������
,__inference_sequential_5_layer_call_fn_64290^&3�0
)�&
�
inputs���������
p 

 
� ""�
unknown�����������
#__inference_signature_wrapper_64188�&
	7�4
� 
-�*
(
input_1�
input_1���������"c�`
.
output_1"�
output_1���������
.
output_2"�
output_2���������