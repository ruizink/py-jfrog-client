# UpdateRepositoriesConfigurationsRequestRepoConfigExposures

Exposures scanning configuration.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scanners_category** | [**UpdateRepositoriesConfigurationsRequestRepoConfigExposuresScannersCategory**](UpdateRepositoriesConfigurationsRequestRepoConfigExposuresScannersCategory.md) |  | [optional] 

## Example

```python
from jfrog_client.models.update_repositories_configurations_request_repo_config_exposures import UpdateRepositoriesConfigurationsRequestRepoConfigExposures

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateRepositoriesConfigurationsRequestRepoConfigExposures from a JSON string
update_repositories_configurations_request_repo_config_exposures_instance = UpdateRepositoriesConfigurationsRequestRepoConfigExposures.from_json(json)
# print the JSON string representation of the object
print(UpdateRepositoriesConfigurationsRequestRepoConfigExposures.to_json())

# convert the object into a dict
update_repositories_configurations_request_repo_config_exposures_dict = update_repositories_configurations_request_repo_config_exposures_instance.to_dict()
# create an instance of UpdateRepositoriesConfigurationsRequestRepoConfigExposures from a dict
update_repositories_configurations_request_repo_config_exposures_from_dict = UpdateRepositoriesConfigurationsRequestRepoConfigExposures.from_dict(update_repositories_configurations_request_repo_config_exposures_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


