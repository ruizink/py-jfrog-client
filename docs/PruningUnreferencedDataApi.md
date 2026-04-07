# jfrog_client.PruningUnreferencedDataApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_pud_process_status**](PruningUnreferencedDataApi.md#get_pud_process_status) | **GET** /artifactory/api/system/storage/prune/status | Get Status of the PUD Process
[**start_pud_process**](PruningUnreferencedDataApi.md#start_pud_process) | **POST** /artifactory/api/system/storage/prune/start | Start PUD Process
[**stop_pud_process**](PruningUnreferencedDataApi.md#stop_pud_process) | **POST** /artifactory/api/system/storage/prune/stop | Stop PUD Process


# **get_pud_process_status**
> PudProcessStatus get_pud_process_status()

Get Status of the PUD Process

Get the current status of the PUD process (i.e., running, stopped, finished, or error) along with relevant data on the process such as total binaries deleted, total size of disk space cleaned, information on the last handled directory, and other information.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.pud_process_status import PudProcessStatus
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
    api_instance = jfrog_client.PruningUnreferencedDataApi(api_client)

    try:
        # Get Status of the PUD Process
        api_response = api_instance.get_pud_process_status()
        print("The response of PruningUnreferencedDataApi->get_pud_process_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PruningUnreferencedDataApi->get_pud_process_status: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**PudProcessStatus**](PudProcessStatus.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved PUD process status |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |
**412** | Precondition Failed - No Prune task found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_pud_process**
> PudProcessResponse start_pud_process(start_pud_process_request=start_pud_process_request)

Start PUD Process

This REST API is called to start a new PUD process, or resume a PUD process that was stopped before completion. The Pruning Unreferenced Data (PUD) APIs are used to delete randomly existing binaries in the filestore that are not referenced in Artifactory.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.pud_process_response import PudProcessResponse
from jfrog_client.models.start_pud_process_request import StartPudProcessRequest
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
    api_instance = jfrog_client.PruningUnreferencedDataApi(api_client)
    start_pud_process_request = jfrog_client.StartPudProcessRequest() # StartPudProcessRequest | PUD process parameters (optional)

    try:
        # Start PUD Process
        api_response = api_instance.start_pud_process(start_pud_process_request=start_pud_process_request)
        print("The response of PruningUnreferencedDataApi->start_pud_process:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PruningUnreferencedDataApi->start_pud_process: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_pud_process_request** | [**StartPudProcessRequest**](StartPudProcessRequest.md)| PUD process parameters | [optional] 

### Return type

[**PudProcessResponse**](PudProcessResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**202** | Accepted - PUD process has been submitted |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |
**412** | Precondition Failed - PUD process is already running or cannot be started |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop_pud_process**
> PudProcessResponse stop_pud_process()

Stop PUD Process

This REST API is called to stop the PUD process.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.pud_process_response import PudProcessResponse
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
    api_instance = jfrog_client.PruningUnreferencedDataApi(api_client)

    try:
        # Stop PUD Process
        api_response = api_instance.stop_pud_process()
        print("The response of PruningUnreferencedDataApi->stop_pud_process:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PruningUnreferencedDataApi->stop_pud_process: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**PudProcessResponse**](PudProcessResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**202** | Accepted - Prune task stop request submitted |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |
**412** | Precondition Failed - No running Prune task found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

