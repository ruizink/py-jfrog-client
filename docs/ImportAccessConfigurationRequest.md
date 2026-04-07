# ImportAccessConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**saas** | **bool** | Whether to import in SaaS mode | [optional] 

## Example

```python
from jfrog_client.models.import_access_configuration_request import ImportAccessConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ImportAccessConfigurationRequest from a JSON string
import_access_configuration_request_instance = ImportAccessConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(ImportAccessConfigurationRequest.to_json())

# convert the object into a dict
import_access_configuration_request_dict = import_access_configuration_request_instance.to_dict()
# create an instance of ImportAccessConfigurationRequest from a dict
import_access_configuration_request_from_dict = ImportAccessConfigurationRequest.from_dict(import_access_configuration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


