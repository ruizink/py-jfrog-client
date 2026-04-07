# GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**vulnerable_versions** | **List[str]** |  | 
**fixed_versions** | **object** |  | [optional] 
**vulnerable_ranges** | [**List[GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInnerVulnerableRangesInner]**](GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInnerVulnerableRangesInner.md) |  | 

## Example

```python
from jfrog_client.models.get_issue_events_v2_custom_issues_v2_openapi200_response_components_inner import GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInner from a JSON string
get_issue_events_v2_custom_issues_v2_openapi200_response_components_inner_instance = GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInner.from_json(json)
# print the JSON string representation of the object
print(GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInner.to_json())

# convert the object into a dict
get_issue_events_v2_custom_issues_v2_openapi200_response_components_inner_dict = get_issue_events_v2_custom_issues_v2_openapi200_response_components_inner_instance.to_dict()
# create an instance of GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInner from a dict
get_issue_events_v2_custom_issues_v2_openapi200_response_components_inner_from_dict = GetIssueEventsV2CustomIssuesV2Openapi200ResponseComponentsInner.from_dict(get_issue_events_v2_custom_issues_v2_openapi200_response_components_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


