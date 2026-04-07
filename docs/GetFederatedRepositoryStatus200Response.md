# GetFederatedRepositoryStatus200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**local_key** | **str** |  | [optional] 
**binaries_tasks_info** | [**GetFederatedRepositoryStatus200ResponseBinariesTasksInfo**](GetFederatedRepositoryStatus200ResponseBinariesTasksInfo.md) |  | [optional] 
**mirror_events_status_info** | **List[object]** |  | [optional] 
**federated_artifact_status** | **object** |  | [optional] 

## Example

```python
from jfrog_client.models.get_federated_repository_status200_response import GetFederatedRepositoryStatus200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederatedRepositoryStatus200Response from a JSON string
get_federated_repository_status200_response_instance = GetFederatedRepositoryStatus200Response.from_json(json)
# print the JSON string representation of the object
print(GetFederatedRepositoryStatus200Response.to_json())

# convert the object into a dict
get_federated_repository_status200_response_dict = get_federated_repository_status200_response_instance.to_dict()
# create an instance of GetFederatedRepositoryStatus200Response from a dict
get_federated_repository_status200_response_from_dict = GetFederatedRepositoryStatus200Response.from_dict(get_federated_repository_status200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


