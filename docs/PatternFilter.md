# PatternFilter

Filter patterns for federation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include_patterns** | **List[str]** | Patterns to include | [optional] 
**exclude_patterns** | **List[str]** | Patterns to exclude | [optional] 

## Example

```python
from jfrog_client.models.pattern_filter import PatternFilter

# TODO update the JSON string below
json = "{}"
# create an instance of PatternFilter from a JSON string
pattern_filter_instance = PatternFilter.from_json(json)
# print the JSON string representation of the object
print(PatternFilter.to_json())

# convert the object into a dict
pattern_filter_dict = pattern_filter_instance.to_dict()
# create an instance of PatternFilter from a dict
pattern_filter_from_dict = PatternFilter.from_dict(pattern_filter_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


