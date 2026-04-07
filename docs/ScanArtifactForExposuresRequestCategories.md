# ScanArtifactForExposuresRequestCategories

Map of exposure categories to scan. Set each category to true to include it. Valid categories: secrets, services, applications, iac. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secrets** | **bool** |  | [optional] 
**services** | **bool** |  | [optional] 
**applications** | **bool** |  | [optional] 
**iac** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.scan_artifact_for_exposures_request_categories import ScanArtifactForExposuresRequestCategories

# TODO update the JSON string below
json = "{}"
# create an instance of ScanArtifactForExposuresRequestCategories from a JSON string
scan_artifact_for_exposures_request_categories_instance = ScanArtifactForExposuresRequestCategories.from_json(json)
# print the JSON string representation of the object
print(ScanArtifactForExposuresRequestCategories.to_json())

# convert the object into a dict
scan_artifact_for_exposures_request_categories_dict = scan_artifact_for_exposures_request_categories_instance.to_dict()
# create an instance of ScanArtifactForExposuresRequestCategories from a dict
scan_artifact_for_exposures_request_categories_from_dict = ScanArtifactForExposuresRequestCategories.from_dict(scan_artifact_for_exposures_request_categories_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


