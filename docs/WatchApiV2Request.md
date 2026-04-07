# WatchApiV2Request

Request body for creating or updating a Watch in Xray.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**general_data** | [**WatchApiV2RequestGeneralData**](WatchApiV2RequestGeneralData.md) |  | 
**project_resources** | [**WatchApiV2RequestProjectResources**](WatchApiV2RequestProjectResources.md) |  | [optional] 
**assigned_policies** | [**List[WatchApiV2RequestAssignedPoliciesInner]**](WatchApiV2RequestAssignedPoliciesInner.md) | Policies assigned to the Watch. | [optional] 
**watch_recipients** | **List[str]** | Email addresses that will receive Watch notifications. | [optional] 
**create_ticket_enabled** | **bool** | Indicates whether Jira ticket creation is enabled for this Watch. | [optional] 
**ticket_profile** | **str** | Jira profile name for ticket generation. | [optional] 
**ticket_generation** | [**WatchApiV2RequestTicketGeneration**](WatchApiV2RequestTicketGeneration.md) |  | [optional] 

## Example

```python
from jfrog_client.models.watch_api_v2_request import WatchApiV2Request

# TODO update the JSON string below
json = "{}"
# create an instance of WatchApiV2Request from a JSON string
watch_api_v2_request_instance = WatchApiV2Request.from_json(json)
# print the JSON string representation of the object
print(WatchApiV2Request.to_json())

# convert the object into a dict
watch_api_v2_request_dict = watch_api_v2_request_instance.to_dict()
# create an instance of WatchApiV2Request from a dict
watch_api_v2_request_from_dict = WatchApiV2Request.from_dict(watch_api_v2_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


