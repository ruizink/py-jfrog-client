# SupportBundleParametersThreadDump


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **int** | Number of thread dumps to collect | [optional] [default to 1]
**interval** | **int** | Interval between thread dumps in milliseconds | [optional] [default to 0]

## Example

```python
from jfrog_client.models.support_bundle_parameters_thread_dump import SupportBundleParametersThreadDump

# TODO update the JSON string below
json = "{}"
# create an instance of SupportBundleParametersThreadDump from a JSON string
support_bundle_parameters_thread_dump_instance = SupportBundleParametersThreadDump.from_json(json)
# print the JSON string representation of the object
print(SupportBundleParametersThreadDump.to_json())

# convert the object into a dict
support_bundle_parameters_thread_dump_dict = support_bundle_parameters_thread_dump_instance.to_dict()
# create an instance of SupportBundleParametersThreadDump from a dict
support_bundle_parameters_thread_dump_from_dict = SupportBundleParametersThreadDump.from_dict(support_bundle_parameters_thread_dump_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


