# ListDockerRepositories200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repositories** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.list_docker_repositories200_response import ListDockerRepositories200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ListDockerRepositories200Response from a JSON string
list_docker_repositories200_response_instance = ListDockerRepositories200Response.from_json(json)
# print the JSON string representation of the object
print(ListDockerRepositories200Response.to_json())

# convert the object into a dict
list_docker_repositories200_response_dict = list_docker_repositories200_response_instance.to_dict()
# create an instance of ListDockerRepositories200Response from a dict
list_docker_repositories200_response_from_dict = ListDockerRepositories200Response.from_dict(list_docker_repositories200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


