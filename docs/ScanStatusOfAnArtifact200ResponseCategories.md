# ScanStatusOfAnArtifact200ResponseCategories

Per-category scan status.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secrets** | **str** |  | [optional] 
**services** | **str** |  | [optional] 
**applications** | **str** |  | [optional] 
**iac** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.scan_status_of_an_artifact200_response_categories import ScanStatusOfAnArtifact200ResponseCategories

# TODO update the JSON string below
json = "{}"
# create an instance of ScanStatusOfAnArtifact200ResponseCategories from a JSON string
scan_status_of_an_artifact200_response_categories_instance = ScanStatusOfAnArtifact200ResponseCategories.from_json(json)
# print the JSON string representation of the object
print(ScanStatusOfAnArtifact200ResponseCategories.to_json())

# convert the object into a dict
scan_status_of_an_artifact200_response_categories_dict = scan_status_of_an_artifact200_response_categories_instance.to_dict()
# create an instance of ScanStatusOfAnArtifact200ResponseCategories from a dict
scan_status_of_an_artifact200_response_categories_from_dict = ScanStatusOfAnArtifact200ResponseCategories.from_dict(scan_status_of_an_artifact200_response_categories_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


