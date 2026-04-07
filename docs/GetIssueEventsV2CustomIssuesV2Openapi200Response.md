# GetIssueEventsV2CustomIssuesV2Openapi200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**package_type** | **str** |  | 
**type** | **str** |  | 
**provider** | **str** |  | 
**summary** | **str** |  | 
**malicious_package** | **bool** |  | 
**description** | **str** |  | 
**severity** | **str** |  | 
**leading_severity** | [**GetIssueEventsV2CustomIssuesV2Openapi200ResponseLeadingSeverity**](GetIssueEventsV2CustomIssuesV2Openapi200ResponseLeadingSeverity.md) |  | 
**created** | **str** |  | 
**sources** | [**List[GetIssueEventsV2CustomIssuesV2Openapi200ResponseSourcesInner]**](GetIssueEventsV2CustomIssuesV2Openapi200ResponseSourcesInner.md) |  | 
**components** | [**List[GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInner]**](GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInner.md) |  | 
**modified** | **str** |  | 
**modified_time** | **int** |  | 
**edited** | **str** |  | 
**issue_kind** | **int** |  | 

## Example

```python
from jfrog_client.models.get_issue_events_v2_custom_issues_v2_openapi200_response import GetIssueEventsV2CustomIssuesV2Openapi200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetIssueEventsV2CustomIssuesV2Openapi200Response from a JSON string
get_issue_events_v2_custom_issues_v2_openapi200_response_instance = GetIssueEventsV2CustomIssuesV2Openapi200Response.from_json(json)
# print the JSON string representation of the object
print(GetIssueEventsV2CustomIssuesV2Openapi200Response.to_json())

# convert the object into a dict
get_issue_events_v2_custom_issues_v2_openapi200_response_dict = get_issue_events_v2_custom_issues_v2_openapi200_response_instance.to_dict()
# create an instance of GetIssueEventsV2CustomIssuesV2Openapi200Response from a dict
get_issue_events_v2_custom_issues_v2_openapi200_response_from_dict = GetIssueEventsV2CustomIssuesV2Openapi200Response.from_dict(get_issue_events_v2_custom_issues_v2_openapi200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


