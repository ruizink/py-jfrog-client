# MarkReleaseBundlesToKeepOrDontKeepRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**keep** | [**List[DeleteReleaseBundlesRequestInner]**](DeleteReleaseBundlesRequestInner.md) | List of bundles to mark as keep | [optional] 
**unkeep** | [**List[DeleteReleaseBundlesRequestInner]**](DeleteReleaseBundlesRequestInner.md) | List of bundles to unkeep | [optional] 

## Example

```python
from jfrog_client.models.mark_release_bundles_to_keep_or_dont_keep_request import MarkReleaseBundlesToKeepOrDontKeepRequest

# TODO update the JSON string below
json = "{}"
# create an instance of MarkReleaseBundlesToKeepOrDontKeepRequest from a JSON string
mark_release_bundles_to_keep_or_dont_keep_request_instance = MarkReleaseBundlesToKeepOrDontKeepRequest.from_json(json)
# print the JSON string representation of the object
print(MarkReleaseBundlesToKeepOrDontKeepRequest.to_json())

# convert the object into a dict
mark_release_bundles_to_keep_or_dont_keep_request_dict = mark_release_bundles_to_keep_or_dont_keep_request_instance.to_dict()
# create an instance of MarkReleaseBundlesToKeepOrDontKeepRequest from a dict
mark_release_bundles_to_keep_or_dont_keep_request_from_dict = MarkReleaseBundlesToKeepOrDontKeepRequest.from_dict(mark_release_bundles_to_keep_or_dont_keep_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


