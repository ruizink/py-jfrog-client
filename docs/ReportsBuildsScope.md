# ReportsBuildsScope


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**names** | **List[str]** |  | [optional] 
**include_patterns** | **List[str]** |  | [optional] 
**exclude_patterns** | **List[str]** |  | [optional] 
**number_of_latest_versions** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.reports_builds_scope import ReportsBuildsScope

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsBuildsScope from a JSON string
reports_builds_scope_instance = ReportsBuildsScope.from_json(json)
# print the JSON string representation of the object
print(ReportsBuildsScope.to_json())

# convert the object into a dict
reports_builds_scope_dict = reports_builds_scope_instance.to_dict()
# create an instance of ReportsBuildsScope from a dict
reports_builds_scope_from_dict = ReportsBuildsScope.from_dict(reports_builds_scope_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


