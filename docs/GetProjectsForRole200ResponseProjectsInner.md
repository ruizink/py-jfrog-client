# GetProjectsForRole200ResponseProjectsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The project display name | [optional] 
**project_key** | **str** | The project key | [optional] 

## Example

```python
from jfrog_client.models.get_projects_for_role200_response_projects_inner import GetProjectsForRole200ResponseProjectsInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetProjectsForRole200ResponseProjectsInner from a JSON string
get_projects_for_role200_response_projects_inner_instance = GetProjectsForRole200ResponseProjectsInner.from_json(json)
# print the JSON string representation of the object
print(GetProjectsForRole200ResponseProjectsInner.to_json())

# convert the object into a dict
get_projects_for_role200_response_projects_inner_dict = get_projects_for_role200_response_projects_inner_instance.to_dict()
# create an instance of GetProjectsForRole200ResponseProjectsInner from a dict
get_projects_for_role200_response_projects_inner_from_dict = GetProjectsForRole200ResponseProjectsInner.from_dict(get_projects_for_role200_response_projects_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


