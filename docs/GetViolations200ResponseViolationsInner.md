# GetViolations200ResponseViolationsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | 
**severity** | **str** |  | 
**type** | **str** |  | 
**infected_components** | **List[str]** |  | 
**created** | **str** |  | 
**watch_name** | **str** |  | 
**issue_id** | **str** |  | 
**violation_details_url** | **str** |  | 
**impacted_artifacts** | **List[str]** |  | 
**applicability** | **object** |  | [optional] 

## Example

```python
from jfrog_client.models.get_violations200_response_violations_inner import GetViolations200ResponseViolationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetViolations200ResponseViolationsInner from a JSON string
get_violations200_response_violations_inner_instance = GetViolations200ResponseViolationsInner.from_json(json)
# print the JSON string representation of the object
print(GetViolations200ResponseViolationsInner.to_json())

# convert the object into a dict
get_violations200_response_violations_inner_dict = get_violations200_response_violations_inner_instance.to_dict()
# create an instance of GetViolations200ResponseViolationsInner from a dict
get_violations200_response_violations_inner_from_dict = GetViolations200ResponseViolationsInner.from_dict(get_violations200_response_violations_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


