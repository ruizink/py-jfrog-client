# UpdateRepositoriesConfigurationsRequestRepoPathsConfig

Path-specific configurations.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**patterns** | [**List[UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner]**](UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner.md) | Path pattern rules. | [optional] 
**all_other_artifacts** | [**UpdateRepositoriesConfigurationsRequestRepoPathsConfigAllOtherArtifacts**](UpdateRepositoriesConfigurationsRequestRepoPathsConfigAllOtherArtifacts.md) |  | [optional] 

## Example

```python
from jfrog_client.models.update_repositories_configurations_request_repo_paths_config import UpdateRepositoriesConfigurationsRequestRepoPathsConfig

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateRepositoriesConfigurationsRequestRepoPathsConfig from a JSON string
update_repositories_configurations_request_repo_paths_config_instance = UpdateRepositoriesConfigurationsRequestRepoPathsConfig.from_json(json)
# print the JSON string representation of the object
print(UpdateRepositoriesConfigurationsRequestRepoPathsConfig.to_json())

# convert the object into a dict
update_repositories_configurations_request_repo_paths_config_dict = update_repositories_configurations_request_repo_paths_config_instance.to_dict()
# create an instance of UpdateRepositoriesConfigurationsRequestRepoPathsConfig from a dict
update_repositories_configurations_request_repo_paths_config_from_dict = UpdateRepositoriesConfigurationsRequestRepoPathsConfig.from_dict(update_repositories_configurations_request_repo_paths_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


