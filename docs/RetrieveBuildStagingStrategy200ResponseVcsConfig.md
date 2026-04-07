# RetrieveBuildStagingStrategy200ResponseVcsConfig


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**use_release_branch** | **bool** |  | [optional] 
**release_branch_name** | **str** |  | [optional] 
**create_tag** | **bool** |  | [optional] 
**tag_url_or_name** | **str** |  | [optional] 
**tag_comment** | **str** |  | [optional] 
**next_development_version_comment** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.retrieve_build_staging_strategy200_response_vcs_config import RetrieveBuildStagingStrategy200ResponseVcsConfig

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveBuildStagingStrategy200ResponseVcsConfig from a JSON string
retrieve_build_staging_strategy200_response_vcs_config_instance = RetrieveBuildStagingStrategy200ResponseVcsConfig.from_json(json)
# print the JSON string representation of the object
print(RetrieveBuildStagingStrategy200ResponseVcsConfig.to_json())

# convert the object into a dict
retrieve_build_staging_strategy200_response_vcs_config_dict = retrieve_build_staging_strategy200_response_vcs_config_instance.to_dict()
# create an instance of RetrieveBuildStagingStrategy200ResponseVcsConfig from a dict
retrieve_build_staging_strategy200_response_vcs_config_from_dict = RetrieveBuildStagingStrategy200ResponseVcsConfig.from_dict(retrieve_build_staging_strategy200_response_vcs_config_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


