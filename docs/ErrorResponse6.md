# ErrorResponse6


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[ErrorDetails]**](ErrorDetails.md) |  | [optional] 

## Example

```python
from jfrog_client.models.error_response6 import ErrorResponse6

# TODO update the JSON string below
json = "{}"
# create an instance of ErrorResponse6 from a JSON string
error_response6_instance = ErrorResponse6.from_json(json)
# print the JSON string representation of the object
print(ErrorResponse6.to_json())

# convert the object into a dict
error_response6_dict = error_response6_instance.to_dict()
# create an instance of ErrorResponse6 from a dict
error_response6_from_dict = ErrorResponse6.from_dict(error_response6_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


