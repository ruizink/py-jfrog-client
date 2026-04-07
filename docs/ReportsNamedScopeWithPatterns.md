# ReportsNamedScopeWithPatterns


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**names** | **List[str]** |  | [optional] 
**include_patterns** | **List[str]** |  | [optional] 
**exclude_patterns** | **List[str]** |  | [optional] 
**number_of_latest_versions** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.reports_named_scope_with_patterns import ReportsNamedScopeWithPatterns

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsNamedScopeWithPatterns from a JSON string
reports_named_scope_with_patterns_instance = ReportsNamedScopeWithPatterns.from_json(json)
# print the JSON string representation of the object
print(ReportsNamedScopeWithPatterns.to_json())

# convert the object into a dict
reports_named_scope_with_patterns_dict = reports_named_scope_with_patterns_instance.to_dict()
# create an instance of ReportsNamedScopeWithPatterns from a dict
reports_named_scope_with_patterns_from_dict = ReportsNamedScopeWithPatterns.from_dict(reports_named_scope_with_patterns_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


