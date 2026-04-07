# AcquireLicenseResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**license_keys** | **List[str]** | List of acquired license keys | [optional] 

## Example

```python
from jfrog_client.models.acquire_license_response import AcquireLicenseResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AcquireLicenseResponse from a JSON string
acquire_license_response_instance = AcquireLicenseResponse.from_json(json)
# print the JSON string representation of the object
print(AcquireLicenseResponse.to_json())

# convert the object into a dict
acquire_license_response_dict = acquire_license_response_instance.to_dict()
# create an instance of AcquireLicenseResponse from a dict
acquire_license_response_from_dict = AcquireLicenseResponse.from_dict(acquire_license_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


