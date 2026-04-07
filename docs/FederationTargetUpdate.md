# FederationTargetUpdate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entities** | **List[str]** | List of entities to federate | [optional] 
**permission_filters** | [**PatternFilter**](PatternFilter.md) |  | [optional] 
**group_filters** | [**PatternFilter**](PatternFilter.md) |  | [optional] 
**active** | **bool** | Whether the federation target is active | [optional] 

## Example

```python
from jfrog_client.models.federation_target_update import FederationTargetUpdate

# TODO update the JSON string below
json = "{}"
# create an instance of FederationTargetUpdate from a JSON string
federation_target_update_instance = FederationTargetUpdate.from_json(json)
# print the JSON string representation of the object
print(FederationTargetUpdate.to_json())

# convert the object into a dict
federation_target_update_dict = federation_target_update_instance.to_dict()
# create an instance of FederationTargetUpdate from a dict
federation_target_update_from_dict = FederationTargetUpdate.from_dict(federation_target_update_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


