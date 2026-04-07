# DeleteReleaseBundlesRequestInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bundle_name** | **str** | The bundle name | 
**bundle_version** | **str** | The bundle version | 

## Example

```python
from jfrog_client.models.delete_release_bundles_request_inner import DeleteReleaseBundlesRequestInner

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteReleaseBundlesRequestInner from a JSON string
delete_release_bundles_request_inner_instance = DeleteReleaseBundlesRequestInner.from_json(json)
# print the JSON string representation of the object
print(DeleteReleaseBundlesRequestInner.to_json())

# convert the object into a dict
delete_release_bundles_request_inner_dict = delete_release_bundles_request_inner_instance.to_dict()
# create an instance of DeleteReleaseBundlesRequestInner from a dict
delete_release_bundles_request_inner_from_dict = DeleteReleaseBundlesRequestInner.from_dict(delete_release_bundles_request_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


