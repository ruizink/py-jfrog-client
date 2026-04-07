# GetIgnoredViolations200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**violations_count** | **int** |  | 
**violations** | [**List[GetIgnoredViolations200ResponseViolationsInner]**](GetIgnoredViolations200ResponseViolationsInner.md) |  | 

## Example

```python
from jfrog_client.models.get_ignored_violations200_response import GetIgnoredViolations200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetIgnoredViolations200Response from a JSON string
get_ignored_violations200_response_instance = GetIgnoredViolations200Response.from_json(json)
# print the JSON string representation of the object
print(GetIgnoredViolations200Response.to_json())

# convert the object into a dict
get_ignored_violations200_response_dict = get_ignored_violations200_response_instance.to_dict()
# create an instance of GetIgnoredViolations200Response from a dict
get_ignored_violations200_response_from_dict = GetIgnoredViolations200Response.from_dict(get_ignored_violations200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


