# PudProcessStatus


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** | The status of the PUD process | [optional] 
**dry_run** | **bool** | Whether the PUD process is actually deleting binaries | [optional] 
**timing** | [**PudTiming**](PudTiming.md) |  | [optional] 
**progress** | **str** | The number of directories that have been processed thus far | [optional] 
**report** | [**PudReport**](PudReport.md) |  | [optional] 
**last_handled_directory** | [**PudDirectoryInfo**](PudDirectoryInfo.md) |  | [optional] 
**error** | **str** | Error details (only appears when an error occurs) | [optional] 

## Example

```python
from jfrog_client.models.pud_process_status import PudProcessStatus

# TODO update the JSON string below
json = "{}"
# create an instance of PudProcessStatus from a JSON string
pud_process_status_instance = PudProcessStatus.from_json(json)
# print the JSON string representation of the object
print(PudProcessStatus.to_json())

# convert the object into a dict
pud_process_status_dict = pud_process_status_instance.to_dict()
# create an instance of PudProcessStatus from a dict
pud_process_status_from_dict = PudProcessStatus.from_dict(pud_process_status_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


