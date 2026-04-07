# IgnoreRuleApiResponse

An ignore rule as returned by the GET endpoints.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | Unique external identifier of the ignore rule. | [optional] 
**author** | **str** | User who created the rule. | [optional] 
**created** | **datetime** | Timestamp when the rule was created (RFC 3339). | [optional] 
**notes** | **str** | Free-text note explaining the rule. | [optional] 
**is_expired** | **bool** | Whether the rule has expired. | [optional] 
**expires_at** | **datetime** | Expiration date, if set (RFC 3339). | [optional] 
**project_key** | **str** | Project key if the rule is project-scoped. | [optional] 
**deleted_by** | **str** | User who deleted the rule (if soft-deleted). | [optional] 
**deleted_at** | **datetime** | Timestamp when the rule was deleted (if soft-deleted). | [optional] 
**ignore_filters** | [**IgnoreRuleFilters**](IgnoreRuleFilters.md) |  | [optional] 

## Example

```python
from jfrog_client.models.ignore_rule_api_response import IgnoreRuleApiResponse

# TODO update the JSON string below
json = "{}"
# create an instance of IgnoreRuleApiResponse from a JSON string
ignore_rule_api_response_instance = IgnoreRuleApiResponse.from_json(json)
# print the JSON string representation of the object
print(IgnoreRuleApiResponse.to_json())

# convert the object into a dict
ignore_rule_api_response_dict = ignore_rule_api_response_instance.to_dict()
# create an instance of IgnoreRuleApiResponse from a dict
ignore_rule_api_response_from_dict = IgnoreRuleApiResponse.from_dict(ignore_rule_api_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


