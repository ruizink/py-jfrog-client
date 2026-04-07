# jfrog_client.PluginsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**execute_build_promotion**](PluginsApi.md#execute_build_promotion) | **POST** /artifactory/api/plugins/build/promote/{promotionName}/{buildName}/{buildNumber} | Execute Build Promotion
[**execute_plugin_code**](PluginsApi.md#execute_plugin_code) | **POST** /artifactory/api/plugins/execute/{executionName} | Execute Plugin Code
[**reload_plugins**](PluginsApi.md#reload_plugins) | **POST** /artifactory/api/plugins/reload | Reload Plugins
[**retrieve_build_staging_strategy**](PluginsApi.md#retrieve_build_staging_strategy) | **GET** /artifactory/api/plugins/build/staging/{strategyName} | Retrieve Build Staging Strategy
[**retrieve_plugin_code**](PluginsApi.md#retrieve_plugin_code) | **GET** /artifactory/api/plugins/download/{pluginName} | Retrieve Plugin Code
[**retrieve_plugin_info**](PluginsApi.md#retrieve_plugin_info) | **GET** /artifactory/api/plugins | Retrieve Plugin Info
[**retrieve_plugin_info_of_certain_type**](PluginsApi.md#retrieve_plugin_info_of_certain_type) | **GET** /artifactory/api/plugins/{pluginType} | Retrieve Plugin Info of a Certain Type


# **execute_build_promotion**
> str execute_build_promotion(promotion_name, build_name, build_number, params=params)

Execute Build Promotion

Executes a named promotion closure found in the promotions section of a User Plugins.

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
    api_instance = jfrog_client.PluginsApi(api_client)
    promotion_name = 'promotion_name_example' # str | The name of the promotion closure
    build_name = 'build_name_example' # str | The build name
    build_number = 'build_number_example' # str | The build number
    params = 'params_example' # str | Parameters for the promotion (format p1=v1[,v2][|p2=v3]) (optional)

    try:
        # Execute Build Promotion
        api_response = api_instance.execute_build_promotion(promotion_name, build_name, build_number, params=params)
        print("The response of PluginsApi->execute_build_promotion:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PluginsApi->execute_build_promotion: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **promotion_name** | **str**| The name of the promotion closure | 
 **build_name** | **str**| The build name | 
 **build_number** | **str**| The build number | 
 **params** | **str**| Parameters for the promotion (format p1&#x3D;v1[,v2][|p2&#x3D;v3]) | [optional] 

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

# **execute_plugin_code**
> str execute_plugin_code(execution_name, params=params, var_async=var_async)

Execute Plugin Code

Executes a named execution closure found in the executions section of a User Plugins. Execution can take parameters and be synchronous (the default) or asynchronous. When parameters can have multiple values, you can separate the items using a semicolon (recommended) or the encoding for the pipe character (%7C).

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
    api_instance = jfrog_client.PluginsApi(api_client)
    execution_name = 'execution_name_example' # str | The name of the execution closure
    params = 'params_example' # str | Parameters for the execution (format p1=v1[,v2][|p2=v3]) (optional)
    var_async = 56 # int | Whether to run asynchronously (0 or 1) (optional)

    try:
        # Execute Plugin Code
        api_response = api_instance.execute_plugin_code(execution_name, params=params, var_async=var_async)
        print("The response of PluginsApi->execute_plugin_code:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PluginsApi->execute_plugin_code: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **execution_name** | **str**| The name of the execution closure | 
 **params** | **str**| Parameters for the execution (format p1&#x3D;v1[,v2][|p2&#x3D;v3]) | [optional] 
 **var_async** | **int**| Whether to run asynchronously (0 or 1) | [optional] 

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
**404** | Not Found - No execution plugins are loaded or the specified execution was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reload_plugins**
> str reload_plugins()

Reload Plugins

Reloads user plugins if there are modifications since the last user plugins reload. Works regardless of the automatic user plugins refresh interval.

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
    api_instance = jfrog_client.PluginsApi(api_client)

    try:
        # Reload Plugins
        api_response = api_instance.reload_plugins()
        print("The response of PluginsApi->reload_plugins:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PluginsApi->reload_plugins: %s\n" % e)
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

# **retrieve_build_staging_strategy**
> RetrieveBuildStagingStrategy200Response retrieve_build_staging_strategy(strategy_name, build_name, params=params)

Retrieve Build Staging Strategy

Returns a build staging strategy defined by a User Plugins. When passing in parameters that may take multiple values, you can separate the items using a semicolon (recommended) or the encoding for the pipe character (%7C).

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.retrieve_build_staging_strategy200_response import RetrieveBuildStagingStrategy200Response
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
    api_instance = jfrog_client.PluginsApi(api_client)
    strategy_name = 'strategy_name_example' # str | The name of the staging strategy
    build_name = 'build_name_example' # str | The build name
    params = 'params_example' # str | Parameters for the strategy (format p1=v1[,v2][|p2=v3]) (optional)

    try:
        # Retrieve Build Staging Strategy
        api_response = api_instance.retrieve_build_staging_strategy(strategy_name, build_name, params=params)
        print("The response of PluginsApi->retrieve_build_staging_strategy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PluginsApi->retrieve_build_staging_strategy: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **strategy_name** | **str**| The name of the staging strategy | 
 **build_name** | **str**| The build name | 
 **params** | **str**| Parameters for the strategy (format p1&#x3D;v1[,v2][|p2&#x3D;v3]) | [optional] 

### Return type

[**RetrieveBuildStagingStrategy200Response**](RetrieveBuildStagingStrategy200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_plugin_code**
> str retrieve_plugin_code(plugin_name)

Retrieve Plugin Code

Returns the source code of the specified user plugin.

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
    api_instance = jfrog_client.PluginsApi(api_client)
    plugin_name = 'plugin_name_example' # str | The name of the plugin

    try:
        # Retrieve Plugin Code
        api_response = api_instance.retrieve_plugin_code(plugin_name)
        print("The response of PluginsApi->retrieve_plugin_code:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PluginsApi->retrieve_plugin_code: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin_name** | **str**| The name of the plugin | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/x-groovy-source, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_plugin_info**
> RetrievePluginInfo200Response retrieve_plugin_info()

Retrieve Plugin Info

Returns User Plugins information for Executions and Staging plugins (subject to the permissions of the provided credentials).

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.retrieve_plugin_info200_response import RetrievePluginInfo200Response
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
    api_instance = jfrog_client.PluginsApi(api_client)

    try:
        # Retrieve Plugin Info
        api_response = api_instance.retrieve_plugin_info()
        print("The response of PluginsApi->retrieve_plugin_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PluginsApi->retrieve_plugin_info: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**RetrievePluginInfo200Response**](RetrievePluginInfo200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_plugin_info_of_certain_type**
> RetrievePluginInfoOfCertainType200Response retrieve_plugin_info_of_certain_type(plugin_type)

Retrieve Plugin Info of a Certain Type

Returns all available User Plugins information (subject to the permissions of the provided credentials) of the specified type.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.retrieve_plugin_info_of_certain_type200_response import RetrievePluginInfoOfCertainType200Response
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
    api_instance = jfrog_client.PluginsApi(api_client)
    plugin_type = 'plugin_type_example' # str | The type of plugin (executions or staging)

    try:
        # Retrieve Plugin Info of a Certain Type
        api_response = api_instance.retrieve_plugin_info_of_certain_type(plugin_type)
        print("The response of PluginsApi->retrieve_plugin_info_of_certain_type:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PluginsApi->retrieve_plugin_info_of_certain_type: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **plugin_type** | **str**| The type of plugin (executions or staging) | 

### Return type

[**RetrievePluginInfoOfCertainType200Response**](RetrievePluginInfoOfCertainType200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

