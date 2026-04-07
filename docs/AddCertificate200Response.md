# AddCertificate200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **int** |  | [optional] 
**message** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.add_certificate200_response import AddCertificate200Response

# TODO update the JSON string below
json = "{}"
# create an instance of AddCertificate200Response from a JSON string
add_certificate200_response_instance = AddCertificate200Response.from_json(json)
# print the JSON string representation of the object
print(AddCertificate200Response.to_json())

# convert the object into a dict
add_certificate200_response_dict = add_certificate200_response_instance.to_dict()
# create an instance of AddCertificate200Response from a dict
add_certificate200_response_from_dict = AddCertificate200Response.from_dict(add_certificate200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


