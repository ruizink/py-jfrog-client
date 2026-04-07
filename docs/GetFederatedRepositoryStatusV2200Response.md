# GetFederatedRepositoryStatusV2200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**local_key** | **str** |  | [optional] 
**binaries_tasks_info** | **object** |  | [optional] 
**mirror_events_status_info** | **List[object]** |  | [optional] 
**federated_artifact_status** | **object** |  | [optional] 

## Example

```python
from jfrog_client.models.get_federated_repository_status_v2200_response import GetFederatedRepositoryStatusV2200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetFederatedRepositoryStatusV2200Response from a JSON string
get_federated_repository_status_v2200_response_instance = GetFederatedRepositoryStatusV2200Response.from_json(json)
# print the JSON string representation of the object
print(GetFederatedRepositoryStatusV2200Response.to_json())

# convert the object into a dict
get_federated_repository_status_v2200_response_dict = get_federated_repository_status_v2200_response_instance.to_dict()
# create an instance of GetFederatedRepositoryStatusV2200Response from a dict
get_federated_repository_status_v2200_response_from_dict = GetFederatedRepositoryStatusV2200Response.from_dict(get_federated_repository_status_v2200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


