# jfrog_client.SystemApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**enable_cloud_log_collection**](SystemApi.md#enable_cloud_log_collection) | **POST** /access/api/v1/logshipping/config | Enable Cloud Log Collection
[**export_access_configuration**](SystemApi.md#export_access_configuration) | **POST** /access/api/v1/system/backup/export | Export Access Configuration
[**get_basic_authentication_status**](SystemApi.md#get_basic_authentication_status) | **GET** /access/api/v1/config/security/authentication/basic_authentication_enabled | Get Status of Disable Basic Authentication
[**get_service_id**](SystemApi.md#get_service_id) | **GET** /artifactory/api/system/service_id | Get Service ID
[**import_access_configuration**](SystemApi.md#import_access_configuration) | **POST** /access/api/v1/system/backup/import | Import Access Configuration
[**ping_system**](SystemApi.md#ping_system) | **GET** /access/api/v1/system/ping | Ping Request
[**router_health_check**](SystemApi.md#router_health_check) | **GET** /router/api/v1/system/health | Health Check
[**set_basic_authentication_status**](SystemApi.md#set_basic_authentication_status) | **PUT** /access/api/v1/config/security/authentication/basic_authentication_enabled | Enable or Disable Basic Authentication


# **enable_cloud_log_collection**
> enable_cloud_log_collection(enable_cloud_log_collection_request)

Enable Cloud Log Collection

Enables log collection into a dedicated Logs Artifactory System
Repository, to improve auditing capabilities.


**Note:** Available for Cloud (SaaS) subscriptions only.

- Logs are collected in a dedicated system repository called
`jfrog-logs`. The repository will be created upon calling the API.
- Logs are collected in a cycle that may take up to 24 hours.
- By default, the log types collected are audit and request logs.


**Important:** The data transfer and storage you consume for downloading
or storing the logs will apply against your standard cloud usage, and
may incur costs.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.enable_cloud_log_collection_request import EnableCloudLogCollectionRequest
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
    api_instance = jfrog_client.SystemApi(api_client)
    enable_cloud_log_collection_request = jfrog_client.EnableCloudLogCollectionRequest() # EnableCloudLogCollectionRequest | 

    try:
        # Enable Cloud Log Collection
        api_instance.enable_cloud_log_collection(enable_cloud_log_collection_request)
    except Exception as e:
        print("Exception when calling SystemApi->enable_cloud_log_collection: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enable_cloud_log_collection_request** | [**EnableCloudLogCollectionRequest**](EnableCloudLogCollectionRequest.md)|  | 

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
**200** | Log collection enabled/disabled successfully |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials or unauthorized |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **export_access_configuration**
> export_access_configuration()

Export Access Configuration

Exports the Access configuration.


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
    api_instance = jfrog_client.SystemApi(api_client)

    try:
        # Export Access Configuration
        api_instance.export_access_configuration()
    except Exception as e:
        print("Exception when calling SystemApi->export_access_configuration: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

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
**202** | Configuration export initiated |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_basic_authentication_status**
> GetBasicAuthenticationStatus200Response get_basic_authentication_status()

Get Status of Disable Basic Authentication

Returns the status of Disable Basic Authentication in the JPD.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_basic_authentication_status200_response import GetBasicAuthenticationStatus200Response
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
    api_instance = jfrog_client.SystemApi(api_client)

    try:
        # Get Status of Disable Basic Authentication
        api_response = api_instance.get_basic_authentication_status()
        print("The response of SystemApi->get_basic_authentication_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemApi->get_basic_authentication_status: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetBasicAuthenticationStatus200Response**](GetBasicAuthenticationStatus200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful operation |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_service_id**
> str get_service_id()

Get Service ID

Provides the service ID of an Artifactory instance or cluster. Up to version 5.5.1, the Artifactory service ID is formatted jf-artifactory@[id]. From version 5.5.2 the service ID is formatted jfrt@[id].

Since: 5.0.0

Security: Requires an admin user

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
    api_instance = jfrog_client.SystemApi(api_client)

    try:
        # Get Service ID
        api_response = api_instance.get_service_id()
        print("The response of SystemApi->get_service_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemApi->get_service_id: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_access_configuration**
> import_access_configuration(import_access_configuration_request=import_access_configuration_request)

Import Access Configuration

Imports the Access configuration.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.import_access_configuration_request import ImportAccessConfigurationRequest
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
    api_instance = jfrog_client.SystemApi(api_client)
    import_access_configuration_request = jfrog_client.ImportAccessConfigurationRequest() # ImportAccessConfigurationRequest |  (optional)

    try:
        # Import Access Configuration
        api_instance.import_access_configuration(import_access_configuration_request=import_access_configuration_request)
    except Exception as e:
        print("Exception when calling SystemApi->import_access_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **import_access_configuration_request** | [**ImportAccessConfigurationRequest**](ImportAccessConfigurationRequest.md)|  | [optional] 

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
**200** | Configuration imported |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ping_system**
> str ping_system()

Ping Request

A simple ping request to verify that Access is running.

### Example


```python
import jfrog_client
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)


# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.SystemApi(api_client)

    try:
        # Ping Request
        api_response = api_instance.ping_system()
        print("The response of SystemApi->ping_system:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemApi->ping_system: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Access is running |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **router_health_check**
> HealthCheckResponse router_health_check()

Health Check

Get a simple status response about the state of a JFrog Product node.

Returns health state and general information regarding the router and
locally registered services.


**Security:** No authentication required.


### Example


```python
import jfrog_client
from jfrog_client.models.health_check_response import HealthCheckResponse
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)


# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.SystemApi(api_client)

    try:
        # Health Check
        api_response = api_instance.router_health_check()
        print("The response of SystemApi->router_health_check:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemApi->router_health_check: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**HealthCheckResponse**](HealthCheckResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | All services are healthy |  -  |
**503** | One or more services are unhealthy |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_basic_authentication_status**
> set_basic_authentication_status(set_basic_authentication_status_request)

Enable or Disable Basic Authentication

Allows you to enable or disable basic authentication in your JFrog
instance.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.set_basic_authentication_status_request import SetBasicAuthenticationStatusRequest
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
    api_instance = jfrog_client.SystemApi(api_client)
    set_basic_authentication_status_request = jfrog_client.SetBasicAuthenticationStatusRequest() # SetBasicAuthenticationStatusRequest | 

    try:
        # Enable or Disable Basic Authentication
        api_instance.set_basic_authentication_status(set_basic_authentication_status_request)
    except Exception as e:
        print("Exception when calling SystemApi->set_basic_authentication_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_basic_authentication_status_request** | [**SetBasicAuthenticationStatusRequest**](SetBasicAuthenticationStatusRequest.md)|  | 

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
**200** | Successful operation |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

