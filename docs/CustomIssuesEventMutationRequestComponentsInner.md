# CustomIssuesEventMutationRequestComponentsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Component identifier. | [optional] 
**vulnerable_versions** | **List[str]** | List of vulnerable version ranges. | [optional] 
**fixed_versions** | **List[str]** | List of fixed version ranges (null if none). | [optional] 

## Example

```python
from jfrog_client.models.custom_issues_event_mutation_request_components_inner import CustomIssuesEventMutationRequestComponentsInner

# TODO update the JSON string below
json = "{}"
# create an instance of CustomIssuesEventMutationRequestComponentsInner from a JSON string
custom_issues_event_mutation_request_components_inner_instance = CustomIssuesEventMutationRequestComponentsInner.from_json(json)
# print the JSON string representation of the object
print(CustomIssuesEventMutationRequestComponentsInner.to_json())

# convert the object into a dict
custom_issues_event_mutation_request_components_inner_dict = custom_issues_event_mutation_request_components_inner_instance.to_dict()
# create an instance of CustomIssuesEventMutationRequestComponentsInner from a dict
custom_issues_event_mutation_request_components_inner_from_dict = CustomIssuesEventMutationRequestComponentsInner.from_dict(custom_issues_event_mutation_request_components_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


