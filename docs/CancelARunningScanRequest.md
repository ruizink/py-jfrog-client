# CancelARunningScanRequest

Identifies the artifact to cancel the scan for.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo** | **str** | Repository name. | 
**path** | **str** | Artifact path in the repository. | 

## Example

```python
from jfrog_client.models.cancel_a_running_scan_request import CancelARunningScanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CancelARunningScanRequest from a JSON string
cancel_a_running_scan_request_instance = CancelARunningScanRequest.from_json(json)
# print the JSON string representation of the object
print(CancelARunningScanRequest.to_json())

# convert the object into a dict
cancel_a_running_scan_request_dict = cancel_a_running_scan_request_instance.to_dict()
# create an instance of CancelARunningScanRequest from a dict
cancel_a_running_scan_request_from_dict = CancelARunningScanRequest.from_dict(cancel_a_running_scan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


