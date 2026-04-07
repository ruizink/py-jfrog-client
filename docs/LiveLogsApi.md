# jfrog_client.LiveLogsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_live_logs_config**](LiveLogsApi.md#get_live_logs_config) | **GET** /artifactory/api/system/logs/config | Get Live Logs Config
[**get_live_logs_data**](LiveLogsApi.md#get_live_logs_data) | **GET** /artifactory/api/system/logs/data | Get Live Logs Data


# **get_live_logs_config**
> GetLiveLogsConfig200Response get_live_logs_config()

Get Live Logs Config

Returns the Live Logs configuration. The configuration output contains the list of the available logs, the available Artifactory nodes, and the refresh rate. This feature is available only for Enterprise+ subscriptions.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_live_logs_config200_response import GetLiveLogsConfig200Response
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
    api_instance = jfrog_client.LiveLogsApi(api_client)

    try:
        # Get Live Logs Config
        api_response = api_instance.get_live_logs_config()
        print("The response of LiveLogsApi->get_live_logs_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LiveLogsApi->get_live_logs_config: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetLiveLogsConfig200Response**](GetLiveLogsConfig200Response.md)

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

# **get_live_logs_data**
> GetLiveLogsData200Response get_live_logs_data(id, file_size=file_size)

Get Live Logs Data

Returns the Live Logs data for the specified log ID. Contains the log content chunk (up to 300KB), the log file's last updated timestamp, the timestamp of the response, and the total size of the log file. This feature is available only for Enterprise+ subscriptions.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_live_logs_data200_response import GetLiveLogsData200Response
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
    api_instance = jfrog_client.LiveLogsApi(api_client)
    id = 'id_example' # str | The log name/ID
    file_size = 56 # int | The file size (optional)

    try:
        # Get Live Logs Data
        api_response = api_instance.get_live_logs_data(id, file_size=file_size)
        print("The response of LiveLogsApi->get_live_logs_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LiveLogsApi->get_live_logs_data: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The log name/ID | 
 **file_size** | **int**| The file size | [optional] 

### Return type

[**GetLiveLogsData200Response**](GetLiveLogsData200Response.md)

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

