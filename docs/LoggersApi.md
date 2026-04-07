# jfrog_client.LoggersApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_logger_debug_levels**](LoggersApi.md#delete_logger_debug_levels) | **DELETE** /artifactory/api/system/debug/loggers | Delete Logger Debug Levels
[**get_logger_debug_level**](LoggersApi.md#get_logger_debug_level) | **GET** /artifactory/api/system/debug/loggers/{className} | Get Logger Debug Level
[**set_logger_debug_levels**](LoggersApi.md#set_logger_debug_levels) | **POST** /artifactory/api/system/debug/loggers | Set Logger Debug Levels


# **delete_logger_debug_levels**
> str delete_logger_debug_levels()

Delete Logger Debug Levels

Deletes the current logger debug level configuration and restores the previous settings. Use this request when you want to return to the previous settings before they expire automatically. If you want to make changes to a POST request that is still running, run this DELETE request first and then issue a new POST request. This request propagates to all nodes in HA environments.

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
    api_instance = jfrog_client.LoggersApi(api_client)

    try:
        # Delete Logger Debug Levels
        api_response = api_instance.delete_logger_debug_levels()
        print("The response of LoggersApi->delete_logger_debug_levels:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LoggersApi->delete_logger_debug_levels: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Logger levels were reset to default settings successfully |  -  |
**400** | Bad Request - This API is not available on Artifactory SaaS (Cloud). Only available on Self-Hosted instances. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_logger_debug_level**
> str get_logger_debug_level(class_name)

Get Logger Debug Level

Returns the current debug level configuration for the specified logger. In HA environments, it returns the debug level from whichever node receives the request. If the className defined in the request does not exist, this API returns the default value of the root from logback.xml.

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
    api_instance = jfrog_client.LoggersApi(api_client)
    class_name = 'class_name_example' # str | The name of the logger whose debug level you want returned (for example, org.dummy.Class)

    try:
        # Get Logger Debug Level
        api_response = api_instance.get_logger_debug_level(class_name)
        print("The response of LoggersApi->get_logger_debug_level:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LoggersApi->get_logger_debug_level: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_name** | **str**| The name of the logger whose debug level you want returned (for example, org.dummy.Class) | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Fetched |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_logger_debug_levels**
> str set_logger_debug_levels(set_logger_debug_levels_request)

Set Logger Debug Levels

Defines a temporary debug level for one or more loggers in memory without changing the logback.xml file. This request can be used to collect more detailed log information for a short period of time to help investigate a particular issue. When the defined time interval expires, the logger debug level is reset to its previous value. In HA environments, the debug level is propagated so that all nodes have the same log level.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.set_logger_debug_levels_request import SetLoggerDebugLevelsRequest
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
    api_instance = jfrog_client.LoggersApi(api_client)
    set_logger_debug_levels_request = jfrog_client.SetLoggerDebugLevelsRequest() # SetLoggerDebugLevelsRequest | 

    try:
        # Set Logger Debug Levels
        api_response = api_instance.set_logger_debug_levels(set_logger_debug_levels_request)
        print("The response of LoggersApi->set_logger_debug_levels:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LoggersApi->set_logger_debug_levels: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_logger_debug_levels_request** | [**SetLoggerDebugLevelsRequest**](SetLoggerDebugLevelsRequest.md)|  | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Logger levels configured successfully |  -  |
**400** | Bad Request - No loggers defined, too many loggers defined (maximum is 100), or timer set to &lt; 0 |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

