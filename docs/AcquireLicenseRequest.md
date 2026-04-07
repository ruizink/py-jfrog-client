# AcquireLicenseRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name to identify the acquired license | 
**license_count** | **int** | Number of licenses to acquire from the bucket | 

## Example

```python
from jfrog_client.models.acquire_license_request import AcquireLicenseRequest

# TODO update the JSON string below
json = "{}"
# create an instance of AcquireLicenseRequest from a JSON string
acquire_license_request_instance = AcquireLicenseRequest.from_json(json)
# print the JSON string representation of the object
print(AcquireLicenseRequest.to_json())

# convert the object into a dict
acquire_license_request_dict = acquire_license_request_instance.to_dict()
# create an instance of AcquireLicenseRequest from a dict
acquire_license_request_from_dict = AcquireLicenseRequest.from_dict(acquire_license_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


