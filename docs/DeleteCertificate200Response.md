# DeleteCertificate200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **int** |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.delete_certificate200_response import DeleteCertificate200Response

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteCertificate200Response from a JSON string
delete_certificate200_response_instance = DeleteCertificate200Response.from_json(json)
# print the JSON string representation of the object
print(DeleteCertificate200Response.to_json())

# convert the object into a dict
delete_certificate200_response_dict = delete_certificate200_response_instance.to_dict()
# create an instance of DeleteCertificate200Response from a dict
delete_certificate200_response_from_dict = DeleteCertificate200Response.from_dict(delete_certificate200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


