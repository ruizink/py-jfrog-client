# GetContextualAnalysisScanStatusRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo** | **str** | Repository name containing the artifact. | 
**path** | **str** | Path to the artifact in the repository. | 

## Example

```python
from jfrog_client.models.get_contextual_analysis_scan_status_request import GetContextualAnalysisScanStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of GetContextualAnalysisScanStatusRequest from a JSON string
get_contextual_analysis_scan_status_request_instance = GetContextualAnalysisScanStatusRequest.from_json(json)
# print the JSON string representation of the object
print(GetContextualAnalysisScanStatusRequest.to_json())

# convert the object into a dict
get_contextual_analysis_scan_status_request_dict = get_contextual_analysis_scan_status_request_instance.to_dict()
# create an instance of GetContextualAnalysisScanStatusRequest from a dict
get_contextual_analysis_scan_status_request_from_dict = GetContextualAnalysisScanStatusRequest.from_dict(get_contextual_analysis_scan_status_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


