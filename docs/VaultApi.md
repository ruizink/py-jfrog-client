# jfrog_client.VaultApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_vault_configuration**](VaultApi.md#delete_vault_configuration) | **DELETE** /access/api/v1/vault/configs/{vault_key} | Delete the Secret Manager Configuration
[**get_vault_configurations**](VaultApi.md#get_vault_configurations) | **GET** /access/api/v1/vault/configs | Get the Secret Manager Configurations
[**set_vault_configuration**](VaultApi.md#set_vault_configuration) | **PUT** /access/api/v1/vault/configs/{vault_key} | Set the Vault Configuration
[**test_vault_configuration**](VaultApi.md#test_vault_configuration) | **POST** /access/api/v1/vault/configs/test | Test the Vault Configuration


# **delete_vault_configuration**
> delete_vault_configuration(vault_key)

Delete the Secret Manager Configuration

Deletes the connection between the vault and JFrog Platform.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = jfrog_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.VaultApi(api_client)
    vault_key = 'vault_key_example' # str | Configuration key for this vault integration instance (for example `hashicorp`). 

    try:
        # Delete the Secret Manager Configuration
        api_instance.delete_vault_configuration(vault_key)
    except Exception as e:
        print("Exception when calling VaultApi->delete_vault_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vault_key** | **str**| Configuration key for this vault integration instance (for example &#x60;hashicorp&#x60;).  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Vault configuration deleted (no response body) |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - No configuration exists for this key |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vault_configurations**
> List[VaultConfig] get_vault_configurations()

Get the Secret Manager Configurations

Returns a list of all configured secret managers.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.vault_config import VaultConfig
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = jfrog_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.VaultApi(api_client)

    try:
        # Get the Secret Manager Configurations
        api_response = api_instance.get_vault_configurations()
        print("The response of VaultApi->get_vault_configurations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VaultApi->get_vault_configurations: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[VaultConfig]**](VaultConfig.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_vault_configuration**
> VaultConfig set_vault_configuration(vault_key, vault_config_request)

Set the Vault Configuration

Connects the vault to the JFrog Platform to use signing keys stored in the vault.


**Note:** Requires TLS enabled.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.vault_config import VaultConfig
from jfrog_client.models.vault_config_request import VaultConfigRequest
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = jfrog_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.VaultApi(api_client)
    vault_key = 'vault_key_example' # str | Configuration key for this vault integration instance (for example `hashicorp`). 
    vault_config_request = jfrog_client.VaultConfigRequest() # VaultConfigRequest | 

    try:
        # Set the Vault Configuration
        api_response = api_instance.set_vault_configuration(vault_key, vault_config_request)
        print("The response of VaultApi->set_vault_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VaultApi->set_vault_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vault_key** | **str**| Configuration key for this vault integration instance (for example &#x60;hashicorp&#x60;).  | 
 **vault_config_request** | [**VaultConfigRequest**](VaultConfigRequest.md)|  | 

### Return type

[**VaultConfig**](VaultConfig.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**415** | Unsupported Media Type - body must be application/json |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **test_vault_configuration**
> test_vault_configuration(vault_config_request)

Test the Vault Configuration

Tries to connect to the Vault server.


**Note:** Requires TLS enabled.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.vault_config_request import VaultConfigRequest
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = jfrog_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.VaultApi(api_client)
    vault_config_request = jfrog_client.VaultConfigRequest() # VaultConfigRequest | 

    try:
        # Test the Vault Configuration
        api_instance.test_vault_configuration(vault_config_request)
    except Exception as e:
        print("Exception when calling VaultApi->test_vault_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vault_config_request** | [**VaultConfigRequest**](VaultConfigRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Test completed successfully (no response body) |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**415** | Unsupported Media Type - body must be application/json |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

