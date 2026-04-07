# ReportsProjectsScope


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keys** | **List[str]** | List of project keys. | [optional] 
**include_key_patterns** | **List[str]** | Wildcard patterns for including project keys. | [optional] 
**exclude_key_patterns** | **List[str]** | Wildcard patterns for excluding project keys. | [optional] 
**number_of_latest_versions** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.reports_projects_scope import ReportsProjectsScope

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsProjectsScope from a JSON string
reports_projects_scope_instance = ReportsProjectsScope.from_json(json)
# print the JSON string representation of the object
print(ReportsProjectsScope.to_json())

# convert the object into a dict
reports_projects_scope_dict = reports_projects_scope_instance.to_dict()
# create an instance of ReportsProjectsScope from a dict
reports_projects_scope_from_dict = ReportsProjectsScope.from_dict(reports_projects_scope_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


