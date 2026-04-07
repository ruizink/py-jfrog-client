# CheckIfRepositoryExists200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**exists** | **bool** |  | [optional] 
**matching_repo_types** | **List[str]** |  | [optional] 
**project_key** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.check_if_repository_exists200_response import CheckIfRepositoryExists200Response

# TODO update the JSON string below
json = "{}"
# create an instance of CheckIfRepositoryExists200Response from a JSON string
check_if_repository_exists200_response_instance = CheckIfRepositoryExists200Response.from_json(json)
# print the JSON string representation of the object
print(CheckIfRepositoryExists200Response.to_json())

# convert the object into a dict
check_if_repository_exists200_response_dict = check_if_repository_exists200_response_instance.to_dict()
# create an instance of CheckIfRepositoryExists200Response from a dict
check_if_repository_exists200_response_from_dict = CheckIfRepositoryExists200Response.from_dict(check_if_repository_exists200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


