# ListSupportBundles200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bundles** | [**List[ListSupportBundles200ResponseBundlesInner]**](ListSupportBundles200ResponseBundlesInner.md) |  | [optional] 
**count** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.list_support_bundles200_response import ListSupportBundles200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ListSupportBundles200Response from a JSON string
list_support_bundles200_response_instance = ListSupportBundles200Response.from_json(json)
# print the JSON string representation of the object
print(ListSupportBundles200Response.to_json())

# convert the object into a dict
list_support_bundles200_response_dict = list_support_bundles200_response_instance.to_dict()
# create an instance of ListSupportBundles200Response from a dict
list_support_bundles200_response_from_dict = ListSupportBundles200Response.from_dict(list_support_bundles200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


