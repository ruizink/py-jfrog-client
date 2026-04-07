# FindCvesByComponent200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**component** | **str** |  | 
**cves** | **List[str]** |  | 

## Example

```python
from jfrog_client.models.find_cves_by_component200_response_inner import FindCvesByComponent200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of FindCvesByComponent200ResponseInner from a JSON string
find_cves_by_component200_response_inner_instance = FindCvesByComponent200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(FindCvesByComponent200ResponseInner.to_json())

# convert the object into a dict
find_cves_by_component200_response_inner_dict = find_cves_by_component200_response_inner_instance.to_dict()
# create an instance of FindCvesByComponent200ResponseInner from a dict
find_cves_by_component200_response_inner_from_dict = FindCvesByComponent200ResponseInner.from_dict(find_cves_by_component200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


