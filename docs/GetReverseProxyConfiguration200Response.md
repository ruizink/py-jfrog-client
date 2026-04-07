# GetReverseProxyConfiguration200Response


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
from jfrog_client.models.get_reverse_proxy_configuration200_response import GetReverseProxyConfiguration200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetReverseProxyConfiguration200Response from a JSON string
get_reverse_proxy_configuration200_response_instance = GetReverseProxyConfiguration200Response.from_json(json)
# print the JSON string representation of the object
print(GetReverseProxyConfiguration200Response.to_json())

# convert the object into a dict
get_reverse_proxy_configuration200_response_dict = get_reverse_proxy_configuration200_response_instance.to_dict()
# create an instance of GetReverseProxyConfiguration200Response from a dict
get_reverse_proxy_configuration200_response_from_dict = GetReverseProxyConfiguration200Response.from_dict(get_reverse_proxy_configuration200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


