# GetExposureResultList200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[GetExposureResultList200ResponseDataInner]**](GetExposureResultList200ResponseDataInner.md) | List of exposure results. | [optional] 
**total_count** | **int** | Total number of results. | [optional] 

## Example

```python
from jfrog_client.models.get_exposure_result_list200_response import GetExposureResultList200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetExposureResultList200Response from a JSON string
get_exposure_result_list200_response_instance = GetExposureResultList200Response.from_json(json)
# print the JSON string representation of the object
print(GetExposureResultList200Response.to_json())

# convert the object into a dict
get_exposure_result_list200_response_dict = get_exposure_result_list200_response_instance.to_dict()
# create an instance of GetExposureResultList200Response from a dict
get_exposure_result_list200_response_from_dict = GetExposureResultList200Response.from_dict(get_exposure_result_list200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


