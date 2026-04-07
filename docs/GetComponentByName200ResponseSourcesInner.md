# GetComponentByName200ResponseSourcesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Source name. | [optional] 
**url** | **str** | Source URL. | [optional] 
**updated** | **str** | Timestamp when the source was last updated. | [optional] 

## Example

```python
from jfrog_client.models.get_component_by_name200_response_sources_inner import GetComponentByName200ResponseSourcesInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetComponentByName200ResponseSourcesInner from a JSON string
get_component_by_name200_response_sources_inner_instance = GetComponentByName200ResponseSourcesInner.from_json(json)
# print the JSON string representation of the object
print(GetComponentByName200ResponseSourcesInner.to_json())

# convert the object into a dict
get_component_by_name200_response_sources_inner_dict = get_component_by_name200_response_sources_inner_instance.to_dict()
# create an instance of GetComponentByName200ResponseSourcesInner from a dict
get_component_by_name200_response_sources_inner_from_dict = GetComponentByName200ResponseSourcesInner.from_dict(get_component_by_name200_response_sources_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


