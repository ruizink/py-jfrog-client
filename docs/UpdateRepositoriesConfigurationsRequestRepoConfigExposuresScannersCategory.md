# UpdateRepositoriesConfigurationsRequestRepoConfigExposuresScannersCategory


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**services_scan** | **bool** |  | [optional] 
**secrets_scan** | **bool** |  | [optional] 
**applications_scan** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.update_repositories_configurations_request_repo_config_exposures_scanners_category import UpdateRepositoriesConfigurationsRequestRepoConfigExposuresScannersCategory

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateRepositoriesConfigurationsRequestRepoConfigExposuresScannersCategory from a JSON string
update_repositories_configurations_request_repo_config_exposures_scanners_category_instance = UpdateRepositoriesConfigurationsRequestRepoConfigExposuresScannersCategory.from_json(json)
# print the JSON string representation of the object
print(UpdateRepositoriesConfigurationsRequestRepoConfigExposuresScannersCategory.to_json())

# convert the object into a dict
update_repositories_configurations_request_repo_config_exposures_scanners_category_dict = update_repositories_configurations_request_repo_config_exposures_scanners_category_instance.to_dict()
# create an instance of UpdateRepositoriesConfigurationsRequestRepoConfigExposuresScannersCategory from a dict
update_repositories_configurations_request_repo_config_exposures_scanners_category_from_dict = UpdateRepositoriesConfigurationsRequestRepoConfigExposuresScannersCategory.from_dict(update_repositories_configurations_request_repo_config_exposures_scanners_category_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


