# SearchVersions200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**version** | **str** |  | [optional] 
**integration** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.search_versions200_response_results_inner import SearchVersions200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchVersions200ResponseResultsInner from a JSON string
search_versions200_response_results_inner_instance = SearchVersions200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchVersions200ResponseResultsInner.to_json())

# convert the object into a dict
search_versions200_response_results_inner_dict = search_versions200_response_results_inner_instance.to_dict()
# create an instance of SearchVersions200ResponseResultsInner from a dict
search_versions200_response_results_inner_from_dict = SearchVersions200ResponseResultsInner.from_dict(search_versions200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


