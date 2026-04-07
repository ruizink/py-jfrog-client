# GetUnavailableMirrors200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**local_repo_key** | **str** |  | [optional] 
**remote_url** | **str** |  | [optional] 
**remote_repo_key** | **str** |  | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_unavailable_mirrors200_response_inner import GetUnavailableMirrors200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetUnavailableMirrors200ResponseInner from a JSON string
get_unavailable_mirrors200_response_inner_instance = GetUnavailableMirrors200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(GetUnavailableMirrors200ResponseInner.to_json())

# convert the object into a dict
get_unavailable_mirrors200_response_inner_dict = get_unavailable_mirrors200_response_inner_instance.to_dict()
# create an instance of GetUnavailableMirrors200ResponseInner from a dict
get_unavailable_mirrors200_response_inner_from_dict = GetUnavailableMirrors200ResponseInner.from_dict(get_unavailable_mirrors200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


