# CopyOrMoveMessage


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**level** | **str** |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.copy_or_move_message import CopyOrMoveMessage

# TODO update the JSON string below
json = "{}"
# create an instance of CopyOrMoveMessage from a JSON string
copy_or_move_message_instance = CopyOrMoveMessage.from_json(json)
# print the JSON string representation of the object
print(CopyOrMoveMessage.to_json())

# convert the object into a dict
copy_or_move_message_dict = copy_or_move_message_instance.to_dict()
# create an instance of CopyOrMoveMessage from a dict
copy_or_move_message_from_dict = CopyOrMoveMessage.from_dict(copy_or_move_message_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


