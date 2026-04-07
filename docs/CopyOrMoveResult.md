# CopyOrMoveResult


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**messages** | [**List[CopyOrMoveMessage]**](CopyOrMoveMessage.md) |  | [optional] 

## Example

```python
from jfrog_client.models.copy_or_move_result import CopyOrMoveResult

# TODO update the JSON string below
json = "{}"
# create an instance of CopyOrMoveResult from a JSON string
copy_or_move_result_instance = CopyOrMoveResult.from_json(json)
# print the JSON string representation of the object
print(CopyOrMoveResult.to_json())

# convert the object into a dict
copy_or_move_result_dict = copy_or_move_result_instance.to_dict()
# create an instance of CopyOrMoveResult from a dict
copy_or_move_result_from_dict = CopyOrMoveResult.from_dict(copy_or_move_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


