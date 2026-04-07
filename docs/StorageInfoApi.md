# jfrog_client.StorageInfoApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_storage_summary_info**](StorageInfoApi.md#get_storage_summary_info) | **GET** /artifactory/api/storageinfo | Get Storage Summary Info
[**refresh_storage_summary_info**](StorageInfoApi.md#refresh_storage_summary_info) | **POST** /artifactory/api/storageinfo/calculate | Refresh Storage Summary Info


# **get_storage_summary_info**
> StorageSummaryInfo get_storage_summary_info()

Get Storage Summary Info

Returns storage summary information regarding binaries, file store and repositories.
Since: 4.2.0
Security: Requires authentication using Access Tokens, either as admin or using a scoped token with the system:info/storage:r scope.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.storage_summary_info import StorageSummaryInfo
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
    api_instance = jfrog_client.StorageInfoApi(api_client)

    try:
        # Get Storage Summary Info
        api_response = api_instance.get_storage_summary_info()
        print("The response of StorageInfoApi->get_storage_summary_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StorageInfoApi->get_storage_summary_info: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**StorageSummaryInfo**](StorageSummaryInfo.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved storage summary information |  -  |
**401** | Bad Credentials - Authentication failed |  -  |
**403** | Permission Denied - The user does not have the necessary permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refresh_storage_summary_info**
> str refresh_storage_summary_info()

Refresh Storage Summary Info

Refreshes storage summary information regarding binaries, file store and repositories.
Security: Requires a valid admin user


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
    api_instance = jfrog_client.StorageInfoApi(api_client)

    try:
        # Refresh Storage Summary Info
        api_response = api_instance.refresh_storage_summary_info()
        print("The response of StorageInfoApi->refresh_storage_summary_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling StorageInfoApi->refresh_storage_summary_info: %s\n" % e)
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
**202** | Storage summary information refresh initiated successfully |  -  |
**401** | Bad Credentials - Authentication failed |  -  |
**403** | Permission Denied - The user does not have admin permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

