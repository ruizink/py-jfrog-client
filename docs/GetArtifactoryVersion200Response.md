# GetArtifactoryVersion200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** | Artifactory version | [optional] 
**revision** | **str** | Revision number | [optional] 
**addons** | **List[str]** | List of addons | [optional] 

## Example

```python
from jfrog_client.models.get_artifactory_version200_response import GetArtifactoryVersion200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetArtifactoryVersion200Response from a JSON string
get_artifactory_version200_response_instance = GetArtifactoryVersion200Response.from_json(json)
# print the JSON string representation of the object
print(GetArtifactoryVersion200Response.to_json())

# convert the object into a dict
get_artifactory_version200_response_dict = get_artifactory_version200_response_instance.to_dict()
# create an instance of GetArtifactoryVersion200Response from a dict
get_artifactory_version200_response_from_dict = GetArtifactoryVersion200Response.from_dict(get_artifactory_version200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


