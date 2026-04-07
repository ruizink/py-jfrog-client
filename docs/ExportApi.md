# jfrog_client.ExportApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_repository_with_metadata**](ExportApi.md#export_repository_with_metadata) | **POST** /artifactory/api/artifactexport/repository | Export Repository with Metadata
[**export_system**](ExportApi.md#export_system) | **POST** /artifactory/api/export/system | Export System
[**get_export_system_settings_example**](ExportApi.md#get_export_system_settings_example) | **GET** /artifactory/api/export/system | Export System Settings Example


# **export_repository_with_metadata**
> str export_repository_with_metadata(export_repository_with_metadata_request)

Export Repository with Metadata

Export repository with its metadata. This command creates two directories Repository Data Directory (contains the exported data) and Metadata Directory (contains the associated metadata). Note This export API does not adhere to the same structure as the import command (/artifactory/api/import/repositories).

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.export_repository_with_metadata_request import ExportRepositoryWithMetadataRequest
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
    api_instance = jfrog_client.ExportApi(api_client)
    export_repository_with_metadata_request = jfrog_client.ExportRepositoryWithMetadataRequest() # ExportRepositoryWithMetadataRequest | 

    try:
        # Export Repository with Metadata
        api_response = api_instance.export_repository_with_metadata(export_repository_with_metadata_request)
        print("The response of ExportApi->export_repository_with_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExportApi->export_repository_with_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_repository_with_metadata_request** | [**ExportRepositoryWithMetadataRequest**](ExportRepositoryWithMetadataRequest.md)|  | 

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
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **export_system**
> str export_system(export_system_request)

Export System

Export full system to a server local directory.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.export_system_request import ExportSystemRequest
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
    api_instance = jfrog_client.ExportApi(api_client)
    export_system_request = jfrog_client.ExportSystemRequest() # ExportSystemRequest | 

    try:
        # Export System
        api_response = api_instance.export_system(export_system_request)
        print("The response of ExportApi->export_system:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExportApi->export_system: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_system_request** | [**ExportSystemRequest**](ExportSystemRequest.md)|  | 

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
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_export_system_settings_example**
> GetExportSystemSettingsExample200Response get_export_system_settings_example()

Export System Settings Example

Returns default Export Settings JSON.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_export_system_settings_example200_response import GetExportSystemSettingsExample200Response
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
    api_instance = jfrog_client.ExportApi(api_client)

    try:
        # Export System Settings Example
        api_response = api_instance.get_export_system_settings_example()
        print("The response of ExportApi->get_export_system_settings_example:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ExportApi->get_export_system_settings_example: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetExportSystemSettingsExample200Response**](GetExportSystemSettingsExample200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.org.jfrog.artifactory.system.ExportSettings+json, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Not supported (e.g. on SaaS/Cloud instances). |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

