# UpdateReverseProxyConfigurationRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **str** |  | [optional] 
**web_server_type** | **str** |  | [optional] 
**artifactory_app_context** | **str** |  | [optional] 
**public_app_context** | **str** |  | [optional] 
**server_name** | **str** |  | [optional] 
**server_name_expression** | **str** |  | [optional] 
**artifactory_server_name** | **str** |  | [optional] 
**artifactory_port** | **int** |  | [optional] 
**ssl_certificate** | **str** |  | [optional] 
**ssl_key** | **str** |  | [optional] 
**docker_reverse_proxy_method** | **str** |  | [optional] 
**use_https** | **bool** |  | [optional] 
**use_http** | **bool** |  | [optional] 
**ssl_port** | **int** |  | [optional] 
**http_port** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.update_reverse_proxy_configuration_request import UpdateReverseProxyConfigurationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateReverseProxyConfigurationRequest from a JSON string
update_reverse_proxy_configuration_request_instance = UpdateReverseProxyConfigurationRequest.from_json(json)
# print the JSON string representation of the object
print(UpdateReverseProxyConfigurationRequest.to_json())

# convert the object into a dict
update_reverse_proxy_configuration_request_dict = update_reverse_proxy_configuration_request_instance.to_dict()
# create an instance of UpdateReverseProxyConfigurationRequest from a dict
update_reverse_proxy_configuration_request_from_dict = UpdateReverseProxyConfigurationRequest.from_dict(update_reverse_proxy_configuration_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


