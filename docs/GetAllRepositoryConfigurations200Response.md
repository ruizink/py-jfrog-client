# GetAllRepositoryConfigurations200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**local** | **List[object]** |  | [optional] 
**remote** | **List[object]** |  | [optional] 
**virtual** | **List[object]** |  | [optional] 
**federated** | **List[object]** |  | [optional] 
**release_bundle** | **List[object]** |  | [optional] 

## Example

```python
from jfrog_client.models.get_all_repository_configurations200_response import GetAllRepositoryConfigurations200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetAllRepositoryConfigurations200Response from a JSON string
get_all_repository_configurations200_response_instance = GetAllRepositoryConfigurations200Response.from_json(json)
# print the JSON string representation of the object
print(GetAllRepositoryConfigurations200Response.to_json())

# convert the object into a dict
get_all_repository_configurations200_response_dict = get_all_repository_configurations200_response_instance.to_dict()
# create an instance of GetAllRepositoryConfigurations200Response from a dict
get_all_repository_configurations200_response_from_dict = GetAllRepositoryConfigurations200Response.from_dict(get_all_repository_configurations200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


