# TokenListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tokens** | [**List[TokenDetails]**](TokenDetails.md) |  | [optional] 

## Example

```python
from jfrog_client.models.token_list_response import TokenListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of TokenListResponse from a JSON string
token_list_response_instance = TokenListResponse.from_json(json)
# print the JSON string representation of the object
print(TokenListResponse.to_json())

# convert the object into a dict
token_list_response_dict = token_list_response_instance.to_dict()
# create an instance of TokenListResponse from a dict
token_list_response_from_dict = TokenListResponse.from_dict(token_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


