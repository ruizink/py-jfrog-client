# jfrog_client.FederationMonitoringApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_federation_connection_details**](FederationMonitoringApi.md#get_federation_connection_details) | **GET** /artifactory/api/federation/status/connectionStates/{repoKey} | Get Federation Connection Details
[**get_federation_state_details**](FederationMonitoringApi.md#get_federation_state_details) | **GET** /artifactory/api/federation/status/stateList | Get Federation State Details
[**get_federation_state_summaries**](FederationMonitoringApi.md#get_federation_state_summaries) | **GET** /artifactory/api/federation/status/stateSummary | Get Federation State Summaries
[**prioritize_federated_repository**](FederationMonitoringApi.md#prioritize_federated_repository) | **PUT** /artifactory/api/federation/prioritization/{repoKey} | Prioritize Federated Repository


# **get_federation_connection_details**
> GetFederationConnectionDetails200Response get_federation_connection_details(repo_key)

Get Federation Connection Details

Returns the connection status of a Federated repository with other members of its Federation. This status indicates whether metadata events are being synchronized promptly between each source and each target within the Federation.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_federation_connection_details200_response import GetFederationConnectionDetails200Response
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
    api_instance = jfrog_client.FederationMonitoringApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Get Federation Connection Details
        api_response = api_instance.get_federation_connection_details(repo_key)
        print("The response of FederationMonitoringApi->get_federation_connection_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationMonitoringApi->get_federation_connection_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

### Return type

[**GetFederationConnectionDetails200Response**](GetFederationConnectionDetails200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**405** | Method Not Allowed - RTFS is not enabled |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_federation_state_details**
> GetFederationStateDetails200Response get_federation_state_details(status=status)

Get Federation State Details

Returns the current state of each repository Federation configured on your JPD.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_federation_state_details200_response import GetFederationStateDetails200Response
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
    api_instance = jfrog_client.FederationMonitoringApi(api_client)
    status = 'status_example' # str | Comma-separated list of statuses to filter by (e.g., HEALTHY,ERROR) (optional)

    try:
        # Get Federation State Details
        api_response = api_instance.get_federation_state_details(status=status)
        print("The response of FederationMonitoringApi->get_federation_state_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationMonitoringApi->get_federation_state_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **str**| Comma-separated list of statuses to filter by (e.g., HEALTHY,ERROR) | [optional] 

### Return type

[**GetFederationStateDetails200Response**](GetFederationStateDetails200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**405** | Method Not Allowed - RTFS is not enabled |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_federation_state_summaries**
> GetFederationStateSummaries200Response get_federation_state_summaries()

Get Federation State Summaries

Returns the number of Federation members that are currently in each of the following states - HEALTHY, NOT_AVAILABLE, DELAYED, PENDING_FS, FULL_SYNC_RUNNING, ERROR, DISABLED

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_federation_state_summaries200_response import GetFederationStateSummaries200Response
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
    api_instance = jfrog_client.FederationMonitoringApi(api_client)

    try:
        # Get Federation State Summaries
        api_response = api_instance.get_federation_state_summaries()
        print("The response of FederationMonitoringApi->get_federation_state_summaries:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationMonitoringApi->get_federation_state_summaries: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetFederationStateSummaries200Response**](GetFederationStateSummaries200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**405** | Method Not Allowed - RTFS is not enabled |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **prioritize_federated_repository**
> str prioritize_federated_repository(repo_key, priority_level)

Prioritize Federated Repository

Determines whether the queue of the specified Federated repository has priority access to system resources. Prioritizing the repository helps ensure timely synchronization of its events with other members of the Federation. There can be a maximum of 10 prioritized Federated repositories at any one time on the JPD.

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
    api_instance = jfrog_client.FederationMonitoringApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    priority_level = 'priority_level_example' # str | Defines the priority level assigned to the Federated repository

    try:
        # Prioritize Federated Repository
        api_response = api_instance.prioritize_federated_repository(repo_key, priority_level)
        print("The response of FederationMonitoringApi->prioritize_federated_repository:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationMonitoringApi->prioritize_federated_repository: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **priority_level** | **str**| Defines the priority level assigned to the Federated repository | 

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
**200** | The repository was prioritized/deprioritized successfully |  -  |
**400** | Invalid request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | The repository was not found |  -  |
**500** | Internal error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

