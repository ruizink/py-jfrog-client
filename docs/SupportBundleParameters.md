# SupportBundleParameters


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**configuration** | **bool** | Collect configuration files | [optional] [default to True]
**system** | **bool** | Collect system information (storage, system properties, CPU, JVM) | [optional] [default to True]
**collect_slow_queries_from_database** | **bool** | Collect information about the 10 slowest database queries. Supported databases: PostgreSQL, MySQL, MariaDB, MS SQL | [optional] [default to False]
**logs** | [**SupportBundleParametersLogs**](SupportBundleParametersLogs.md) |  | [optional] 
**thread_dump** | [**SupportBundleParametersThreadDump**](SupportBundleParametersThreadDump.md) |  | [optional] 

## Example

```python
from jfrog_client.models.support_bundle_parameters import SupportBundleParameters

# TODO update the JSON string below
json = "{}"
# create an instance of SupportBundleParameters from a JSON string
support_bundle_parameters_instance = SupportBundleParameters.from_json(json)
# print the JSON string representation of the object
print(SupportBundleParameters.to_json())

# convert the object into a dict
support_bundle_parameters_dict = support_bundle_parameters_instance.to_dict()
# create an instance of SupportBundleParameters from a dict
support_bundle_parameters_from_dict = SupportBundleParameters.from_dict(support_bundle_parameters_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


