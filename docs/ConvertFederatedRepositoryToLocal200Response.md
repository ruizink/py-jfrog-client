# ConvertFederatedRepositoryToLocal200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**failed_conversion_repositories** | **Dict[str, str]** |  | [optional] 

## Example

```python
from jfrog_client.models.convert_federated_repository_to_local200_response import ConvertFederatedRepositoryToLocal200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ConvertFederatedRepositoryToLocal200Response from a JSON string
convert_federated_repository_to_local200_response_instance = ConvertFederatedRepositoryToLocal200Response.from_json(json)
# print the JSON string representation of the object
print(ConvertFederatedRepositoryToLocal200Response.to_json())

# convert the object into a dict
convert_federated_repository_to_local200_response_dict = convert_federated_repository_to_local200_response_instance.to_dict()
# create an instance of ConvertFederatedRepositoryToLocal200Response from a dict
convert_federated_repository_to_local200_response_from_dict = ConvertFederatedRepositoryToLocal200Response.from_dict(convert_federated_repository_to_local200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


