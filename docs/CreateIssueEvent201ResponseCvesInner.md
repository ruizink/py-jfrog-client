# CreateIssueEvent201ResponseCvesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cve** | **str** |  | [optional] 
**cvss_v2** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.create_issue_event201_response_cves_inner import CreateIssueEvent201ResponseCvesInner

# TODO update the JSON string below
json = "{}"
# create an instance of CreateIssueEvent201ResponseCvesInner from a JSON string
create_issue_event201_response_cves_inner_instance = CreateIssueEvent201ResponseCvesInner.from_json(json)
# print the JSON string representation of the object
print(CreateIssueEvent201ResponseCvesInner.to_json())

# convert the object into a dict
create_issue_event201_response_cves_inner_dict = create_issue_event201_response_cves_inner_instance.to_dict()
# create an instance of CreateIssueEvent201ResponseCvesInner from a dict
create_issue_event201_response_cves_inner_from_dict = CreateIssueEvent201ResponseCvesInner.from_dict(create_issue_event201_response_cves_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


