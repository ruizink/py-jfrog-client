# CreateIssueEvent201ResponseComponentsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**vulnerable_versions** | **List[str]** |  | [optional] 
**fixed_versions** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.create_issue_event201_response_components_inner import CreateIssueEvent201ResponseComponentsInner

# TODO update the JSON string below
json = "{}"
# create an instance of CreateIssueEvent201ResponseComponentsInner from a JSON string
create_issue_event201_response_components_inner_instance = CreateIssueEvent201ResponseComponentsInner.from_json(json)
# print the JSON string representation of the object
print(CreateIssueEvent201ResponseComponentsInner.to_json())

# convert the object into a dict
create_issue_event201_response_components_inner_dict = create_issue_event201_response_components_inner_instance.to_dict()
# create an instance of CreateIssueEvent201ResponseComponentsInner from a dict
create_issue_event201_response_components_inner_from_dict = CreateIssueEvent201ResponseComponentsInner.from_dict(create_issue_event201_response_components_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


