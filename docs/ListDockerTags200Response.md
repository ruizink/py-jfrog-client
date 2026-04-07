# ListDockerTags200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**tags** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.list_docker_tags200_response import ListDockerTags200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ListDockerTags200Response from a JSON string
list_docker_tags200_response_instance = ListDockerTags200Response.from_json(json)
# print the JSON string representation of the object
print(ListDockerTags200Response.to_json())

# convert the object into a dict
list_docker_tags200_response_dict = list_docker_tags200_response_instance.to_dict()
# create an instance of ListDockerTags200Response from a dict
list_docker_tags200_response_from_dict = ListDockerTags200Response.from_dict(list_docker_tags200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


