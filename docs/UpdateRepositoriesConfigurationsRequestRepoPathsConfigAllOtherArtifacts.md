# UpdateRepositoriesConfigurationsRequestRepoPathsConfigAllOtherArtifacts

Configuration for artifacts not matching any pattern.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index_new_artifacts** | **bool** |  | [optional] 
**retention_in_days** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.update_repositories_configurations_request_repo_paths_config_all_other_artifacts import UpdateRepositoriesConfigurationsRequestRepoPathsConfigAllOtherArtifacts

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateRepositoriesConfigurationsRequestRepoPathsConfigAllOtherArtifacts from a JSON string
update_repositories_configurations_request_repo_paths_config_all_other_artifacts_instance = UpdateRepositoriesConfigurationsRequestRepoPathsConfigAllOtherArtifacts.from_json(json)
# print the JSON string representation of the object
print(UpdateRepositoriesConfigurationsRequestRepoPathsConfigAllOtherArtifacts.to_json())

# convert the object into a dict
update_repositories_configurations_request_repo_paths_config_all_other_artifacts_dict = update_repositories_configurations_request_repo_paths_config_all_other_artifacts_instance.to_dict()
# create an instance of UpdateRepositoriesConfigurationsRequestRepoPathsConfigAllOtherArtifacts from a dict
update_repositories_configurations_request_repo_paths_config_all_other_artifacts_from_dict = UpdateRepositoriesConfigurationsRequestRepoPathsConfigAllOtherArtifacts.from_dict(update_repositories_configurations_request_repo_paths_config_all_other_artifacts_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


