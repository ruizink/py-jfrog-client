# GetFederatedRepositoryStatus200ResponseBinariesTasksInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**in_progress_tasks** | **int** |  | [optional] 
**failing_tasks** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.get_federated_repository_status200_response_binaries_tasks_info import GetFederatedRepositoryStatus200ResponseBinariesTasksInfo

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederatedRepositoryStatus200ResponseBinariesTasksInfo from a JSON string
get_federated_repository_status200_response_binaries_tasks_info_instance = GetFederatedRepositoryStatus200ResponseBinariesTasksInfo.from_json(json)
# print the JSON string representation of the object
print(GetFederatedRepositoryStatus200ResponseBinariesTasksInfo.to_json())

# convert the object into a dict
get_federated_repository_status200_response_binaries_tasks_info_dict = get_federated_repository_status200_response_binaries_tasks_info_instance.to_dict()
# create an instance of GetFederatedRepositoryStatus200ResponseBinariesTasksInfo from a dict
get_federated_repository_status200_response_binaries_tasks_info_from_dict = GetFederatedRepositoryStatus200ResponseBinariesTasksInfo.from_dict(get_federated_repository_status200_response_binaries_tasks_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


