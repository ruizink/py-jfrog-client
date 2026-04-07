# StartPudProcessRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dry_run** | **bool** | If false then unreferenced binaries will be actually removed from the filestore. If true then unreferenced binaries will not be removed from the filestore. This mode may be useful to estimate the number of unreferenced binaries in each directory without actually removing them. | [optional] [default to False]
**start_from_directory** | **str** | If present, the PUD process will continue from the directory identified here. If this parameter is omitted, the PUD process starts to prune from the beginning of the directories list. | [optional] 
**start_from_binary** | **int** | If present, the PUD process continues from this position in the last directory that the previous PUD process stopped at. This parameter can be found in the response of the Get Status API at lastHandledDirectory&gt;binariesProcessed. If omitted, the PUD process starts to prune from the first binary in the directory. | [optional] [default to 0]
**binary_older_than_days** | **int** | If present, unreferenced binaries that are newer than binaryOlderThanDays are ignored by the PUD process. If binaryOlderThanDays &#x3D; 0, the PUD process does not relate to the binary creation date. | [optional] [default to 1]

## Example

```python
from jfrog_client.models.start_pud_process_request import StartPudProcessRequest

# TODO update the JSON string below
json = "{}"
# create an instance of StartPudProcessRequest from a JSON string
start_pud_process_request_instance = StartPudProcessRequest.from_json(json)
# print the JSON string representation of the object
print(StartPudProcessRequest.to_json())

# convert the object into a dict
start_pud_process_request_dict = start_pud_process_request_instance.to_dict()
# create an instance of StartPudProcessRequest from a dict
start_pud_process_request_from_dict = StartPudProcessRequest.from_dict(start_pud_process_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


