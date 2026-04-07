# ListIgnoredViolations200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **List[object]** | List of ignored violations. | [optional] 
**total_count** | **int** | Total count of matching ignored violations. | [optional] 

## Example

```python
from jfrog_client.models.list_ignored_violations200_response import ListIgnoredViolations200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ListIgnoredViolations200Response from a JSON string
list_ignored_violations200_response_instance = ListIgnoredViolations200Response.from_json(json)
# print the JSON string representation of the object
print(ListIgnoredViolations200Response.to_json())

# convert the object into a dict
list_ignored_violations200_response_dict = list_ignored_violations200_response_instance.to_dict()
# create an instance of ListIgnoredViolations200Response from a dict
list_ignored_violations200_response_from_dict = ListIgnoredViolations200Response.from_dict(list_ignored_violations200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


