# FindParentManifestLists200ResponseParentManifestListsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**docker_repository** | **str** |  | [optional] 
**digest** | **str** |  | [optional] 
**tags** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.find_parent_manifest_lists200_response_parent_manifest_lists_inner import FindParentManifestLists200ResponseParentManifestListsInner

# TODO update the JSON string below
json = "{}"
# create an instance of FindParentManifestLists200ResponseParentManifestListsInner from a JSON string
find_parent_manifest_lists200_response_parent_manifest_lists_inner_instance = FindParentManifestLists200ResponseParentManifestListsInner.from_json(json)
# print the JSON string representation of the object
print(FindParentManifestLists200ResponseParentManifestListsInner.to_json())

# convert the object into a dict
find_parent_manifest_lists200_response_parent_manifest_lists_inner_dict = find_parent_manifest_lists200_response_parent_manifest_lists_inner_instance.to_dict()
# create an instance of FindParentManifestLists200ResponseParentManifestListsInner from a dict
find_parent_manifest_lists200_response_parent_manifest_lists_inner_from_dict = FindParentManifestLists200ResponseParentManifestListsInner.from_dict(find_parent_manifest_lists200_response_parent_manifest_lists_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


