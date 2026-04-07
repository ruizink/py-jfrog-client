# GetContextualAnalysisScanStatus200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** | Current scan status (e.g. not_scanned, in_progress, completed). | [optional] 

## Example

```python
from jfrog_client.models.get_contextual_analysis_scan_status200_response import GetContextualAnalysisScanStatus200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetContextualAnalysisScanStatus200Response from a JSON string
get_contextual_analysis_scan_status200_response_instance = GetContextualAnalysisScanStatus200Response.from_json(json)
# print the JSON string representation of the object
print(GetContextualAnalysisScanStatus200Response.to_json())

# convert the object into a dict
get_contextual_analysis_scan_status200_response_dict = get_contextual_analysis_scan_status200_response_instance.to_dict()
# create an instance of GetContextualAnalysisScanStatus200Response from a dict
get_contextual_analysis_scan_status200_response_from_dict = GetContextualAnalysisScanStatus200Response.from_dict(get_contextual_analysis_scan_status200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


