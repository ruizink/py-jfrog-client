# ErrorResponse3


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errors** | [**List[DeleteCertificate200Response]**](DeleteCertificate200Response.md) |  | [optional] 

## Example

```python
from jfrog_client.models.error_response3 import ErrorResponse3

# TODO update the JSON string below
json = "{}"
# create an instance of ErrorResponse3 from a JSON string
error_response3_instance = ErrorResponse3.from_json(json)
# print the JSON string representation of the object
print(ErrorResponse3.to_json())

# convert the object into a dict
error_response3_dict = error_response3_instance.to_dict()
# create an instance of ErrorResponse3 from a dict
error_response3_from_dict = ErrorResponse3.from_dict(error_response3_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


