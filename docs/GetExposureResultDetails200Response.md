# GetExposureResultDetails200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | [optional] 
**jfrog_severity** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**abbreviation** | **str** |  | [optional] 
**cwe** | [**GetExposureResultDetails200ResponseCwe**](GetExposureResultDetails200ResponseCwe.md) |  | [optional] 
**fix_cost** | **str** |  | [optional] 
**outcomes_details** | [**List[GetExposureResultDetails200ResponseOutcomesDetailsInner]**](GetExposureResultDetails200ResponseOutcomesDetailsInner.md) |  | [optional] 
**findings** | [**GetExposureResultDetails200ResponseFindings**](GetExposureResultDetails200ResponseFindings.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_exposure_result_details200_response import GetExposureResultDetails200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetExposureResultDetails200Response from a JSON string
get_exposure_result_details200_response_instance = GetExposureResultDetails200Response.from_json(json)
# print the JSON string representation of the object
print(GetExposureResultDetails200Response.to_json())

# convert the object into a dict
get_exposure_result_details200_response_dict = get_exposure_result_details200_response_instance.to_dict()
# create an instance of GetExposureResultDetails200Response from a dict
get_exposure_result_details200_response_from_dict = GetExposureResultDetails200Response.from_dict(get_exposure_result_details200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


