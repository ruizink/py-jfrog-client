# ContextualAnalysisScanRequest

Start Contextual Analysis scan (PDF §12.37).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component_id** | **str** | Artifact component id (e.g. gav://, npm://). | 
**path** | **str** | Artifact path in the repository. | 
**repo** | **str** | Repository name (included in PDF sample alongside path). | 

## Example

```python
from jfrog_client.models.contextual_analysis_scan_request import ContextualAnalysisScanRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ContextualAnalysisScanRequest from a JSON string
contextual_analysis_scan_request_instance = ContextualAnalysisScanRequest.from_json(json)
# print the JSON string representation of the object
print(ContextualAnalysisScanRequest.to_json())

# convert the object into a dict
contextual_analysis_scan_request_dict = contextual_analysis_scan_request_instance.to_dict()
# create an instance of ContextualAnalysisScanRequest from a dict
contextual_analysis_scan_request_from_dict = ContextualAnalysisScanRequest.from_dict(contextual_analysis_scan_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


