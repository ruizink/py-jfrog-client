# UpdateGroupMembers200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**members** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.update_group_members200_response import UpdateGroupMembers200Response

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateGroupMembers200Response from a JSON string
update_group_members200_response_instance = UpdateGroupMembers200Response.from_json(json)
# print the JSON string representation of the object
print(UpdateGroupMembers200Response.to_json())

# convert the object into a dict
update_group_members200_response_dict = update_group_members200_response_instance.to_dict()
# create an instance of UpdateGroupMembers200Response from a dict
update_group_members200_response_from_dict = UpdateGroupMembers200Response.from_dict(update_group_members200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


