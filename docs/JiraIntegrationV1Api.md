# jfrog_client.JiraIntegrationV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_jira_integration**](JiraIntegrationV1Api.md#create_jira_integration) | **POST** /xray/api/v1/ticketing/jira-integrations | Create Jira Integration
[**delete_jira_integration**](JiraIntegrationV1Api.md#delete_jira_integration) | **DELETE** /xray/api/v1/ticketing/jira-integrations/{integrationName} | Delete Jira Integration
[**get_integration_detail**](JiraIntegrationV1Api.md#get_integration_detail) | **GET** /xray/api/v1/ticketing/jira-integrations/{integrationName}/details | Get Jira Integration Details
[**get_latest_status_of_integration**](JiraIntegrationV1Api.md#get_latest_status_of_integration) | **GET** /xray/api/v1/ticketing/integrations/status/check | Get Jira Integration Status
[**update_jira_integration**](JiraIntegrationV1Api.md#update_jira_integration) | **PUT** /xray/api/v1/ticketing/jira-integrations/{integrationName} | Update Jira Integration


# **create_jira_integration**
> JiraIntegrationCreateResponse create_jira_integration(jira_integration_create_request)

Create Jira Integration

Creates a new Jira integration.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.jira_integration_create_request import JiraIntegrationCreateRequest
from jfrog_client.models.jira_integration_create_response import JiraIntegrationCreateResponse
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
    api_instance = jfrog_client.JiraIntegrationV1Api(api_client)
    jira_integration_create_request = jfrog_client.JiraIntegrationCreateRequest() # JiraIntegrationCreateRequest | 

    try:
        # Create Jira Integration
        api_response = api_instance.create_jira_integration(jira_integration_create_request)
        print("The response of JiraIntegrationV1Api->create_jira_integration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JiraIntegrationV1Api->create_jira_integration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jira_integration_create_request** | [**JiraIntegrationCreateRequest**](JiraIntegrationCreateRequest.md)|  | 

### Return type

[**JiraIntegrationCreateResponse**](JiraIntegrationCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success - Integration created |  -  |
**400** | One or more fields are missing/invalid |  -  |
**403** | Permission denied |  -  |
**500** | Failed to create integration |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_jira_integration**
> object delete_jira_integration(integration_name)

Delete Jira Integration

Deletes a Jira integration.

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
    api_instance = jfrog_client.JiraIntegrationV1Api(api_client)
    integration_name = 'integration_name_example' # str | The Jira integration connection name to delete.

    try:
        # Delete Jira Integration
        api_response = api_instance.delete_jira_integration(integration_name)
        print("The response of JiraIntegrationV1Api->delete_jira_integration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JiraIntegrationV1Api->delete_jira_integration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **str**| The Jira integration connection name to delete. | 

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
**200** | Integration deleted successfully |  -  |
**403** | Permission denied |  -  |
**404** | Integration does not exist |  -  |
**500** | Failed to delete integration |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_integration_detail**
> GetIntegrationDetail200Response get_integration_detail(integration_name)

Get Jira Integration Details

Retrieves full configuration details by connection name (PDF §21.2).

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_integration_detail200_response import GetIntegrationDetail200Response
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
    api_instance = jfrog_client.JiraIntegrationV1Api(api_client)
    integration_name = 'integration_name_example' # str | Jira integration connection name (PDF — path parameter).

    try:
        # Get Jira Integration Details
        api_response = api_instance.get_integration_detail(integration_name)
        print("The response of JiraIntegrationV1Api->get_integration_detail:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JiraIntegrationV1Api->get_integration_detail: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **str**| Jira integration connection name (PDF — path parameter). | 

### Return type

[**GetIntegrationDetail200Response**](GetIntegrationDetail200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Integration details retrieved successfully |  -  |
**403** | Permission denied |  -  |
**404** | No integration found |  -  |
**500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_latest_status_of_integration**
> JiraIntegrationStatusResponse get_latest_status_of_integration(integration_name)

Get Jira Integration Status

Retrieves the latest status of an existing Jira integration by its connection name.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.jira_integration_status_response import JiraIntegrationStatusResponse
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
    api_instance = jfrog_client.JiraIntegrationV1Api(api_client)
    integration_name = 'integration_name_example' # str | The name of the integration to check (PDF §21.3).

    try:
        # Get Jira Integration Status
        api_response = api_instance.get_latest_status_of_integration(integration_name)
        print("The response of JiraIntegrationV1Api->get_latest_status_of_integration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JiraIntegrationV1Api->get_latest_status_of_integration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **str**| The name of the integration to check (PDF §21.3). | 

### Return type

[**JiraIntegrationStatusResponse**](JiraIntegrationStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Integration status retrieved successfully |  -  |
**400** | Bad request (e.g. missing integrationName) |  -  |
**404** | No integration found |  -  |
**500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_jira_integration**
> JiraIntegrationCreateResponse update_jira_integration(integration_name, jira_integration_update_request)

Update Jira Integration

Updates an existing Jira integration's configuration (PDF §21.4).

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.jira_integration_create_response import JiraIntegrationCreateResponse
from jfrog_client.models.jira_integration_update_request import JiraIntegrationUpdateRequest
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
    api_instance = jfrog_client.JiraIntegrationV1Api(api_client)
    integration_name = 'integration_name_example' # str | Connection name in the path (PDF — {connection_name}).
    jira_integration_update_request = jfrog_client.JiraIntegrationUpdateRequest() # JiraIntegrationUpdateRequest | 

    try:
        # Update Jira Integration
        api_response = api_instance.update_jira_integration(integration_name, jira_integration_update_request)
        print("The response of JiraIntegrationV1Api->update_jira_integration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling JiraIntegrationV1Api->update_jira_integration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **integration_name** | **str**| Connection name in the path (PDF — {connection_name}). | 
 **jira_integration_update_request** | [**JiraIntegrationUpdateRequest**](JiraIntegrationUpdateRequest.md)|  | 

### Return type

[**JiraIntegrationCreateResponse**](JiraIntegrationCreateResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success - Integration updated |  -  |
**400** | One or more fields are missing/invalid |  -  |
**403** | Permission denied |  -  |
**404** | No integration found |  -  |
**500** | Failed to update integration |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

