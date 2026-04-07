# PudTiming


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**started_at_millis** | **int** | The time in milliseconds when the PUD process started | [optional] 
**started_at** | **str** | The time when the PUD process started. Artifactory returns this without a timezone offset (e.g., \&quot;2024-06-09T15:07:01\&quot;), so the format is a local ISO 8601 datetime string rather than strict RFC 3339.  | [optional] 
**duration_millis** | **int** | The duration of the PUD process in milliseconds up until the point when this report was issued | [optional] 
**duration** | **str** | The duration of the PUD process up until the point when this report was issued | [optional] 
**last_updated_millis** | **int** | The time in milliseconds at which this report was issued | [optional] 
**last_updated** | **str** | The time at which this report was issued. Artifactory returns this without a timezone offset (e.g., \&quot;2024-06-09T15:07:15\&quot;), so the format is a local ISO 8601 datetime string rather than strict RFC 3339.  | [optional] 

## Example

```python
from jfrog_client.models.pud_timing import PudTiming

# TODO update the JSON string below
json = "{}"
# create an instance of PudTiming from a JSON string
pud_timing_instance = PudTiming.from_json(json)
# print the JSON string representation of the object
print(PudTiming.to_json())

# convert the object into a dict
pud_timing_dict = pud_timing_instance.to_dict()
# create an instance of PudTiming from a dict
pud_timing_from_dict = PudTiming.from_dict(pud_timing_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


