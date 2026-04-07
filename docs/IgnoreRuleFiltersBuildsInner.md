# IgnoreRuleFiltersBuildsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**project** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.ignore_rule_filters_builds_inner import IgnoreRuleFiltersBuildsInner

# TODO update the JSON string below
json = "{}"
# create an instance of IgnoreRuleFiltersBuildsInner from a JSON string
ignore_rule_filters_builds_inner_instance = IgnoreRuleFiltersBuildsInner.from_json(json)
# print the JSON string representation of the object
print(IgnoreRuleFiltersBuildsInner.to_json())

# convert the object into a dict
ignore_rule_filters_builds_inner_dict = ignore_rule_filters_builds_inner_instance.to_dict()
# create an instance of IgnoreRuleFiltersBuildsInner from a dict
ignore_rule_filters_builds_inner_from_dict = IgnoreRuleFiltersBuildsInner.from_dict(ignore_rule_filters_builds_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


