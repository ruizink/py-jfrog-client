# FindComponentByCve200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cve_details** | **str** |  | 
**components** | [**List[FindComponentByCve200ResponseInnerComponentsInner]**](FindComponentByCve200ResponseInnerComponentsInner.md) |  | 

## Example

```python
from jfrog_client.models.find_component_by_cve200_response_inner import FindComponentByCve200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of FindComponentByCve200ResponseInner from a JSON string
find_component_by_cve200_response_inner_instance = FindComponentByCve200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(FindComponentByCve200ResponseInner.to_json())

# convert the object into a dict
find_component_by_cve200_response_inner_dict = find_component_by_cve200_response_inner_instance.to_dict()
# create an instance of FindComponentByCve200ResponseInner from a dict
find_component_by_cve200_response_inner_from_dict = FindComponentByCve200ResponseInner.from_dict(find_component_by_cve200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


