# TokenDetails


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token_id** | **str** |  | [optional] 
**subject** | **str** |  | [optional] 
**expiry** | **int** |  | [optional] 
**issued_at** | **int** |  | [optional] 
**issuer** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**refreshable** | **bool** |  | [optional] 
**scope** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.token_details import TokenDetails

# TODO update the JSON string below
json = "{}"
# create an instance of TokenDetails from a JSON string
token_details_instance = TokenDetails.from_json(json)
# print the JSON string representation of the object
print(TokenDetails.to_json())

# convert the object into a dict
token_details_dict = token_details_instance.to_dict()
# create an instance of TokenDetails from a dict
token_details_from_dict = TokenDetails.from_dict(token_details_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


