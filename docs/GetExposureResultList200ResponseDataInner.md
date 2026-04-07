# GetExposureResultList200ResponseDataInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** |  | [optional] 
**jfrog_severity** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**abbreviation** | **str** |  | [optional] 
**cwe** | [**GetExposureResultList200ResponseDataInnerCwe**](GetExposureResultList200ResponseDataInnerCwe.md) |  | [optional] 
**outcomes** | **List[str]** |  | [optional] 
**fix_cost** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_exposure_result_list200_response_data_inner import GetExposureResultList200ResponseDataInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetExposureResultList200ResponseDataInner from a JSON string
get_exposure_result_list200_response_data_inner_instance = GetExposureResultList200ResponseDataInner.from_json(json)
# print the JSON string representation of the object
print(GetExposureResultList200ResponseDataInner.to_json())

# convert the object into a dict
get_exposure_result_list200_response_data_inner_dict = get_exposure_result_list200_response_data_inner_instance.to_dict()
# create an instance of GetExposureResultList200ResponseDataInner from a dict
get_exposure_result_list200_response_data_inner_from_dict = GetExposureResultList200ResponseDataInner.from_dict(get_exposure_result_list200_response_data_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


