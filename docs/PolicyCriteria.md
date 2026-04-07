# PolicyCriteria

Criteria that determine which issues trigger the rule. The available fields depend on the policy type. For security policies use min_severity, cvss_range, vulnerability_ids, etc. For license policies use allow_licenses, banned_licenses, etc. For operational_risk policies use op_risk_min_risk, op_risk_custom, etc. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_severity** | **str** | Minimum severity of vulnerabilities to match. Applies to security and exposures policy types.  | [optional] 
**cvss_range** | [**PolicyCvssRange**](PolicyCvssRange.md) |  | [optional] 
**vulnerability_ids** | **List[str]** | Match specific CVEs and/or XRAY IDs. A CVE identifier has the format CVE-YYYY-NNNNN, an XRAY ID has the format XRAY-NNNNNN.  | [optional] 
**fix_version_dependant** | **bool** | Only match when a fixed version is available. | [optional] 
**applicable_cves_only** | **bool** | Only match CVEs determined to be applicable by contextual analysis. | [optional] 
**malicious_package** | **bool** | Match packages identified as malicious. | [optional] 
**exposures** | [**PolicyExposures**](PolicyExposures.md) |  | [optional] 
**package_name** | **str** | Filter by specific package name. The name format varies between package types.  | [optional] 
**package_type** | **str** | Filter by package type. | [optional] 
**package_versions** | **List[str]** | Filter by specific package versions. Supports exact versions and ranges. Any version: (,). Specific version: [v1]. Ranges: (v1,v2) open interval, [v1,v2] closed interval, (v1,v2] and [v1,v2) half-open intervals.  | [optional] 
**allow_licenses** | **List[str]** | List of allowed licenses for license-type policies. Components with licenses not in this list will trigger the rule.  | [optional] 
**allowed_licenses** | **List[str]** | List of allowed licenses (alias for allow_licenses).  | [optional] 
**allow_unknown** | **bool** | Whether to allow components with unknown licenses. | [optional] 
**banned_licenses** | **List[str]** | List of banned licenses. Components with these licenses will trigger the rule.  | [optional] 
**multi_license_permissive** | **bool** | Use permissive approach for components with multiple licenses.  | [optional] 
**op_risk_min_risk** | **str** | Minimum operational risk level to match. | [optional] 
**op_risk_custom** | [**PolicyOpRiskCustom**](PolicyOpRiskCustom.md) |  | [optional] 

## Example

```python
from jfrog_client.models.policy_criteria import PolicyCriteria

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyCriteria from a JSON string
policy_criteria_instance = PolicyCriteria.from_json(json)
# print the JSON string representation of the object
print(PolicyCriteria.to_json())

# convert the object into a dict
policy_criteria_dict = policy_criteria_instance.to_dict()
# create an instance of PolicyCriteria from a dict
policy_criteria_from_dict = PolicyCriteria.from_dict(policy_criteria_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


