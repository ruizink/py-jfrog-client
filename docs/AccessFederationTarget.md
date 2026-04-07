# AccessFederationTarget

Outbound federation target. Mission Control resolves the target using `id`, and/or `url` / `code` as applicable. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Target JPD ID when known | [optional] 
**code** | **str** | Access service identifier / target code | [optional] 
**url** | **str** | Target base URL | [optional] 
**entities** | [**List[AccessFederationEntityType]**](AccessFederationEntityType.md) | Entity types to sync for this target (optional per-target override) | [optional] 
**permission_filters** | [**AccessFederationPermissionFilters**](AccessFederationPermissionFilters.md) |  | [optional] 

## Example

```python
from jfrog_client.models.access_federation_target import AccessFederationTarget

# TODO update the JSON string below
json = "{}"
# create an instance of AccessFederationTarget from a JSON string
access_federation_target_instance = AccessFederationTarget.from_json(json)
# print the JSON string representation of the object
print(AccessFederationTarget.to_json())

# convert the object into a dict
access_federation_target_dict = access_federation_target_instance.to_dict()
# create an instance of AccessFederationTarget from a dict
access_federation_target_from_dict = AccessFederationTarget.from_dict(access_federation_target_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


