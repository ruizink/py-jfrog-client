# FindComponentByCveRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cves** | **List[str]** |  | 

## Example

```python
from jfrog_client.models.find_component_by_cve_request import FindComponentByCveRequest

# TODO update the JSON string below
json = "{}"
# create an instance of FindComponentByCveRequest from a JSON string
find_component_by_cve_request_instance = FindComponentByCveRequest.from_json(json)
# print the JSON string representation of the object
print(FindComponentByCveRequest.to_json())

# convert the object into a dict
find_component_by_cve_request_dict = find_component_by_cve_request_instance.to_dict()
# create an instance of FindComponentByCveRequest from a dict
find_component_by_cve_request_from_dict = FindComponentByCveRequest.from_dict(find_component_by_cve_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


