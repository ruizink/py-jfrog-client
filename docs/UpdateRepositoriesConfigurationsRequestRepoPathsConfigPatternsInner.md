# UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include** | **str** |  | [optional] 
**exclude** | **str** |  | [optional] 
**index_new_artifacts** | **bool** |  | [optional] 
**retention_in_days** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.update_repositories_configurations_request_repo_paths_config_patterns_inner import UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner from a JSON string
update_repositories_configurations_request_repo_paths_config_patterns_inner_instance = UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner.from_json(json)
# print the JSON string representation of the object
print(UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner.to_json())

# convert the object into a dict
update_repositories_configurations_request_repo_paths_config_patterns_inner_dict = update_repositories_configurations_request_repo_paths_config_patterns_inner_instance.to_dict()
# create an instance of UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner from a dict
update_repositories_configurations_request_repo_paths_config_patterns_inner_from_dict = UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner.from_dict(update_repositories_configurations_request_repo_paths_config_patterns_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


