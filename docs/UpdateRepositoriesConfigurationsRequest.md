# UpdateRepositoriesConfigurationsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo_name** | **str** | Name of the repository to configure. | 
**repo_config** | [**UpdateRepositoriesConfigurationsRequestRepoConfig**](UpdateRepositoriesConfigurationsRequestRepoConfig.md) |  | [optional] 
**repo_paths_config** | [**UpdateRepositoriesConfigurationsRequestRepoPathsConfig**](UpdateRepositoriesConfigurationsRequestRepoPathsConfig.md) |  | [optional] 

## Example

```python
from jfrog_client.models.update_repositories_configurations_request import UpdateRepositoriesConfigurationsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateRepositoriesConfigurationsRequest from a JSON string
update_repositories_configurations_request_instance = UpdateRepositoriesConfigurationsRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateRepositoriesConfigurationsRequest.to_json())

# convert the object into a dict
update_repositories_configurations_request_dict = update_repositories_configurations_request_instance.to_dict()
# create an instance of UpdateRepositoriesConfigurationsRequest from a dict
update_repositories_configurations_request_from_dict = UpdateRepositoriesConfigurationsRequest.from_dict(update_repositories_configurations_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


