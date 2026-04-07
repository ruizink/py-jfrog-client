# RepositoryAdvancedScansRequestExposuresCategories

Categories to scan.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secrets** | **bool** | Scan Secrets category (Docker repos only). | [optional] 
**services** | **bool** | Scan Services category (Docker repos only). | [optional] 
**applications** | **bool** | Scan Applications category (Docker repos only). | [optional] 
**iac** | **bool** | Scan IaC category (Terraform repos only). | [optional] 

## Example

```python
from jfrog_client.models.repository_advanced_scans_request_exposures_categories import RepositoryAdvancedScansRequestExposuresCategories

# TODO update the JSON string below
json = "{}"
# create an instance of RepositoryAdvancedScansRequestExposuresCategories from a JSON string
repository_advanced_scans_request_exposures_categories_instance = RepositoryAdvancedScansRequestExposuresCategories.from_json(json)
# print the JSON string representation of the object
print(RepositoryAdvancedScansRequestExposuresCategories.to_json())

# convert the object into a dict
repository_advanced_scans_request_exposures_categories_dict = repository_advanced_scans_request_exposures_categories_instance.to_dict()
# create an instance of RepositoryAdvancedScansRequestExposuresCategories from a dict
repository_advanced_scans_request_exposures_categories_from_dict = RepositoryAdvancedScansRequestExposuresCategories.from_dict(repository_advanced_scans_request_exposures_categories_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


