# GetRepositoriesConfigurations200ResponseRepoConfig


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vuln_contextual_analysis** | **bool** |  | [optional] 
**retention_in_days** | **int** |  | [optional] 
**exposures** | [**GetRepositoriesConfigurations200ResponseRepoConfigExposures**](GetRepositoriesConfigurations200ResponseRepoConfigExposures.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_repositories_configurations200_response_repo_config import GetRepositoriesConfigurations200ResponseRepoConfig

# TODO update the JSON string below
json = "{}"
# create an instance of GetRepositoriesConfigurations200ResponseRepoConfig from a JSON string
get_repositories_configurations200_response_repo_config_instance = GetRepositoriesConfigurations200ResponseRepoConfig.from_json(json)
# print the JSON string representation of the object
print(GetRepositoriesConfigurations200ResponseRepoConfig.to_json())

# convert the object into a dict
get_repositories_configurations200_response_repo_config_dict = get_repositories_configurations200_response_repo_config_instance.to_dict()
# create an instance of GetRepositoriesConfigurations200ResponseRepoConfig from a dict
get_repositories_configurations200_response_repo_config_from_dict = GetRepositoriesConfigurations200ResponseRepoConfig.from_dict(get_repositories_configurations200_response_repo_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


