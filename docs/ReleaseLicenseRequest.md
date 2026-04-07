# ReleaseLicenseRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The JPD id or the free text label previously used by an \&quot;acquire\&quot; call | 

## Example

```python
from jfrog_client.models.release_license_request import ReleaseLicenseRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ReleaseLicenseRequest from a JSON string
release_license_request_instance = ReleaseLicenseRequest.from_json(json)
# print the JSON string representation of the object
print(ReleaseLicenseRequest.to_json())

# convert the object into a dict
release_license_request_dict = release_license_request_instance.to_dict()
# create an instance of ReleaseLicenseRequest from a dict
release_license_request_from_dict = ReleaseLicenseRequest.from_dict(release_license_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


