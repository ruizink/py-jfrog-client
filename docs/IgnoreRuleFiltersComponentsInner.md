# IgnoreRuleFiltersComponentsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Component identifier (e.g., docker://alpine, npm://lodash). | [optional] 
**version** | **str** | Component version. Omit to match all versions. | [optional] 

## Example

```python
from jfrog_client.models.ignore_rule_filters_components_inner import IgnoreRuleFiltersComponentsInner

# TODO update the JSON string below
json = "{}"
# create an instance of IgnoreRuleFiltersComponentsInner from a JSON string
ignore_rule_filters_components_inner_instance = IgnoreRuleFiltersComponentsInner.from_json(json)
# print the JSON string representation of the object
print(IgnoreRuleFiltersComponentsInner.to_json())

# convert the object into a dict
ignore_rule_filters_components_inner_dict = ignore_rule_filters_components_inner_instance.to_dict()
# create an instance of IgnoreRuleFiltersComponentsInner from a dict
ignore_rule_filters_components_inner_from_dict = IgnoreRuleFiltersComponentsInner.from_dict(ignore_rule_filters_components_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


