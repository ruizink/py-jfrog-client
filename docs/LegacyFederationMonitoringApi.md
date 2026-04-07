# jfrog_client.LegacyFederationMonitoringApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_federated_repository_status**](LegacyFederationMonitoringApi.md#get_federated_repository_status) | **GET** /artifactory/api/federation/status/repo/{repoKey} | Get Federated Repository Status
[**get_federated_repository_status_v2**](LegacyFederationMonitoringApi.md#get_federated_repository_status_v2) | **GET** /artifactory/api/v2/federation/status/repo/{repoKey} | Get Federated Repository Status (v2)
[**get_federation_mirror_lag_time**](LegacyFederationMonitoringApi.md#get_federation_mirror_lag_time) | **GET** /artifactory/api/federation/status/mirrorsLag | Get Federation Mirror Lag Time
[**get_federation_sync_state**](LegacyFederationMonitoringApi.md#get_federation_sync_state) | **GET** /artifactory/api/federation/state | Get Federation Sync State
[**get_unavailable_mirrors**](LegacyFederationMonitoringApi.md#get_unavailable_mirrors) | **GET** /artifactory/api/federation/status/unavailableMirrors | Get Unavailable Mirrors


# **get_federated_repository_status**
> GetFederatedRepositoryStatus200Response get_federated_repository_status(repo_key)

Get Federated Repository Status

Returns the synchronization status of the Federation for a specific repository. This API is not supported by the standalone Artifactory Federation service that was released in version 7.104.2. This API has a high impact on the database and should be used with care.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_federated_repository_status200_response import GetFederatedRepositoryStatus200Response
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
    api_instance = jfrog_client.LegacyFederationMonitoringApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Get Federated Repository Status
        api_response = api_instance.get_federated_repository_status(repo_key)
        print("The response of LegacyFederationMonitoringApi->get_federated_repository_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LegacyFederationMonitoringApi->get_federated_repository_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

### Return type

[**GetFederatedRepositoryStatus200Response**](GetFederatedRepositoryStatus200Response.md)

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
**404** | Repository not found |  -  |
**405** | Method Not Allowed - RTFS is enabled |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_federated_repository_status_v2**
> GetFederatedRepositoryStatusV2200Response get_federated_repository_status_v2(repo_key)

Get Federated Repository Status (v2)

Returns the synchronization status of the Federation for a specific repository. This is the v2 version of the endpoint, which was released to offer a wider range of possible member statuses. This API is not supported by the standalone Artifactory Federation service that was released in version 7.104.2. This API greatly impacts the database and should be used with care.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_federated_repository_status_v2200_response import GetFederatedRepositoryStatusV2200Response
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
    api_instance = jfrog_client.LegacyFederationMonitoringApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Get Federated Repository Status (v2)
        api_response = api_instance.get_federated_repository_status_v2(repo_key)
        print("The response of LegacyFederationMonitoringApi->get_federated_repository_status_v2:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LegacyFederationMonitoringApi->get_federated_repository_status_v2: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

### Return type

[**GetFederatedRepositoryStatusV2200Response**](GetFederatedRepositoryStatusV2200Response.md)

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
**404** | Repository not found |  -  |
**405** | Method Not Allowed - RTFS is enabled |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_federation_mirror_lag_time**
> List[GetFederationMirrorLagTime200ResponseInner] get_federation_mirror_lag_time(threshold_time_in_ms=threshold_time_in_ms)

Get Federation Mirror Lag Time

Returns the elapsed time since the last event that was not handled on each Federation mirror for all repositories. This API is not supported by the standalone Artifactory Federation service that was released in version 7.104.2.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_federation_mirror_lag_time200_response_inner import GetFederationMirrorLagTime200ResponseInner
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
    api_instance = jfrog_client.LegacyFederationMonitoringApi(api_client)
    threshold_time_in_ms = 56 # int | Returns only those repositories whose lag exceeds this defined threshold (in milliseconds) (optional)

    try:
        # Get Federation Mirror Lag Time
        api_response = api_instance.get_federation_mirror_lag_time(threshold_time_in_ms=threshold_time_in_ms)
        print("The response of LegacyFederationMonitoringApi->get_federation_mirror_lag_time:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LegacyFederationMonitoringApi->get_federation_mirror_lag_time: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **threshold_time_in_ms** | **int**| Returns only those repositories whose lag exceeds this defined threshold (in milliseconds) | [optional] 

### Return type

[**List[GetFederationMirrorLagTime200ResponseInner]**](GetFederationMirrorLagTime200ResponseInner.md)

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
**405** | Method Not Allowed - RTFS is enabled |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_federation_sync_state**
> List[GetFederationSyncState200ResponseInner] get_federation_sync_state()

Get Federation Sync State

Returns the synchronization state of all Federated repositories in the JPD. This API is not supported by the standalone Artifactory Federation service that was released in version 7.104.2.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_federation_sync_state200_response_inner import GetFederationSyncState200ResponseInner
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
    api_instance = jfrog_client.LegacyFederationMonitoringApi(api_client)

    try:
        # Get Federation Sync State
        api_response = api_instance.get_federation_sync_state()
        print("The response of LegacyFederationMonitoringApi->get_federation_sync_state:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LegacyFederationMonitoringApi->get_federation_sync_state: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[GetFederationSyncState200ResponseInner]**](GetFederationSyncState200ResponseInner.md)

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
**405** | Method Not Allowed - RTFS is enabled |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_unavailable_mirrors**
> List[GetUnavailableMirrors200ResponseInner] get_unavailable_mirrors()

Get Unavailable Mirrors

Gets a list of unsynchronized Federated mirrors from all repositories. Mirrors are unsynchronized when they are first added to the federation, during repository migration from local to Federated, and when a certain error threshold is crossed. This API is not supported by the standalone Artifactory Federation service that was released in version 7.104.2.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_unavailable_mirrors200_response_inner import GetUnavailableMirrors200ResponseInner
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
    api_instance = jfrog_client.LegacyFederationMonitoringApi(api_client)

    try:
        # Get Unavailable Mirrors
        api_response = api_instance.get_unavailable_mirrors()
        print("The response of LegacyFederationMonitoringApi->get_unavailable_mirrors:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LegacyFederationMonitoringApi->get_unavailable_mirrors: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[GetUnavailableMirrors200ResponseInner]**](GetUnavailableMirrors200ResponseInner.md)

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
**405** | Method Not Allowed - RTFS is enabled |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

