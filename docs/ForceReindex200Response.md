# ForceReindex200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sent_to_reindex** | [**ForceReindex200ResponseSentToReindex**](ForceReindex200ResponseSentToReindex.md) |  | [optional] 
**failed_send_to_reindex** | [**ForceReindex200ResponseFailedSendToReindex**](ForceReindex200ResponseFailedSendToReindex.md) |  | [optional] 

## Example

```python
from jfrog_client.models.force_reindex200_response import ForceReindex200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ForceReindex200Response from a JSON string
force_reindex200_response_instance = ForceReindex200Response.from_json(json)
# print the JSON string representation of the object
print(ForceReindex200Response.to_json())

# convert the object into a dict
force_reindex200_response_dict = force_reindex200_response_instance.to_dict()
# create an instance of ForceReindex200Response from a dict
force_reindex200_response_from_dict = ForceReindex200Response.from_dict(force_reindex200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


