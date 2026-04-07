# jfrog_client.ImportApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**full_system_import**](ImportApi.md#full_system_import) | **POST** /artifactory/api/import/system | Full System Import
[**get_import_system_settings_example**](ImportApi.md#get_import_system_settings_example) | **GET** /artifactory/api/import/system | Import System Settings Example
[**import_repository_content**](ImportApi.md#import_repository_content) | **POST** /artifactory/api/import/repositories | Import Repository Content


# **full_system_import**
> str full_system_import(full_system_import_request)

Full System Import

Import full system from a server local Artifactory export directory. From version 5.10, Artifactory maintains any security entities (users, groups, permissions and tokens) when doing a system import.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.full_system_import_request import FullSystemImportRequest
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
    api_instance = jfrog_client.ImportApi(api_client)
    full_system_import_request = jfrog_client.FullSystemImportRequest() # FullSystemImportRequest | 

    try:
        # Full System Import
        api_response = api_instance.full_system_import(full_system_import_request)
        print("The response of ImportApi->full_system_import:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ImportApi->full_system_import: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **full_system_import_request** | [**FullSystemImportRequest**](FullSystemImportRequest.md)|  | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**406** | Not Acceptable - The content type is not supported. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_import_system_settings_example**
> GetImportSystemSettingsExample200Response get_import_system_settings_example()

Import System Settings Example

Returns the default Import Settings JSON. From version 5.10, Artifactory maintains any security entities (users, groups, permissions and tokens) when doing a system import.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_import_system_settings_example200_response import GetImportSystemSettingsExample200Response
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
    api_instance = jfrog_client.ImportApi(api_client)

    try:
        # Import System Settings Example
        api_response = api_instance.get_import_system_settings_example()
        print("The response of ImportApi->get_import_system_settings_example:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ImportApi->get_import_system_settings_example: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetImportSystemSettingsExample200Response**](GetImportSystemSettingsExample200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.org.jfrog.artifactory.system.ImportSettings+json, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**406** | Not Acceptable - The content type is not supported. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_repository_content**
> str import_repository_content(path, repo=repo, metadata=metadata, verbose=verbose)

Import Repository Content

Import one or more repositories.

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
    api_instance = jfrog_client.ImportApi(api_client)
    path = 'path_example' # str | The file system path to import from. This may point to a specific folder to import data for a single repository, or to the parent \"repositories\" folder to import data for all repositories.
    repo = 'repo_example' # str | Empty/null repo -> all (optional)
    metadata = 1 # int | Include metadata - default 1 (optional) (default to 1)
    verbose = 0 # int | Verbose - default 0 (optional) (default to 0)

    try:
        # Import Repository Content
        api_response = api_instance.import_repository_content(path, repo=repo, metadata=metadata, verbose=verbose)
        print("The response of ImportApi->import_repository_content:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ImportApi->import_repository_content: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **path** | **str**| The file system path to import from. This may point to a specific folder to import data for a single repository, or to the parent \&quot;repositories\&quot; folder to import data for all repositories. | 
 **repo** | **str**| Empty/null repo -&gt; all | [optional] 
 **metadata** | **int**| Include metadata - default 1 | [optional] [default to 1]
 **verbose** | **int**| Verbose - default 0 | [optional] [default to 0]

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
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

