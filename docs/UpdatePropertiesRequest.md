# UpdatePropertiesRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**props** | [**Dict[str, UpdatePropertiesRequestPropsValue]**](UpdatePropertiesRequestPropsValue.md) | Properties to update. Each property can be: - A single string value: \&quot;value1\&quot; - An array of strings: [\&quot;value1\&quot;, \&quot;value2\&quot;] - null to remove the property  | [optional] 

## Example

```python
from jfrog_client.models.update_properties_request import UpdatePropertiesRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdatePropertiesRequest from a JSON string
update_properties_request_instance = UpdatePropertiesRequest.from_json(json)
# print the JSON string representation of the object
print(UpdatePropertiesRequest.to_json())

# convert the object into a dict
update_properties_request_dict = update_properties_request_instance.to_dict()
# create an instance of UpdatePropertiesRequest from a dict
update_properties_request_from_dict = UpdatePropertiesRequest.from_dict(update_properties_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


