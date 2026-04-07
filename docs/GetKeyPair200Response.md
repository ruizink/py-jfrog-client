# GetKeyPair200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pair_name** | **str** |  | [optional] 
**pair_type** | **str** |  | [optional] 
**alias** | **str** |  | [optional] 
**public_key** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_key_pair200_response import GetKeyPair200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetKeyPair200Response from a JSON string
get_key_pair200_response_instance = GetKeyPair200Response.from_json(json)
# print the JSON string representation of the object
print(GetKeyPair200Response.to_json())

# convert the object into a dict
get_key_pair200_response_dict = get_key_pair200_response_instance.to_dict()
# create an instance of GetKeyPair200Response from a dict
get_key_pair200_response_from_dict = GetKeyPair200Response.from_dict(get_key_pair200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


