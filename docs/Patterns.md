# Patterns


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include_patterns** | **List[str]** | Include patterns | [optional] 
**exclude_patterns** | **List[str]** | Exclude patterns | [optional] 

## Example

```python
from jfrog_client.models.patterns import Patterns

# TODO update the JSON string below
json = "{}"
# create an instance of Patterns from a JSON string
patterns_instance = Patterns.from_json(json)
# print the JSON string representation of the object
print(Patterns.to_json())

# convert the object into a dict
patterns_dict = patterns_instance.to_dict()
# create an instance of Patterns from a dict
patterns_from_dict = Patterns.from_dict(patterns_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


