# SearchGavc200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** | URI of the artifact (may contain spaces) | [optional] 
**download_uri** | **str** |  | [optional] 
**ext** | **str** |  | [optional] 
**version** | **str** |  | [optional] 
**classifier** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.search_gavc200_response_results_inner import SearchGavc200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGavc200ResponseResultsInner from a JSON string
search_gavc200_response_results_inner_instance = SearchGavc200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchGavc200ResponseResultsInner.to_json())

# convert the object into a dict
search_gavc200_response_results_inner_dict = search_gavc200_response_results_inner_instance.to_dict()
# create an instance of SearchGavc200ResponseResultsInner from a dict
search_gavc200_response_results_inner_from_dict = SearchGavc200ResponseResultsInner.from_dict(search_gavc200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


