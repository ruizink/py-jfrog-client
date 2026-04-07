# GroupRecordResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**group_name** | **str** | Group name | [optional] 
**uri** | **str** | Group URI | [optional] 

## Example

```python
from jfrog_client.models.group_record_response import GroupRecordResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GroupRecordResponse from a JSON string
group_record_response_instance = GroupRecordResponse.from_json(json)
# print the JSON string representation of the object
print(GroupRecordResponse.to_json())

# convert the object into a dict
group_record_response_dict = group_record_response_instance.to_dict()
# create an instance of GroupRecordResponse from a dict
group_record_response_from_dict = GroupRecordResponse.from_dict(group_record_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


