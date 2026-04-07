# SearchDates200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[SearchDates200ResponseResultsInner]**](SearchDates200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from jfrog_client.models.search_dates200_response import SearchDates200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchDates200Response from a JSON string
search_dates200_response_instance = SearchDates200Response.from_json(json)
# print the JSON string representation of the object
print(SearchDates200Response.to_json())

# convert the object into a dict
search_dates200_response_dict = search_dates200_response_instance.to_dict()
# create an instance of SearchDates200Response from a dict
search_dates200_response_from_dict = SearchDates200Response.from_dict(search_dates200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


