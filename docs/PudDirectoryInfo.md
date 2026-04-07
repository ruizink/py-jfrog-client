# PudDirectoryInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | The name of the directory that was being processed when this report was issued | [optional] 
**status** | **str** | Status relating to this directory only | [optional] 
**binaries_processed** | **int** | The number of binaries processed in this directory | [optional] 
**binaries_cleaned** | **int** | The number of binaries removed in this directory | [optional] 
**bytes_cleaned** | **int** | The number of bytes reclaimed in this directory | [optional] 
**timing** | [**PudTiming**](PudTiming.md) |  | [optional] 

## Example

```python
from jfrog_client.models.pud_directory_info import PudDirectoryInfo

# TODO update the JSON string below
json = "{}"
# create an instance of PudDirectoryInfo from a JSON string
pud_directory_info_instance = PudDirectoryInfo.from_json(json)
# print the JSON string representation of the object
print(PudDirectoryInfo.to_json())

# convert the object into a dict
pud_directory_info_dict = pud_directory_info_instance.to_dict()
# create an instance of PudDirectoryInfo from a dict
pud_directory_info_from_dict = PudDirectoryInfo.from_dict(pud_directory_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


