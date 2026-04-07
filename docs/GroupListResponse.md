# GroupListResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**groups** | [**List[GroupRecordResponse]**](GroupRecordResponse.md) |  | [optional] 
**cursor** | **str** | Pagination cursor | [optional] 

## Example

```python
from jfrog_client.models.group_list_response import GroupListResponse

# TODO update the JSON string below
json = "{}"
# create an instance of GroupListResponse from a JSON string
group_list_response_instance = GroupListResponse.from_json(json)
# print the JSON string representation of the object
print(GroupListResponse.to_json())

# convert the object into a dict
group_list_response_dict = group_list_response_instance.to_dict()
# create an instance of GroupListResponse from a dict
group_list_response_from_dict = GroupListResponse.from_dict(group_list_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


