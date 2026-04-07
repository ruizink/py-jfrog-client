# CreateOrReplacePermissionTargetRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The name of the permission target | [optional] 
**includes_pattern** | **str** | A regex pattern that defines which repositories to include in this permission. The default is \&quot;**\&quot; (all). | [optional] 
**excludes_pattern** | **str** | A regex pattern that defines which repositories to explicitly exclude from this permission. The default is \&quot;\&quot; (none). | [optional] 
**repositories** | **List[str]** | Defines the local and remote repositories included as resources for this permission. Note - Virtual repositories are not supported. | 
**principals** | [**CreateOrReplacePermissionTargetRequestPrincipals**](CreateOrReplacePermissionTargetRequestPrincipals.md) |  | [optional] 

## Example

```python
from jfrog_client.models.create_or_replace_permission_target_request import CreateOrReplacePermissionTargetRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateOrReplacePermissionTargetRequest from a JSON string
create_or_replace_permission_target_request_instance = CreateOrReplacePermissionTargetRequest.from_json(json)
# print the JSON string representation of the object
print(CreateOrReplacePermissionTargetRequest.to_json())

# convert the object into a dict
create_or_replace_permission_target_request_dict = create_or_replace_permission_target_request_instance.to_dict()
# create an instance of CreateOrReplacePermissionTargetRequest from a dict
create_or_replace_permission_target_request_from_dict = CreateOrReplacePermissionTargetRequest.from_dict(create_or_replace_permission_target_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


