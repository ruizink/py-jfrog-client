# ReportsRepositoryEntry


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Repository name | 
**include_path_patterns** | **List[str]** | Optional path include globs | [optional] 
**exclude_path_patterns** | **List[str]** | Optional path exclude globs | [optional] 

## Example

```python
from jfrog_client.models.reports_repository_entry import ReportsRepositoryEntry

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsRepositoryEntry from a JSON string
reports_repository_entry_instance = ReportsRepositoryEntry.from_json(json)
# print the JSON string representation of the object
print(ReportsRepositoryEntry.to_json())

# convert the object into a dict
reports_repository_entry_dict = reports_repository_entry_instance.to_dict()
# create an instance of ReportsRepositoryEntry from a dict
reports_repository_entry_from_dict = ReportsRepositoryEntry.from_dict(reports_repository_entry_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


