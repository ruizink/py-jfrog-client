# GetAllAccessFederations200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**targets** | [**List[FederationTarget]**](FederationTarget.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_all_access_federations200_response import GetAllAccessFederations200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetAllAccessFederations200Response from a JSON string
get_all_access_federations200_response_instance = GetAllAccessFederations200Response.from_json(json)
# print the JSON string representation of the object
print(GetAllAccessFederations200Response.to_json())

# convert the object into a dict
get_all_access_federations200_response_dict = get_all_access_federations200_response_instance.to_dict()
# create an instance of GetAllAccessFederations200Response from a dict
get_all_access_federations200_response_from_dict = GetAllAccessFederations200Response.from_dict(get_all_access_federations200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


