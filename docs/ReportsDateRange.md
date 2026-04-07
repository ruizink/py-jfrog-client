# ReportsDateRange

Time window (ISO-8601). From product documentation.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**start** | **str** | Interval start, e.g. 2020-06-29T12:22:16Z | [optional] 
**end** | **str** | Interval end, e.g. 2020-06-29T12:22:16Z | [optional] 

## Example

```python
from jfrog_client.models.reports_date_range import ReportsDateRange

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsDateRange from a JSON string
reports_date_range_instance = ReportsDateRange.from_json(json)
# print the JSON string representation of the object
print(ReportsDateRange.to_json())

# convert the object into a dict
reports_date_range_dict = reports_date_range_instance.to_dict()
# create an instance of ReportsDateRange from a dict
reports_date_range_from_dict = ReportsDateRange.from_dict(reports_date_range_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


