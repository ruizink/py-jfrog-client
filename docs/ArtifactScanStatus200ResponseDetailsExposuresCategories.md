# ArtifactScanStatus200ResponseDetailsExposuresCategories


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iac** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 
**secrets** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 
**services** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 
**applications** | [**ArtifactScanStatus200ResponseDetailsSca**](ArtifactScanStatus200ResponseDetailsSca.md) |  | [optional] 

## Example

```python
from jfrog_client.models.artifact_scan_status200_response_details_exposures_categories import ArtifactScanStatus200ResponseDetailsExposuresCategories

# TODO update the JSON string below
json = "{}"
# create an instance of ArtifactScanStatus200ResponseDetailsExposuresCategories from a JSON string
artifact_scan_status200_response_details_exposures_categories_instance = ArtifactScanStatus200ResponseDetailsExposuresCategories.from_json(json)
# print the JSON string representation of the object
print(ArtifactScanStatus200ResponseDetailsExposuresCategories.to_json())

# convert the object into a dict
artifact_scan_status200_response_details_exposures_categories_dict = artifact_scan_status200_response_details_exposures_categories_instance.to_dict()
# create an instance of ArtifactScanStatus200ResponseDetailsExposuresCategories from a dict
artifact_scan_status200_response_details_exposures_categories_from_dict = ArtifactScanStatus200ResponseDetailsExposuresCategories.from_dict(artifact_scan_status200_response_details_exposures_categories_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


