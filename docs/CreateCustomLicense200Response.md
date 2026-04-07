# CreateCustomLicense200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**full_name** | **str** |  | [optional] 
**text** | **str** |  | [optional] 
**references** | **List[str]** |  | [optional] 
**aliases** | **List[str]** |  | [optional] 
**category** | **str** |  | [optional] 
**priority** | **int** |  | [optional] 
**default_priority** | **int** |  | [optional] 
**is_custom** | **bool** | Always true for custom licenses. | [optional] 

## Example

```python
from jfrog_client.models.create_custom_license200_response import CreateCustomLicense200Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateCustomLicense200Response from a JSON string
create_custom_license200_response_instance = CreateCustomLicense200Response.from_json(json)
# print the JSON string representation of the object
print(CreateCustomLicense200Response.to_json())

# convert the object into a dict
create_custom_license200_response_dict = create_custom_license200_response_instance.to_dict()
# create an instance of CreateCustomLicense200Response from a dict
create_custom_license200_response_from_dict = CreateCustomLicense200Response.from_dict(create_custom_license200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


