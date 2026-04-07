# GetExposureResultDetails200ResponseFindings


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**explanation** | **str** |  | [optional] 
**justification** | **str** |  | [optional] 
**mitigation** | **str** |  | [optional] 
**total_findings** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.get_exposure_result_details200_response_findings import GetExposureResultDetails200ResponseFindings

# TODO update the JSON string below
json = "{}"
# create an instance of GetExposureResultDetails200ResponseFindings from a JSON string
get_exposure_result_details200_response_findings_instance = GetExposureResultDetails200ResponseFindings.from_json(json)
# print the JSON string representation of the object
print(GetExposureResultDetails200ResponseFindings.to_json())

# convert the object into a dict
get_exposure_result_details200_response_findings_dict = get_exposure_result_details200_response_findings_instance.to_dict()
# create an instance of GetExposureResultDetails200ResponseFindings from a dict
get_exposure_result_details200_response_findings_from_dict = GetExposureResultDetails200ResponseFindings.from_dict(get_exposure_result_details200_response_findings_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


