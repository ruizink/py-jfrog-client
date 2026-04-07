# GetTheStatusOfARunningRepositoryScan200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Scan identifier. | [optional] 
**start_time** | **datetime** | Scan start time. | [optional] 
**end_time** | **datetime** | Scan end time. | [optional] 
**author** | **str** | User who initiated the scan. | [optional] 
**status** | **str** | Current scan status (e.g. done, running, canceled). | [optional] 
**total_artifacts** | **int** | Total number of artifacts in the scan. | [optional] 
**scanned_artifacts** | **int** | Number of artifacts successfully scanned. | [optional] 
**failed_artifacts** | **int** | Number of artifacts that failed scanning. | [optional] 
**canceled_artifacts** | **int** | Number of artifacts whose scan was canceled. | [optional] 

## Example

```python
from jfrog_client.models.get_the_status_of_a_running_repository_scan200_response import GetTheStatusOfARunningRepositoryScan200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetTheStatusOfARunningRepositoryScan200Response from a JSON string
get_the_status_of_a_running_repository_scan200_response_instance = GetTheStatusOfARunningRepositoryScan200Response.from_json(json)
# print the JSON string representation of the object
print(GetTheStatusOfARunningRepositoryScan200Response.to_json())

# convert the object into a dict
get_the_status_of_a_running_repository_scan200_response_dict = get_the_status_of_a_running_repository_scan200_response_instance.to_dict()
# create an instance of GetTheStatusOfARunningRepositoryScan200Response from a dict
get_the_status_of_a_running_repository_scan200_response_from_dict = GetTheStatusOfARunningRepositoryScan200Response.from_dict(get_the_status_of_a_running_repository_scan200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


