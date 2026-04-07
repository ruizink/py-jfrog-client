# ScanStatusOfAnArtifact200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo** | **str** | Repository name. | [optional] 
**path** | **str** | Artifact path. | [optional] 
**status** | **str** | Overall scan status. | [optional] 
**last_successful_scan_date** | **str** | Timestamp of the last successful scan (if any). | [optional] 
**categories** | [**ScanStatusOfAnArtifact200ResponseCategories**](ScanStatusOfAnArtifact200ResponseCategories.md) |  | [optional] 
**issues** | **object** | Per-category issue counts by severity. | [optional] 

## Example

```python
from jfrog_client.models.scan_status_of_an_artifact200_response import ScanStatusOfAnArtifact200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ScanStatusOfAnArtifact200Response from a JSON string
scan_status_of_an_artifact200_response_instance = ScanStatusOfAnArtifact200Response.from_json(json)
# print the JSON string representation of the object
print(ScanStatusOfAnArtifact200Response.to_json())

# convert the object into a dict
scan_status_of_an_artifact200_response_dict = scan_status_of_an_artifact200_response_instance.to_dict()
# create an instance of ScanStatusOfAnArtifact200Response from a dict
scan_status_of_an_artifact200_response_from_dict = ScanStatusOfAnArtifact200Response.from_dict(scan_status_of_an_artifact200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


