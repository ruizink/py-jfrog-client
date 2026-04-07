# AccessFederationConfiguration

Access federation configuration (snake_case JSON). Used as the GET response for one JPD and as the PUT request body when configuring star federation. Both `entities` and `targets` are required on PUT. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**entities** | [**List[AccessFederationEntityType]**](AccessFederationEntityType.md) | Entity types to federate from the source JPD | 
**targets** | [**List[AccessFederationTarget]**](AccessFederationTarget.md) | Outbound federation targets from the source JPD (star topology) | 

## Example

```python
from jfrog_client.models.access_federation_configuration import AccessFederationConfiguration

# TODO update the JSON string below
json = "{}"
# create an instance of AccessFederationConfiguration from a JSON string
access_federation_configuration_instance = AccessFederationConfiguration.from_json(json)
# print the JSON string representation of the object
print(AccessFederationConfiguration.to_json())

# convert the object into a dict
access_federation_configuration_dict = access_federation_configuration_instance.to_dict()
# create an instance of AccessFederationConfiguration from a dict
access_federation_configuration_from_dict = AccessFederationConfiguration.from_dict(access_federation_configuration_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


