# jfrog_client.SystemV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configuring_the_workers_count**](SystemV1Api.md#configuring_the_workers_count) | **PUT** /xray/api/v1/configuration/workersCount | Update Workers Count
[**get_the_workers_count**](SystemV1Api.md#get_the_workers_count) | **GET** /xray/api/v1/configuration/workersCount | Get the Workers Count
[**get_version**](SystemV1Api.md#get_version) | **GET** /xray/api/v1/system/version | Get Version
[**ping_request**](SystemV1Api.md#ping_request) | **GET** /xray/api/v1/system/ping | Ping
[**system_liveness**](SystemV1Api.md#system_liveness) | **GET** /xray/api/v1/system/liveness | System Liveness
[**system_readiness**](SystemV1Api.md#system_readiness) | **GET** /xray/api/v1/system/readiness | System Readiness


# **configuring_the_workers_count**
> object configuring_the_workers_count(configuring_the_workers_count_request)

Update Workers Count

Updates the worker thread counts for each processing lane. Changes require a system restart to take effect.

Available for Self-Hosted installation only, not in JFrog SaaS. Requires System Admin permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.configuring_the_workers_count_request import ConfiguringTheWorkersCountRequest
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
    api_instance = jfrog_client.SystemV1Api(api_client)
    configuring_the_workers_count_request = jfrog_client.ConfiguringTheWorkersCountRequest() # ConfiguringTheWorkersCountRequest | 

    try:
        # Update Workers Count
        api_response = api_instance.configuring_the_workers_count(configuring_the_workers_count_request)
        print("The response of SystemV1Api->configuring_the_workers_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemV1Api->configuring_the_workers_count: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuring_the_workers_count_request** | [**ConfiguringTheWorkersCountRequest**](ConfiguringTheWorkersCountRequest.md)|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Failed to parse workers count |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**415** | Unsupported media type |  -  |
**500** | Failed to update workers count |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_the_workers_count**
> GetTheWorkersCount200Response get_the_workers_count()

Get the Workers Count

Returns the current worker thread counts for each processing lane (index, persist, analysis, alert, impact analysis, notification). Each lane has separate counts for new content and existing content processing.

Available for Self-Hosted installation only, not in JFrog SaaS. Requires System Admin permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_the_workers_count200_response import GetTheWorkersCount200Response
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
    api_instance = jfrog_client.SystemV1Api(api_client)

    try:
        # Get the Workers Count
        api_response = api_instance.get_the_workers_count()
        print("The response of SystemV1Api->get_the_workers_count:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemV1Api->get_the_workers_count: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetTheWorkersCount200Response**](GetTheWorkersCount200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**500** | Failed to get worker settings |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_version**
> GetVersion200Response get_version()

Get Version

Returns the Xray version and revision number. No authentication required by default (can be configured to require Read permission via `authenticateRequestForSystemVersion` setting).


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_version200_response import GetVersion200Response
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
    api_instance = jfrog_client.SystemV1Api(api_client)

    try:
        # Get Version
        api_response = api_instance.get_version()
        print("The response of SystemV1Api->get_version:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemV1Api->get_version: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetVersion200Response**](GetVersion200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Version information retrieved successfully. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ping_request**
> SystemLiveness200Response ping_request()

Ping

Simple health check endpoint. Returns a pong response to verify the Xray service is responding. No authentication required.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.system_liveness200_response import SystemLiveness200Response
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
    api_instance = jfrog_client.SystemV1Api(api_client)

    try:
        # Ping
        api_response = api_instance.ping_request()
        print("The response of SystemV1Api->ping_request:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemV1Api->ping_request: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**SystemLiveness200Response**](SystemLiveness200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Xray is responding. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **system_liveness**
> SystemLiveness200Response system_liveness()

System Liveness

Kubernetes-style liveness probe. Returns 200 if the Xray service is alive, or 503 if health checks have failed. No authentication required.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.system_liveness200_response import SystemLiveness200Response
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
    api_instance = jfrog_client.SystemV1Api(api_client)

    try:
        # System Liveness
        api_response = api_instance.system_liveness()
        print("The response of SystemV1Api->system_liveness:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemV1Api->system_liveness: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**SystemLiveness200Response**](SystemLiveness200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Service is alive. |  -  |
**503** | Service is unhealthy. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **system_readiness**
> SystemLiveness200Response system_readiness(no_cache=no_cache)

System Readiness

Kubernetes-style readiness probe. Returns 200 if all dependent services are ready. Supports an optional `noCache` query parameter to bypass cached results. No authentication required.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.system_liveness200_response import SystemLiveness200Response
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
    api_instance = jfrog_client.SystemV1Api(api_client)
    no_cache = True # bool | Bypass cached readiness result and check live status. (optional)

    try:
        # System Readiness
        api_response = api_instance.system_readiness(no_cache=no_cache)
        print("The response of SystemV1Api->system_readiness:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemV1Api->system_readiness: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **no_cache** | **bool**| Bypass cached readiness result and check live status. | [optional] 

### Return type

[**SystemLiveness200Response**](SystemLiveness200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Service is ready. |  -  |
**503** | Service is not ready (dependencies unavailable). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

