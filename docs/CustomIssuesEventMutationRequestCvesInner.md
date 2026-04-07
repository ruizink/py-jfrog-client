# CustomIssuesEventMutationRequestCvesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cve** | **str** | CVE identifier. | [optional] 
**cvss_v2** | **str** | CVSS v2 score. | [optional] 

## Example

```python
from jfrog_client.models.custom_issues_event_mutation_request_cves_inner import CustomIssuesEventMutationRequestCvesInner

# TODO update the JSON string below
json = "{}"
# create an instance of CustomIssuesEventMutationRequestCvesInner from a JSON string
custom_issues_event_mutation_request_cves_inner_instance = CustomIssuesEventMutationRequestCvesInner.from_json(json)
# print the JSON string representation of the object
print(CustomIssuesEventMutationRequestCvesInner.to_json())

# convert the object into a dict
custom_issues_event_mutation_request_cves_inner_dict = custom_issues_event_mutation_request_cves_inner_instance.to_dict()
# create an instance of CustomIssuesEventMutationRequestCvesInner from a dict
custom_issues_event_mutation_request_cves_inner_from_dict = CustomIssuesEventMutationRequestCvesInner.from_dict(custom_issues_event_mutation_request_cves_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


