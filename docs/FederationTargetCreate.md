# FederationTargetCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Federation target name | 
**url** | **str** | Federation target URL | 
**entities** | **List[str]** | List of entities to federate | [optional] [default to ["users","groups","permissions","tokens"]]
**permission_filters** | [**PatternFilter**](PatternFilter.md) |  | [optional] 
**group_filters** | [**PatternFilter**](PatternFilter.md) |  | [optional] 
**active** | **bool** | Whether the federation target is active | [optional] [default to True]
**force_override** | **bool** | Force override existing federation target | [optional] [default to False]

## Example

```python
from jfrog_client.models.federation_target_create import FederationTargetCreate

# TODO update the JSON string below
json = "{}"
# create an instance of FederationTargetCreate from a JSON string
federation_target_create_instance = FederationTargetCreate.from_json(json)
# print the JSON string representation of the object
print(FederationTargetCreate.to_json())

# convert the object into a dict
federation_target_create_dict = federation_target_create_instance.to_dict()
# create an instance of FederationTargetCreate from a dict
federation_target_create_from_dict = FederationTargetCreate.from_dict(federation_target_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


