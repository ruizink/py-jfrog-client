# CustomIssuesEventMutationRequest

JSON body for creating or updating a vendor issue event (Custom Issues API).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique issue identifier. Cannot have an &#39;Xray&#39; prefix. | 
**package_type** | **str** | Package technology (e.g. maven, npm). | 
**type** | **str** | Issue type (e.g. Security). | 
**provider** | **str** | Vendor or provider identifier. Cannot be &#39;JFrog&#39;. | 
**summary** | **str** | Short summary of the issue. | [optional] 
**description** | **str** | Detailed description of the issue. | [optional] 
**severity** | **str** | Issue severity (e.g. High, Medium, Low, Critical). | 
**cves** | [**List[CustomIssuesEventMutationRequestCvesInner]**](CustomIssuesEventMutationRequestCvesInner.md) | List of associated CVEs. | [optional] 
**sources** | [**List[CustomIssuesEventMutationRequestSourcesInner]**](CustomIssuesEventMutationRequestSourcesInner.md) | List of sources for this issue. | [optional] 
**components** | [**List[CustomIssuesEventMutationRequestComponentsInner]**](CustomIssuesEventMutationRequestComponentsInner.md) | List of affected components. | 

## Example

```python
from jfrog_client.models.custom_issues_event_mutation_request import CustomIssuesEventMutationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CustomIssuesEventMutationRequest from a JSON string
custom_issues_event_mutation_request_instance = CustomIssuesEventMutationRequest.from_json(json)
# print the JSON string representation of the object
print(CustomIssuesEventMutationRequest.to_json())

# convert the object into a dict
custom_issues_event_mutation_request_dict = custom_issues_event_mutation_request_instance.to_dict()
# create an instance of CustomIssuesEventMutationRequest from a dict
custom_issues_event_mutation_request_from_dict = CustomIssuesEventMutationRequest.from_dict(custom_issues_event_mutation_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


