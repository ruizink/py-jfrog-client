# jfrog_client.CustomIssuesV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_issue_event**](CustomIssuesV1Api.md#create_issue_event) | **POST** /xray/api/v1/events | Create Issue Event
[**delete_issue_event**](CustomIssuesV1Api.md#delete_issue_event) | **DELETE** /xray/api/v1/events/{id} | Delete Issue Event
[**update_issue_event**](CustomIssuesV1Api.md#update_issue_event) | **PUT** /xray/api/v1/events/{id} | Update Issue Event


# **create_issue_event**
> CreateIssueEvent201Response create_issue_event(custom_issues_event_mutation_request)

Create Issue Event

Creates a custom issue (vulnerability). The id parameter cannot have a prefix Xray, and provider parameter cannot be JFrog. Requires Manage Xray Metadata permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.create_issue_event201_response import CreateIssueEvent201Response
from jfrog_client.models.custom_issues_event_mutation_request import CustomIssuesEventMutationRequest
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
    api_instance = jfrog_client.CustomIssuesV1Api(api_client)
    custom_issues_event_mutation_request = jfrog_client.CustomIssuesEventMutationRequest() # CustomIssuesEventMutationRequest | 

    try:
        # Create Issue Event
        api_response = api_instance.create_issue_event(custom_issues_event_mutation_request)
        print("The response of CustomIssuesV1Api->create_issue_event:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomIssuesV1Api->create_issue_event: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **custom_issues_event_mutation_request** | [**CustomIssuesEventMutationRequest**](CustomIssuesEventMutationRequest.md)|  | 

### Return type

[**CreateIssueEvent201Response**](CreateIssueEvent201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Custom issue created successfully. |  -  |
**400** | Bad request - issue already exists, or required fields are missing. |  -  |
**415** | Unsupported media type. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_issue_event**
> DeleteIssueEvent200Response delete_issue_event(id)

Delete Issue Event

Deletes a custom issue

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.delete_issue_event200_response import DeleteIssueEvent200Response
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
    api_instance = jfrog_client.CustomIssuesV1Api(api_client)
    id = 'id_example' # str | Resource identifier

    try:
        # Delete Issue Event
        api_response = api_instance.delete_issue_event(id)
        print("The response of CustomIssuesV1Api->delete_issue_event:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomIssuesV1Api->delete_issue_event: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Resource identifier | 

### Return type

[**DeleteIssueEvent200Response**](DeleteIssueEvent200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_issue_event**
> object update_issue_event(id, custom_issues_event_mutation_request)

Update Issue Event

Allows an issue vendor to update a custom issue

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.custom_issues_event_mutation_request import CustomIssuesEventMutationRequest
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
    api_instance = jfrog_client.CustomIssuesV1Api(api_client)
    id = 'id_example' # str | Resource identifier
    custom_issues_event_mutation_request = jfrog_client.CustomIssuesEventMutationRequest() # CustomIssuesEventMutationRequest | 

    try:
        # Update Issue Event
        api_response = api_instance.update_issue_event(id, custom_issues_event_mutation_request)
        print("The response of CustomIssuesV1Api->update_issue_event:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomIssuesV1Api->update_issue_event: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Resource identifier | 
 **custom_issues_event_mutation_request** | [**CustomIssuesEventMutationRequest**](CustomIssuesEventMutationRequest.md)|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

