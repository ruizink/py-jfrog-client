# CreateIssueEvent201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Issue identifier. | [optional] 
**package_type** | **str** | Package technology. | [optional] 
**type** | **str** | Issue type. | [optional] 
**provider** | **str** | Vendor or provider identifier. | [optional] 
**summary** | **str** | Short summary. | [optional] 
**description** | **str** | Detailed description. | [optional] 
**severity** | **str** | Issue severity. | [optional] 
**created** | **str** | Creation timestamp. | [optional] 
**cves** | [**List[CreateIssueEvent201ResponseCvesInner]**](CreateIssueEvent201ResponseCvesInner.md) | Associated CVEs. | [optional] 
**sources** | [**List[CreateIssueEvent201ResponseSourcesInner]**](CreateIssueEvent201ResponseSourcesInner.md) | Issue sources. | [optional] 
**components** | [**List[CreateIssueEvent201ResponseComponentsInner]**](CreateIssueEvent201ResponseComponentsInner.md) | Affected components. | [optional] 
**modified** | **str** | Last modification timestamp. | [optional] 
**edited** | **str** | Last edit timestamp. | [optional] 

## Example

```python
from jfrog_client.models.create_issue_event201_response import CreateIssueEvent201Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateIssueEvent201Response from a JSON string
create_issue_event201_response_instance = CreateIssueEvent201Response.from_json(json)
# print the JSON string representation of the object
print(CreateIssueEvent201Response.to_json())

# convert the object into a dict
create_issue_event201_response_dict = create_issue_event201_response_instance.to_dict()
# create an instance of CreateIssueEvent201Response from a dict
create_issue_event201_response_from_dict = CreateIssueEvent201Response.from_dict(create_issue_event201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


