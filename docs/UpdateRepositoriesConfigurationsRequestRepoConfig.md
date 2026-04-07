# UpdateRepositoriesConfigurationsRequestRepoConfig

Repository-level configuration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vuln_contextual_analysis** | **bool** | Enable contextual analysis for vulnerabilities. | [optional] 
**retention_in_days** | **int** | Number of days to retain scan results. | [optional] 
**exposures** | [**UpdateRepositoriesConfigurationsRequestRepoConfigExposures**](UpdateRepositoriesConfigurationsRequestRepoConfigExposures.md) |  | [optional] 

## Example

```python
from jfrog_client.models.update_repositories_configurations_request_repo_config import UpdateRepositoriesConfigurationsRequestRepoConfig

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateRepositoriesConfigurationsRequestRepoConfig from a JSON string
update_repositories_configurations_request_repo_config_instance = UpdateRepositoriesConfigurationsRequestRepoConfig.from_json(json)
# print the JSON string representation of the object
print(UpdateRepositoriesConfigurationsRequestRepoConfig.to_json())

# convert the object into a dict
update_repositories_configurations_request_repo_config_dict = update_repositories_configurations_request_repo_config_instance.to_dict()
# create an instance of UpdateRepositoriesConfigurationsRequestRepoConfig from a dict
update_repositories_configurations_request_repo_config_from_dict = UpdateRepositoriesConfigurationsRequestRepoConfig.from_dict(update_repositories_configurations_request_repo_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


