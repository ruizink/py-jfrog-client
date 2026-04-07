# IgnoreRuleFilters

Filters that define what to ignore. Combine objective filters (what issue type) with optional scope filters (where to apply). At least one objective filter is required. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vulnerabilities** | **List[str]** | List of vulnerability IDs (XRAY-nnnnn) to ignore. Use [\&quot;any\&quot;] to ignore all vulnerabilities.  | [optional] 
**cves** | **List[str]** | List of CVE IDs to ignore. Use [\&quot;any\&quot;] to ignore all CVEs.  | [optional] 
**licenses** | **List[str]** | List of license names to ignore. Use [\&quot;any\&quot;] to ignore all licenses.  | [optional] 
**operational_risk** | **List[str]** | List of operational risk identifiers. Use [\&quot;any\&quot;] to ignore all.  | [optional] 
**exposures** | [**IgnoreRuleFiltersExposures**](IgnoreRuleFiltersExposures.md) |  | [optional] 
**policies** | **List[str]** | Scope filter - list of policy names. | [optional] 
**watches** | **List[str]** | Scope filter - list of watch names. | [optional] 
**projects** | **List[str]** | Scope filter - list of project keys. | [optional] 
**components** | [**List[IgnoreRuleFiltersComponentsInner]**](IgnoreRuleFiltersComponentsInner.md) | Scope filter - list of components (name required, version optional). | [optional] 
**artifacts** | [**List[IgnoreRuleFiltersArtifactsInner]**](IgnoreRuleFiltersArtifactsInner.md) | Scope filter - list of artifacts (name required, version/path optional). | [optional] 
**builds** | [**List[IgnoreRuleFiltersBuildsInner]**](IgnoreRuleFiltersBuildsInner.md) | Scope filter - list of builds (name required, version/project optional). | [optional] 
**release_bundles** | [**List[ListIgnoredViolationsRequestComponentsInner]**](ListIgnoredViolationsRequestComponentsInner.md) | Scope filter - list of release bundles (name required, version optional). | [optional] 
**release_bundles_v2** | [**List[ListIgnoredViolationsRequestComponentsInner]**](ListIgnoredViolationsRequestComponentsInner.md) | Scope filter - list of v2 release bundles. | [optional] 
**docker_layers** | **List[str]** | Scope filter - list of Docker layer SHA256 hashes. | [optional] 
**git_repositories** | **List[str]** | Scope filter - list of git repository names. | [optional] 

## Example

```python
from jfrog_client.models.ignore_rule_filters import IgnoreRuleFilters

# TODO update the JSON string below
json = "{}"
# create an instance of IgnoreRuleFilters from a JSON string
ignore_rule_filters_instance = IgnoreRuleFilters.from_json(json)
# print the JSON string representation of the object
print(IgnoreRuleFilters.to_json())

# convert the object into a dict
ignore_rule_filters_dict = ignore_rule_filters_instance.to_dict()
# create an instance of IgnoreRuleFilters from a dict
ignore_rule_filters_from_dict = IgnoreRuleFilters.from_dict(ignore_rule_filters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


