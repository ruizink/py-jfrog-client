# jfrog_client.PuppetApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_puppet_module_info**](PuppetApi.md#get_puppet_module_info) | **GET** /artifactory/api/puppet/{repoKey}/v3/modules/{userModule} | Get Puppet Module Info
[**get_puppet_modules**](PuppetApi.md#get_puppet_modules) | **GET** /artifactory/api/puppet/{repoKey}/v3/modules | Get Puppet Modules
[**get_puppet_release_info**](PuppetApi.md#get_puppet_release_info) | **GET** /artifactory/api/puppet/{repoKey}/v3/releases/{userModuleVersion} | Get Puppet Release Info
[**get_puppet_releases**](PuppetApi.md#get_puppet_releases) | **GET** /artifactory/api/puppet/{repoKey}/v3/releases | Get Puppet Releases


# **get_puppet_module_info**
> object get_puppet_module_info(repo_key, user_module)

Get Puppet Module Info

Returns information about a specific Puppet module.

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
    api_instance = jfrog_client.PuppetApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_module = 'user_module_example' # str | The user-module identifier (format {user}-{module})

    try:
        # Get Puppet Module Info
        api_response = api_instance.get_puppet_module_info(repo_key, user_module)
        print("The response of PuppetApi->get_puppet_module_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PuppetApi->get_puppet_module_info: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_module** | **str**| The user-module identifier (format {user}-{module}) | 

### Return type

**object**

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

# **get_puppet_modules**
> GetPuppetModules200Response get_puppet_modules(repo_key)

Get Puppet Modules

Returns a list of all Puppet modules hosted by the specified repository. Results are paginated.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_puppet_modules200_response import GetPuppetModules200Response
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
    api_instance = jfrog_client.PuppetApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Get Puppet Modules
        api_response = api_instance.get_puppet_modules(repo_key)
        print("The response of PuppetApi->get_puppet_modules:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PuppetApi->get_puppet_modules: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

### Return type

[**GetPuppetModules200Response**](GetPuppetModules200Response.md)

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

# **get_puppet_release_info**
> object get_puppet_release_info(repo_key, user_module_version)

Get Puppet Release Info

Returns information about the specific Puppet module's release.

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
    api_instance = jfrog_client.PuppetApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_module_version = 'user_module_version_example' # str | The user-module-version identifier (format {user}-{module}-{version})

    try:
        # Get Puppet Release Info
        api_response = api_instance.get_puppet_release_info(repo_key, user_module_version)
        print("The response of PuppetApi->get_puppet_release_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PuppetApi->get_puppet_release_info: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_module_version** | **str**| The user-module-version identifier (format {user}-{module}-{version}) | 

### Return type

**object**

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

# **get_puppet_releases**
> GetPuppetModules200Response get_puppet_releases(repo_key)

Get Puppet Releases

Returns a list of all Puppet releases hosted by the specified repository. Results are paginated.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_puppet_modules200_response import GetPuppetModules200Response
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
    api_instance = jfrog_client.PuppetApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Get Puppet Releases
        api_response = api_instance.get_puppet_releases(repo_key)
        print("The response of PuppetApi->get_puppet_releases:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PuppetApi->get_puppet_releases: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

### Return type

[**GetPuppetModules200Response**](GetPuppetModules200Response.md)

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

