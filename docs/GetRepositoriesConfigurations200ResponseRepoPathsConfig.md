# GetRepositoriesConfigurations200ResponseRepoPathsConfig


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**patterns** | [**List[UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner]**](UpdateRepositoriesConfigurationsRequestRepoPathsConfigPatternsInner.md) |  | [optional] 
**all_other_artifacts** | [**GetRepositoriesConfigurations200ResponseRepoPathsConfigAllOtherArtifacts**](GetRepositoriesConfigurations200ResponseRepoPathsConfigAllOtherArtifacts.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_repositories_configurations200_response_repo_paths_config import GetRepositoriesConfigurations200ResponseRepoPathsConfig

# TODO update the JSON string below
json = "{}"
# create an instance of GetRepositoriesConfigurations200ResponseRepoPathsConfig from a JSON string
get_repositories_configurations200_response_repo_paths_config_instance = GetRepositoriesConfigurations200ResponseRepoPathsConfig.from_json(json)
# print the JSON string representation of the object
print(GetRepositoriesConfigurations200ResponseRepoPathsConfig.to_json())

# convert the object into a dict
get_repositories_configurations200_response_repo_paths_config_dict = get_repositories_configurations200_response_repo_paths_config_instance.to_dict()
# create an instance of GetRepositoriesConfigurations200ResponseRepoPathsConfig from a dict
get_repositories_configurations200_response_repo_paths_config_from_dict = GetRepositoriesConfigurations200ResponseRepoPathsConfig.from_dict(get_repositories_configurations200_response_repo_paths_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


