# GetIgnoredViolations200ResponseViolationsInnerExtendedInformation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**short_description** | **str** |  | 
**full_description** | **str** |  | 
**jfrog_research_severity** | **str** |  | 
**jfrog_research_severity_reasons** | [**List[GetIgnoredViolations200ResponseViolationsInnerExtendedInformationJfrogResearchSeverityReasonsInner]**](GetIgnoredViolations200ResponseViolationsInnerExtendedInformationJfrogResearchSeverityReasonsInner.md) |  | 
**remediation** | **str** |  | 

## Example

```python
from jfrog_client.models.get_ignored_violations200_response_violations_inner_extended_information import GetIgnoredViolations200ResponseViolationsInnerExtendedInformation

# TODO update the JSON string below
json = "{}"
# create an instance of GetIgnoredViolations200ResponseViolationsInnerExtendedInformation from a JSON string
get_ignored_violations200_response_violations_inner_extended_information_instance = GetIgnoredViolations200ResponseViolationsInnerExtendedInformation.from_json(json)
# print the JSON string representation of the object
print(GetIgnoredViolations200ResponseViolationsInnerExtendedInformation.to_json())

# convert the object into a dict
get_ignored_violations200_response_violations_inner_extended_information_dict = get_ignored_violations200_response_violations_inner_extended_information_instance.to_dict()
# create an instance of GetIgnoredViolations200ResponseViolationsInnerExtendedInformation from a dict
get_ignored_violations200_response_violations_inner_extended_information_from_dict = GetIgnoredViolations200ResponseViolationsInnerExtendedInformation.from_dict(get_ignored_violations200_response_violations_inner_extended_information_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


