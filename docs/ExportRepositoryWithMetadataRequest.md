# ExportRepositoryWithMetadataRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **str** | The action type | 
**path** | **str** | The location on the artifactory server where the repository will be exported to | 
**repository** | **str** | The repository you want to export | 
**exclude_metadata** | **bool** | false includes metadata, true excludes metadata | [optional] [default to False]
**m2** | **bool** | This parameter is specific to Maven repositories and indicates whether the output should be formatted for Maven 2. Setting it to true adjusts the export to be compatible with Maven 2 expectations. | [optional] 
**verbose** | **bool** | Verbose mode | [optional] 

## Example

```python
from jfrog_client.models.export_repository_with_metadata_request import ExportRepositoryWithMetadataRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ExportRepositoryWithMetadataRequest from a JSON string
export_repository_with_metadata_request_instance = ExportRepositoryWithMetadataRequest.from_json(json)
# print the JSON string representation of the object
print(ExportRepositoryWithMetadataRequest.to_json())

# convert the object into a dict
export_repository_with_metadata_request_dict = export_repository_with_metadata_request_instance.to_dict()
# create an instance of ExportRepositoryWithMetadataRequest from a dict
export_repository_with_metadata_request_from_dict = ExportRepositoryWithMetadataRequest.from_dict(export_repository_with_metadata_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


