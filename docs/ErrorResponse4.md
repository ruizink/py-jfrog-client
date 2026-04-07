# ErrorResponse4

Standard JFrog error envelope

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[DeleteCertificate200Response]**](DeleteCertificate200Response.md) |  | [optional] 

## Example

```python
from jfrog_client.models.error_response4 import ErrorResponse4

# TODO update the JSON string below
json = "{}"
# create an instance of ErrorResponse4 from a JSON string
error_response4_instance = ErrorResponse4.from_json(json)
# print the JSON string representation of the object
print(ErrorResponse4.to_json())

# convert the object into a dict
error_response4_dict = error_response4_instance.to_dict()
# create an instance of ErrorResponse4 from a dict
error_response4_from_dict = ErrorResponse4.from_dict(error_response4_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


