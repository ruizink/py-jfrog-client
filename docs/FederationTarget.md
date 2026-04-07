# FederationTarget


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Federation target name | [optional] 
**url** | **str** | Federation target URL | [optional] 
**entities** | **List[str]** | List of entities to federate | [optional] 
**permission_filters** | [**PatternFilter**](PatternFilter.md) |  | [optional] 
**group_filters** | [**PatternFilter**](PatternFilter.md) |  | [optional] 
**active** | **bool** | Whether the federation target is active | [optional] 

## Example

```python
from jfrog_client.models.federation_target import FederationTarget

# TODO update the JSON string below
json = "{}"
# create an instance of FederationTarget from a JSON string
federation_target_instance = FederationTarget.from_json(json)
# print the JSON string representation of the object
print(FederationTarget.to_json())

# convert the object into a dict
federation_target_dict = federation_target_instance.to_dict()
# create an instance of FederationTarget from a dict
federation_target_from_dict = FederationTarget.from_dict(federation_target_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


