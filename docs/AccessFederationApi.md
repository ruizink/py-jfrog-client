# jfrog_client.AccessFederationApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_access_federation**](AccessFederationApi.md#delete_access_federation) | **DELETE** /access/api/v1/system/federation/{serverName} | Delete Access Federation
[**full_broadcast_access_federation**](AccessFederationApi.md#full_broadcast_access_federation) | **PUT** /access/api/v1/system/federation/{serverName}/full_broadcast | Full Broadcast Access Federation
[**get_access_federation**](AccessFederationApi.md#get_access_federation) | **GET** /access/api/v1/system/federation/{serverName} | Get Access Federation
[**get_all_access_federations**](AccessFederationApi.md#get_all_access_federations) | **GET** /access/api/v1/system/federation | Get All Access Federations
[**register_access_federation**](AccessFederationApi.md#register_access_federation) | **POST** /access/api/v1/system/federation | Register Access Federation
[**update_access_federation**](AccessFederationApi.md#update_access_federation) | **PATCH** /access/api/v1/system/federation/{serverName} | Update Access Federation
[**validate_federation_target**](AccessFederationApi.md#validate_federation_target) | **POST** /access/api/v1/system/federation/validate_server | Validate Target for Circle of Trust


# **delete_access_federation**
> delete_access_federation(server_name)

Delete Access Federation

Unregisters a federation target.


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
    api_instance = jfrog_client.AccessFederationApi(api_client)
    server_name = 'server_name_example' # str | The federation target server name to unregister

    try:
        # Delete Access Federation
        api_instance.delete_access_federation(server_name)
    except Exception as e:
        print("Exception when calling AccessFederationApi->delete_access_federation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_name** | **str**| The federation target server name to unregister | 

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
**204** | Federation target unregistered |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Federation target not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **full_broadcast_access_federation**
> full_broadcast_access_federation(server_name)

Full Broadcast Access Federation

Invokes Access Federation full broadcast from a single federation source to all its federation targets.


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
    api_instance = jfrog_client.AccessFederationApi(api_client)
    server_name = 'server_name_example' # str | The federation target server name

    try:
        # Full Broadcast Access Federation
        api_instance.full_broadcast_access_federation(server_name)
    except Exception as e:
        print("Exception when calling AccessFederationApi->full_broadcast_access_federation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_name** | **str**| The federation target server name | 

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
**202** | Full broadcast already in progress for this target |  -  |
**204** | Full broadcast initiated successfully |  -  |
**304** | Not Modified - Federation target not eligible for full broadcast |  -  |
**400** | Bad Request - Server name is blank |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Federation target not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_access_federation**
> FederationTarget get_access_federation(server_name)

Get Access Federation

Returns the federation target by server name.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.federation_target import FederationTarget
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
    api_instance = jfrog_client.AccessFederationApi(api_client)
    server_name = 'server_name_example' # str | The federation target server name

    try:
        # Get Access Federation
        api_response = api_instance.get_access_federation(server_name)
        print("The response of AccessFederationApi->get_access_federation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccessFederationApi->get_access_federation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_name** | **str**| The federation target server name | 

### Return type

[**FederationTarget**](FederationTarget.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Server name is blank |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Federation target not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_access_federations**
> GetAllAccessFederations200Response get_all_access_federations()

Get All Access Federations

Returns all federation targets' configurations.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_all_access_federations200_response import GetAllAccessFederations200Response
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
    api_instance = jfrog_client.AccessFederationApi(api_client)

    try:
        # Get All Access Federations
        api_response = api_instance.get_all_access_federations()
        print("The response of AccessFederationApi->get_all_access_federations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccessFederationApi->get_all_access_federations: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetAllAccessFederations200Response**](GetAllAccessFederations200Response.md)

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

# **register_access_federation**
> FederationTarget register_access_federation(federation_target_create)

Register Access Federation

Registers a new federation target.


**Note:** This endpoint manages Access Federation directly on the JPD you are connected to. For centralized federation management across multiple JPDs, we recommend using the [Mission Control Access Federation APIs](https://docs.jfrog.com/administration/reference/configuremcfederation).


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.federation_target import FederationTarget
from jfrog_client.models.federation_target_create import FederationTargetCreate
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
    api_instance = jfrog_client.AccessFederationApi(api_client)
    federation_target_create = jfrog_client.FederationTargetCreate() # FederationTargetCreate | 

    try:
        # Register Access Federation
        api_response = api_instance.register_access_federation(federation_target_create)
        print("The response of AccessFederationApi->register_access_federation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccessFederationApi->register_access_federation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **federation_target_create** | [**FederationTargetCreate**](FederationTargetCreate.md)|  | 

### Return type

[**FederationTarget**](FederationTarget.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Federation target registered |  -  |
**400** | Bad Request - Invalid input (e.g., missing name or url) |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**409** | Conflict - A federation target with the same name already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_access_federation**
> FederationTarget update_access_federation(server_name, federation_target_update)

Update Access Federation

Updates federation target configurations.

**Note:** Server name and URL cannot be altered.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.federation_target import FederationTarget
from jfrog_client.models.federation_target_update import FederationTargetUpdate
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
    api_instance = jfrog_client.AccessFederationApi(api_client)
    server_name = 'server_name_example' # str | The federation target server name
    federation_target_update = jfrog_client.FederationTargetUpdate() # FederationTargetUpdate | 

    try:
        # Update Access Federation
        api_response = api_instance.update_access_federation(server_name, federation_target_update)
        print("The response of AccessFederationApi->update_access_federation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccessFederationApi->update_access_federation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **server_name** | **str**| The federation target server name | 
 **federation_target_update** | [**FederationTargetUpdate**](FederationTargetUpdate.md)|  | 

### Return type

[**FederationTarget**](FederationTarget.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json, application/merge-patch+json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful operation |  -  |
**400** | Bad Request - Invalid input (e.g., attempting to alter name or url) |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Federation target not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_federation_target**
> validate_federation_target(validate_federation_target_request)

Validate Target for Circle of Trust

Validates a target server for Circle of Trust federation.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.validate_federation_target_request import ValidateFederationTargetRequest
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
    api_instance = jfrog_client.AccessFederationApi(api_client)
    validate_federation_target_request = jfrog_client.ValidateFederationTargetRequest() # ValidateFederationTargetRequest | 

    try:
        # Validate Target for Circle of Trust
        api_instance.validate_federation_target(validate_federation_target_request)
    except Exception as e:
        print("Exception when calling AccessFederationApi->validate_federation_target: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **validate_federation_target_request** | [**ValidateFederationTargetRequest**](ValidateFederationTargetRequest.md)|  | 

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
**204** | Validation successful |  -  |
**400** | Bad Request - Invalid or empty payload |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

