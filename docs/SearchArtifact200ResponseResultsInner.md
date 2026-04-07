# SearchArtifact200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **str** | URI of the artifact (may contain spaces) | [optional] 

## Example

```python
from jfrog_client.models.search_artifact200_response_results_inner import SearchArtifact200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchArtifact200ResponseResultsInner from a JSON string
search_artifact200_response_results_inner_instance = SearchArtifact200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchArtifact200ResponseResultsInner.to_json())

# convert the object into a dict
search_artifact200_response_results_inner_dict = search_artifact200_response_results_inner_instance.to_dict()
# create an instance of SearchArtifact200ResponseResultsInner from a dict
search_artifact200_response_results_inner_from_dict = SearchArtifact200ResponseResultsInner.from_dict(search_artifact200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


