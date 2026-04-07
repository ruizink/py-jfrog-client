# GetRepositoriesConfigurations200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo_name** | **str** |  | [optional] 
**repo_config** | [**GetRepositoriesConfigurations200ResponseRepoConfig**](GetRepositoriesConfigurations200ResponseRepoConfig.md) |  | [optional] 
**repo_paths_config** | [**GetRepositoriesConfigurations200ResponseRepoPathsConfig**](GetRepositoriesConfigurations200ResponseRepoPathsConfig.md) |  | [optional] 

## Example

```python
from jfrog_client.models.get_repositories_configurations200_response import GetRepositoriesConfigurations200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetRepositoriesConfigurations200Response from a JSON string
get_repositories_configurations200_response_instance = GetRepositoriesConfigurations200Response.from_json(json)
# print the JSON string representation of the object
print(GetRepositoriesConfigurations200Response.to_json())

# convert the object into a dict
get_repositories_configurations200_response_dict = get_repositories_configurations200_response_instance.to_dict()
# create an instance of GetRepositoriesConfigurations200Response from a dict
get_repositories_configurations200_response_from_dict = GetRepositoriesConfigurations200Response.from_dict(get_repositories_configurations200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


