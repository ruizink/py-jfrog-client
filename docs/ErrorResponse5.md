# ErrorResponse5

Standard JFrog error envelope

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[DeleteCertificate200Response]**](DeleteCertificate200Response.md) |  | [optional] 

## Example

```python
from jfrog_client.models.error_response5 import ErrorResponse5

# TODO update the JSON string below
json = "{}"
# create an instance of ErrorResponse5 from a JSON string
error_response5_instance = ErrorResponse5.from_json(json)
# print the JSON string representation of the object
print(ErrorResponse5.to_json())

# convert the object into a dict
error_response5_dict = error_response5_instance.to_dict()
# create an instance of ErrorResponse5 from a dict
error_response5_from_dict = ErrorResponse5.from_dict(error_response5_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


