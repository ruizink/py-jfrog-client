# GetComponentByName200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component** | **str** | Component identifier including package type prefix. | [optional] 
**package_type** | **str** | Package type (e.g. rpm, maven, npm). | [optional] 
**name** | **str** | Component name. | [optional] 
**description** | **str** | Component description. | [optional] 
**created** | **str** | Timestamp when the component was created. | [optional] 
**modified** | **str** | Timestamp when the component was last modified. | [optional] 
**sources** | [**List[GetComponentByName200ResponseSourcesInner]**](GetComponentByName200ResponseSourcesInner.md) | List of sources where this component was found. | [optional] 
**versions** | [**List[GetComponentByName200ResponseVersionsInner]**](GetComponentByName200ResponseVersionsInner.md) | List of known versions for this component. | [optional] 

## Example

```python
from jfrog_client.models.get_component_by_name200_response import GetComponentByName200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetComponentByName200Response from a JSON string
get_component_by_name200_response_instance = GetComponentByName200Response.from_json(json)
# print the JSON string representation of the object
print(GetComponentByName200Response.to_json())

# convert the object into a dict
get_component_by_name200_response_dict = get_component_by_name200_response_instance.to_dict()
# create an instance of GetComponentByName200Response from a dict
get_component_by_name200_response_from_dict = GetComponentByName200Response.from_dict(get_component_by_name200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


