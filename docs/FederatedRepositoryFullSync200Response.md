# FederatedRepositoryFullSync200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message** | **str** |  | [optional] 
**result_paths** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.federated_repository_full_sync200_response import FederatedRepositoryFullSync200Response

# TODO update the JSON string below
json = "{}"
# create an instance of FederatedRepositoryFullSync200Response from a JSON string
federated_repository_full_sync200_response_instance = FederatedRepositoryFullSync200Response.from_json(json)
# print the JSON string representation of the object
print(FederatedRepositoryFullSync200Response.to_json())

# convert the object into a dict
federated_repository_full_sync200_response_dict = federated_repository_full_sync200_response_instance.to_dict()
# create an instance of FederatedRepositoryFullSync200Response from a dict
federated_repository_full_sync200_response_from_dict = FederatedRepositoryFullSync200Response.from_dict(federated_repository_full_sync200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


