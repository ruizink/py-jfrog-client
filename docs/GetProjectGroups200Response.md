# GetProjectGroups200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**members** | [**List[ProjectGroup]**](ProjectGroup.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_project_groups200_response import GetProjectGroups200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetProjectGroups200Response from a JSON string
get_project_groups200_response_instance = GetProjectGroups200Response.from_json(json)
# print the JSON string representation of the object
print(GetProjectGroups200Response.to_json())

# convert the object into a dict
get_project_groups200_response_dict = get_project_groups200_response_instance.to_dict()
# create an instance of GetProjectGroups200Response from a dict
get_project_groups200_response_from_dict = GetProjectGroups200Response.from_dict(get_project_groups200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


