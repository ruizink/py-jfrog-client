# ArchiveMapping


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**input** | **str** | Regexp pattern to search by | [optional] 
**output** | **str** | Optionally provide different path of the found artifacts inside the result archive, supports regexp groups tokens | [optional] 

## Example

```python
from jfrog_client.models.archive_mapping import ArchiveMapping

# TODO update the JSON string below
json = "{}"
# create an instance of ArchiveMapping from a JSON string
archive_mapping_instance = ArchiveMapping.from_json(json)
# print the JSON string representation of the object
print(ArchiveMapping.to_json())

# convert the object into a dict
archive_mapping_dict = archive_mapping_instance.to_dict()
# create an instance of ArchiveMapping from a dict
archive_mapping_from_dict = ArchiveMapping.from_dict(archive_mapping_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


