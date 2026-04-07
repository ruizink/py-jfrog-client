# RepositorySummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo_key** | **str** |  | [optional] 
**repo_type** | **str** |  | [optional] 
**folders_count** | **int** |  | [optional] 
**files_count** | **int** |  | [optional] 
**used_space** | **str** |  | [optional] 
**used_space_in_bytes** | **int** |  | [optional] 
**items_count** | **int** |  | [optional] 
**package_type** | **str** |  | [optional] 
**project_key** | **str** |  | [optional] 
**percentage** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.repository_summary import RepositorySummary

# TODO update the JSON string below
json = "{}"
# create an instance of RepositorySummary from a JSON string
repository_summary_instance = RepositorySummary.from_json(json)
# print the JSON string representation of the object
print(RepositorySummary.to_json())

# convert the object into a dict
repository_summary_dict = repository_summary_instance.to_dict()
# create an instance of RepositorySummary from a dict
repository_summary_from_dict = RepositorySummary.from_dict(repository_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


