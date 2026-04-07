# BinariesSummary


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**binaries_count** | **str** |  | [optional] 
**binaries_size** | **str** |  | [optional] 
**artifacts_size** | **str** |  | [optional] 
**optimization** | **str** |  | [optional] 
**items_count** | **str** |  | [optional] 
**artifacts_count** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.binaries_summary import BinariesSummary

# TODO update the JSON string below
json = "{}"
# create an instance of BinariesSummary from a JSON string
binaries_summary_instance = BinariesSummary.from_json(json)
# print the JSON string representation of the object
print(BinariesSummary.to_json())

# convert the object into a dict
binaries_summary_dict = binaries_summary_instance.to_dict()
# create an instance of BinariesSummary from a dict
binaries_summary_from_dict = BinariesSummary.from_dict(binaries_summary_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


