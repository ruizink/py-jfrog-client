# WatchApiV2RequestGeneralData

General information about the Watch.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Name of the Watch. | 
**description** | **str** | Description of the Watch. | [optional] 
**active** | **bool** | Indicates if the Watch is active. Defaults to true if project_resources is included, false otherwise. | [optional] 

## Example

```python
from jfrog_client.models.watch_api_v2_request_general_data import WatchApiV2RequestGeneralData

# TODO update the JSON string below
json = "{}"
# create an instance of WatchApiV2RequestGeneralData from a JSON string
watch_api_v2_request_general_data_instance = WatchApiV2RequestGeneralData.from_json(json)
# print the JSON string representation of the object
print(WatchApiV2RequestGeneralData.to_json())

# convert the object into a dict
watch_api_v2_request_general_data_dict = watch_api_v2_request_general_data_instance.to_dict()
# create an instance of WatchApiV2RequestGeneralData from a dict
watch_api_v2_request_general_data_from_dict = WatchApiV2RequestGeneralData.from_dict(watch_api_v2_request_general_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


