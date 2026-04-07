# FindCvesByComponentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**components_id** | **List[str]** |  | 

## Example

```python
from jfrog_client.models.find_cves_by_component_request import FindCvesByComponentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of FindCvesByComponentRequest from a JSON string
find_cves_by_component_request_instance = FindCvesByComponentRequest.from_json(json)
# print the JSON string representation of the object
print(FindCvesByComponentRequest.to_json())

# convert the object into a dict
find_cves_by_component_request_dict = find_cves_by_component_request_instance.to_dict()
# create an instance of FindCvesByComponentRequest from a dict
find_cves_by_component_request_from_dict = FindCvesByComponentRequest.from_dict(find_cves_by_component_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


