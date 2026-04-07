# ApplyWatchOnExistingContentRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**watch_names** | **List[str]** | List of watch names to apply. | 
**date_range** | [**ApplyWatchOnExistingContentRequestDateRange**](ApplyWatchOnExistingContentRequestDateRange.md) |  | 

## Example

```python
from jfrog_client.models.apply_watch_on_existing_content_request import ApplyWatchOnExistingContentRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ApplyWatchOnExistingContentRequest from a JSON string
apply_watch_on_existing_content_request_instance = ApplyWatchOnExistingContentRequest.from_json(json)
# print the JSON string representation of the object
print(ApplyWatchOnExistingContentRequest.to_json())

# convert the object into a dict
apply_watch_on_existing_content_request_dict = apply_watch_on_existing_content_request_instance.to_dict()
# create an instance of ApplyWatchOnExistingContentRequest from a dict
apply_watch_on_existing_content_request_from_dict = ApplyWatchOnExistingContentRequest.from_dict(apply_watch_on_existing_content_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


