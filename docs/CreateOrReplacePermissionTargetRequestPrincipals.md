# CreateOrReplacePermissionTargetRequestPrincipals


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**users** | **Dict[str, List[str]]** | Permissions are set/returned according to the following conventions m&#x3D;admin; d&#x3D;delete; w&#x3D;deploy; n&#x3D;annotate; r&#x3D;read; mxm&#x3D;managedXrayMeta; x&#x3D;distribute | [optional] 
**groups** | **Dict[str, List[str]]** |  | [optional] 

## Example

```python
from jfrog_client.models.create_or_replace_permission_target_request_principals import CreateOrReplacePermissionTargetRequestPrincipals

# TODO update the JSON string below
json = "{}"
# create an instance of CreateOrReplacePermissionTargetRequestPrincipals from a JSON string
create_or_replace_permission_target_request_principals_instance = CreateOrReplacePermissionTargetRequestPrincipals.from_json(json)
# print the JSON string representation of the object
print(CreateOrReplacePermissionTargetRequestPrincipals.to_json())

# convert the object into a dict
create_or_replace_permission_target_request_principals_dict = create_or_replace_permission_target_request_principals_instance.to_dict()
# create an instance of CreateOrReplacePermissionTargetRequestPrincipals from a dict
create_or_replace_permission_target_request_principals_from_dict = CreateOrReplacePermissionTargetRequestPrincipals.from_dict(create_or_replace_permission_target_request_principals_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


