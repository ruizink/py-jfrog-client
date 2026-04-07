# FindParentManifestListsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**docker_repository** | **str** | Docker repository name | 
**tag** | **str** | Docker tag | 

## Example

```python
from jfrog_client.models.find_parent_manifest_lists_request import FindParentManifestListsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of FindParentManifestListsRequest from a JSON string
find_parent_manifest_lists_request_instance = FindParentManifestListsRequest.from_json(json)
# print the JSON string representation of the object
print(FindParentManifestListsRequest.to_json())

# convert the object into a dict
find_parent_manifest_lists_request_dict = find_parent_manifest_lists_request_instance.to_dict()
# create an instance of FindParentManifestListsRequest from a dict
find_parent_manifest_lists_request_from_dict = FindParentManifestListsRequest.from_dict(find_parent_manifest_lists_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


