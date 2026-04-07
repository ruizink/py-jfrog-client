# StorageSummaryInfo


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**binaries_summary** | [**BinariesSummary**](BinariesSummary.md) |  | [optional] 
**file_store_summary** | [**FileStoreSummary**](FileStoreSummary.md) |  | [optional] 
**repositories_summary_list** | [**List[RepositorySummary]**](RepositorySummary.md) |  | [optional] 

## Example

```python
from jfrog_client.models.storage_summary_info import StorageSummaryInfo

# TODO update the JSON string below
json = "{}"
# create an instance of StorageSummaryInfo from a JSON string
storage_summary_info_instance = StorageSummaryInfo.from_json(json)
# print the JSON string representation of the object
print(StorageSummaryInfo.to_json())

# convert the object into a dict
storage_summary_info_dict = storage_summary_info_instance.to_dict()
# create an instance of StorageSummaryInfo from a dict
storage_summary_info_from_dict = StorageSummaryInfo.from_dict(storage_summary_info_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


