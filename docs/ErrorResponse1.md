# ErrorResponse1

Standard JFrog error envelope

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[ErrorResponseErrorsInner]**](ErrorResponseErrorsInner.md) |  | [optional] 
**error** | **str** | Simple error message (legacy format) | [optional] 

## Example

```python
from jfrog_client.models.error_response1 import ErrorResponse1

# TODO update the JSON string below
json = "{}"
# create an instance of ErrorResponse1 from a JSON string
error_response1_instance = ErrorResponse1.from_json(json)
# print the JSON string representation of the object
print(ErrorResponse1.to_json())

# convert the object into a dict
error_response1_dict = error_response1_instance.to_dict()
# create an instance of ErrorResponse1 from a dict
error_response1_from_dict = ErrorResponse1.from_dict(error_response1_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


