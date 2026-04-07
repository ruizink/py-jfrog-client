# RetrieveBuildStagingStrategy200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_module_version** | [**RetrieveBuildStagingStrategy200ResponseDefaultModuleVersion**](RetrieveBuildStagingStrategy200ResponseDefaultModuleVersion.md) |  | [optional] 
**vcs_config** | [**RetrieveBuildStagingStrategy200ResponseVcsConfig**](RetrieveBuildStagingStrategy200ResponseVcsConfig.md) |  | [optional] 
**promotion_config** | [**RetrieveBuildStagingStrategy200ResponsePromotionConfig**](RetrieveBuildStagingStrategy200ResponsePromotionConfig.md) |  | [optional] 

## Example

```python
from jfrog_client.models.retrieve_build_staging_strategy200_response import RetrieveBuildStagingStrategy200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveBuildStagingStrategy200Response from a JSON string
retrieve_build_staging_strategy200_response_instance = RetrieveBuildStagingStrategy200Response.from_json(json)
# print the JSON string representation of the object
print(RetrieveBuildStagingStrategy200Response.to_json())

# convert the object into a dict
retrieve_build_staging_strategy200_response_dict = retrieve_build_staging_strategy200_response_instance.to_dict()
# create an instance of RetrieveBuildStagingStrategy200Response from a dict
retrieve_build_staging_strategy200_response_from_dict = RetrieveBuildStagingStrategy200Response.from_dict(retrieve_build_staging_strategy200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


