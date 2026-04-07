# GetIntegrationDetail200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connection_name** | **str** |  | [optional] 
**auth_type** | **str** |  | [optional] 
**username** | **str** |  | [optional] 
**installation_type** | **str** |  | [optional] 
**jira_server_url** | **str** |  | [optional] 
**skip_proxy** | **bool** |  | [optional] 

## Example

```python
from jfrog_client.models.get_integration_detail200_response import GetIntegrationDetail200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetIntegrationDetail200Response from a JSON string
get_integration_detail200_response_instance = GetIntegrationDetail200Response.from_json(json)
# print the JSON string representation of the object
print(GetIntegrationDetail200Response.to_json())

# convert the object into a dict
get_integration_detail200_response_dict = get_integration_detail200_response_instance.to_dict()
# create an instance of GetIntegrationDetail200Response from a dict
get_integration_detail200_response_from_dict = GetIntegrationDetail200Response.from_dict(get_integration_detail200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


