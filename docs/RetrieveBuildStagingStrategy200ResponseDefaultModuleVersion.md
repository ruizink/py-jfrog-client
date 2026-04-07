# RetrieveBuildStagingStrategy200ResponseDefaultModuleVersion


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**module_id** | **str** |  | [optional] 
**next_release** | **str** |  | [optional] 
**next_development** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.retrieve_build_staging_strategy200_response_default_module_version import RetrieveBuildStagingStrategy200ResponseDefaultModuleVersion

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveBuildStagingStrategy200ResponseDefaultModuleVersion from a JSON string
retrieve_build_staging_strategy200_response_default_module_version_instance = RetrieveBuildStagingStrategy200ResponseDefaultModuleVersion.from_json(json)
# print the JSON string representation of the object
print(RetrieveBuildStagingStrategy200ResponseDefaultModuleVersion.to_json())

# convert the object into a dict
retrieve_build_staging_strategy200_response_default_module_version_dict = retrieve_build_staging_strategy200_response_default_module_version_instance.to_dict()
# create an instance of RetrieveBuildStagingStrategy200ResponseDefaultModuleVersion from a dict
retrieve_build_staging_strategy200_response_default_module_version_from_dict = RetrieveBuildStagingStrategy200ResponseDefaultModuleVersion.from_dict(retrieve_build_staging_strategy200_response_default_module_version_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


