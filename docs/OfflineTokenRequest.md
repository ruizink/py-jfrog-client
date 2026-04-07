# OfflineTokenRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offline_request_token** | **str** | The offline request token obtained from the start register endpoint on the air-gapped JPD | [optional] 

## Example

```python
from jfrog_client.models.offline_token_request import OfflineTokenRequest

# TODO update the JSON string below
json = "{}"
# create an instance of OfflineTokenRequest from a JSON string
offline_token_request_instance = OfflineTokenRequest.from_json(json)
# print the JSON string representation of the object
print(OfflineTokenRequest.to_json())

# convert the object into a dict
offline_token_request_dict = offline_token_request_instance.to_dict()
# create an instance of OfflineTokenRequest from a dict
offline_token_request_from_dict = OfflineTokenRequest.from_dict(offline_token_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


