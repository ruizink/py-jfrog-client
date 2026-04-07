# RestoreIgnoredViolationsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ids** | **List[str]** | Array of violation IDs to restore. | 

## Example

```python
from jfrog_client.models.restore_ignored_violations_request import RestoreIgnoredViolationsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of RestoreIgnoredViolationsRequest from a JSON string
restore_ignored_violations_request_instance = RestoreIgnoredViolationsRequest.from_json(json)
# print the JSON string representation of the object
print(RestoreIgnoredViolationsRequest.to_json())

# convert the object into a dict
restore_ignored_violations_request_dict = restore_ignored_violations_request_instance.to_dict()
# create an instance of RestoreIgnoredViolationsRequest from a dict
restore_ignored_violations_request_from_dict = RestoreIgnoredViolationsRequest.from_dict(restore_ignored_violations_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


