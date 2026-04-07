# SupportBundleParametersLogs


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include** | **bool** | Collect system logs | [optional] [default to True]
**start_date** | **str** | Start date for log collection. Format: YYYY-MM-DD. Defaults to day before end_date. | [optional] 
**end_date** | **str** | End date for log collection. Format: YYYY-MM-DD. Defaults to today. | [optional] 

## Example

```python
from jfrog_client.models.support_bundle_parameters_logs import SupportBundleParametersLogs

# TODO update the JSON string below
json = "{}"
# create an instance of SupportBundleParametersLogs from a JSON string
support_bundle_parameters_logs_instance = SupportBundleParametersLogs.from_json(json)
# print the JSON string representation of the object
print(SupportBundleParametersLogs.to_json())

# convert the object into a dict
support_bundle_parameters_logs_dict = support_bundle_parameters_logs_instance.to_dict()
# create an instance of SupportBundleParametersLogs from a dict
support_bundle_parameters_logs_from_dict = SupportBundleParametersLogs.from_dict(support_bundle_parameters_logs_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


