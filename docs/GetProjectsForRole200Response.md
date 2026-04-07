# GetProjectsForRole200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**projects** | [**List[GetProjectsForRole200ResponseProjectsInner]**](GetProjectsForRole200ResponseProjectsInner.md) |  | [optional] 
**cursor** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_projects_for_role200_response import GetProjectsForRole200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetProjectsForRole200Response from a JSON string
get_projects_for_role200_response_instance = GetProjectsForRole200Response.from_json(json)
# print the JSON string representation of the object
print(GetProjectsForRole200Response.to_json())

# convert the object into a dict
get_projects_for_role200_response_dict = get_projects_for_role200_response_instance.to_dict()
# create an instance of GetProjectsForRole200Response from a dict
get_projects_for_role200_response_from_dict = GetProjectsForRole200Response.from_dict(get_projects_for_role200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


