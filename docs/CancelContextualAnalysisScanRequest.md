# CancelContextualAnalysisScanRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo** | **str** | Repository name containing the artifact. | 
**path** | **str** | Path to the artifact in the repository. | 
**component_id** | **str** | Component identifier (e.g. gav://, npm://). | [optional] 
**project** | **str** | Project key (optional). | [optional] 

## Example

```python
from jfrog_client.models.cancel_contextual_analysis_scan_request import CancelContextualAnalysisScanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CancelContextualAnalysisScanRequest from a JSON string
cancel_contextual_analysis_scan_request_instance = CancelContextualAnalysisScanRequest.from_json(json)
# print the JSON string representation of the object
print(CancelContextualAnalysisScanRequest.to_json())

# convert the object into a dict
cancel_contextual_analysis_scan_request_dict = cancel_contextual_analysis_scan_request_instance.to_dict()
# create an instance of CancelContextualAnalysisScanRequest from a dict
cancel_contextual_analysis_scan_request_from_dict = CancelContextualAnalysisScanRequest.from_dict(cancel_contextual_analysis_scan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


