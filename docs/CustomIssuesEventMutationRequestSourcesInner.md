# CustomIssuesEventMutationRequestSourcesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source_id** | **str** | Source identifier (e.g. CVE ID). | [optional] 

## Example

```python
from jfrog_client.models.custom_issues_event_mutation_request_sources_inner import CustomIssuesEventMutationRequestSourcesInner

# TODO update the JSON string below
json = "{}"
# create an instance of CustomIssuesEventMutationRequestSourcesInner from a JSON string
custom_issues_event_mutation_request_sources_inner_instance = CustomIssuesEventMutationRequestSourcesInner.from_json(json)
# print the JSON string representation of the object
print(CustomIssuesEventMutationRequestSourcesInner.to_json())

# convert the object into a dict
custom_issues_event_mutation_request_sources_inner_dict = custom_issues_event_mutation_request_sources_inner_instance.to_dict()
# create an instance of CustomIssuesEventMutationRequestSourcesInner from a dict
custom_issues_event_mutation_request_sources_inner_from_dict = CustomIssuesEventMutationRequestSourcesInner.from_dict(custom_issues_event_mutation_request_sources_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


