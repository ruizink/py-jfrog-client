# FindParentManifestLists200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**parent_manifest_lists** | [**List[FindParentManifestLists200ResponseParentManifestListsInner]**](FindParentManifestLists200ResponseParentManifestListsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.find_parent_manifest_lists200_response import FindParentManifestLists200Response

# TODO update the JSON string below
json = "{}"
# create an instance of FindParentManifestLists200Response from a JSON string
find_parent_manifest_lists200_response_instance = FindParentManifestLists200Response.from_json(json)
# print the JSON string representation of the object
print(FindParentManifestLists200Response.to_json())

# convert the object into a dict
find_parent_manifest_lists200_response_dict = find_parent_manifest_lists200_response_instance.to_dict()
# create an instance of FindParentManifestLists200Response from a dict
find_parent_manifest_lists200_response_from_dict = FindParentManifestLists200Response.from_dict(find_parent_manifest_lists200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


