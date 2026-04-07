# IgnoreRuleFiltersExposures

Exposure-specific filters.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scanners** | **List[str]** | List of exposure scanner IDs (e.g., EXP-12345). | [optional] 
**categories** | **List[str]** | Exposure categories (secrets, services, applications, iac, malicious_code). | [optional] 
**file_path** | **List[str]** | Specific file paths to ignore. | [optional] 
**file_path_pattern** | **List[str]** | File path patterns to ignore. | [optional] 
**fingerprints** | **List[str]** | Exposure fingerprints to ignore. | [optional] 

## Example

```python
from jfrog_client.models.ignore_rule_filters_exposures import IgnoreRuleFiltersExposures

# TODO update the JSON string below
json = "{}"
# create an instance of IgnoreRuleFiltersExposures from a JSON string
ignore_rule_filters_exposures_instance = IgnoreRuleFiltersExposures.from_json(json)
# print the JSON string representation of the object
print(IgnoreRuleFiltersExposures.to_json())

# convert the object into a dict
ignore_rule_filters_exposures_dict = ignore_rule_filters_exposures_instance.to_dict()
# create an instance of IgnoreRuleFiltersExposures from a dict
ignore_rule_filters_exposures_from_dict = IgnoreRuleFiltersExposures.from_dict(ignore_rule_filters_exposures_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


