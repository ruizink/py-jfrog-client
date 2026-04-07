# GetProjectUsers200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**members** | [**List[ProjectUser]**](ProjectUser.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_project_users200_response import GetProjectUsers200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetProjectUsers200Response from a JSON string
get_project_users200_response_instance = GetProjectUsers200Response.from_json(json)
# print the JSON string representation of the object
print(GetProjectUsers200Response.to_json())

# convert the object into a dict
get_project_users200_response_dict = get_project_users200_response_instance.to_dict()
# create an instance of GetProjectUsers200Response from a dict
get_project_users200_response_from_dict = GetProjectUsers200Response.from_dict(get_project_users200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


