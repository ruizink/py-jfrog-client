# GetPuppetModules200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **int** |  | [optional] 
**limit** | **int** |  | [optional] 
**offset** | **int** |  | [optional] 
**current** | **str** |  | [optional] 
**next** | **str** |  | [optional] 
**previous** | **str** |  | [optional] 
**results** | **List[object]** |  | [optional] 

## Example

```python
from jfrog_client.models.get_puppet_modules200_response import GetPuppetModules200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetPuppetModules200Response from a JSON string
get_puppet_modules200_response_instance = GetPuppetModules200Response.from_json(json)
# print the JSON string representation of the object
print(GetPuppetModules200Response.to_json())

# convert the object into a dict
get_puppet_modules200_response_dict = get_puppet_modules200_response_instance.to_dict()
# create an instance of GetPuppetModules200Response from a dict
get_puppet_modules200_response_from_dict = GetPuppetModules200Response.from_dict(get_puppet_modules200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


