# SearchLicense200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** | URI of the artifact (may contain spaces) | [optional] 
**license** | **str** |  | [optional] 
**found** | **str** |  | [optional] 
**status** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.search_license200_response_results_inner import SearchLicense200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchLicense200ResponseResultsInner from a JSON string
search_license200_response_results_inner_instance = SearchLicense200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchLicense200ResponseResultsInner.to_json())

# convert the object into a dict
search_license200_response_results_inner_dict = search_license200_response_results_inner_instance.to_dict()
# create an instance of SearchLicense200ResponseResultsInner from a dict
search_license200_response_results_inner_from_dict = SearchLicense200ResponseResultsInner.from_dict(search_license200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


