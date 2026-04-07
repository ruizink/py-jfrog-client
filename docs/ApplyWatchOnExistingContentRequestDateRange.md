# ApplyWatchOnExistingContentRequestDateRange

Date range to filter which content the watches are applied to.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start_date** | **datetime** | Start date in ISO 8601 format. | 
**end_date** | **datetime** | End date in ISO 8601 format. | 

## Example

```python
from jfrog_client.models.apply_watch_on_existing_content_request_date_range import ApplyWatchOnExistingContentRequestDateRange

# TODO update the JSON string below
json = "{}"
# create an instance of ApplyWatchOnExistingContentRequestDateRange from a JSON string
apply_watch_on_existing_content_request_date_range_instance = ApplyWatchOnExistingContentRequestDateRange.from_json(json)
# print the JSON string representation of the object
print(ApplyWatchOnExistingContentRequestDateRange.to_json())

# convert the object into a dict
apply_watch_on_existing_content_request_date_range_dict = apply_watch_on_existing_content_request_date_range_instance.to_dict()
# create an instance of ApplyWatchOnExistingContentRequestDateRange from a dict
apply_watch_on_existing_content_request_date_range_from_dict = ApplyWatchOnExistingContentRequestDateRange.from_dict(apply_watch_on_existing_content_request_date_range_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


