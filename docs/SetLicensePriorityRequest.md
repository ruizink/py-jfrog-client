# SetLicensePriorityRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **str** |  | 
**priority** | **int** |  | 

## Example

```python
from jfrog_client.models.set_license_priority_request import SetLicensePriorityRequest

# TODO update the JSON string below
json = "{}"
# create an instance of SetLicensePriorityRequest from a JSON string
set_license_priority_request_instance = SetLicensePriorityRequest.from_json(json)
# print the JSON string representation of the object
print(SetLicensePriorityRequest.to_json())

# convert the object into a dict
set_license_priority_request_dict = set_license_priority_request_instance.to_dict()
# create an instance of SetLicensePriorityRequest from a dict
set_license_priority_request_from_dict = SetLicensePriorityRequest.from_dict(set_license_priority_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


