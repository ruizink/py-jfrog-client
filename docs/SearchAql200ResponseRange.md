# SearchAql200ResponseRange


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_pos** | **int** |  | [optional] 
**end_pos** | **int** |  | [optional] 
**total** | **int** |  | [optional] 
**limit** | **int** |  | [optional] 
**notification** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.search_aql200_response_range import SearchAql200ResponseRange

# TODO update the JSON string below
json = "{}"
# create an instance of SearchAql200ResponseRange from a JSON string
search_aql200_response_range_instance = SearchAql200ResponseRange.from_json(json)
# print the JSON string representation of the object
print(SearchAql200ResponseRange.to_json())

# convert the object into a dict
search_aql200_response_range_dict = search_aql200_response_range_instance.to_dict()
# create an instance of SearchAql200ResponseRange from a dict
search_aql200_response_range_from_dict = SearchAql200ResponseRange.from_dict(search_aql200_response_range_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


