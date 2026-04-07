# jfrog_client.CustomIssuesV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_issue_events_v2_custom_issues_v2_openapi**](CustomIssuesV2Api.md#get_issue_events_v2_custom_issues_v2_openapi) | **GET** /xray/api/v2/events/{id} | Get Issue Events V2


# **get_issue_events_v2_custom_issues_v2_openapi**
> GetIssueEventsV2CustomIssuesV2Openapi200Response get_issue_events_v2_custom_issues_v2_openapi(id, request_body)

Get Issue Events V2

Gets an issue created by a vendor.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_issue_events_v2_custom_issues_v2_openapi200_response import GetIssueEventsV2CustomIssuesV2Openapi200Response
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
    api_instance = jfrog_client.CustomIssuesV2Api(api_client)
    id = 'id_example' # str | Resource identifier
    request_body = None # Dict[str, object] | 

    try:
        # Get Issue Events V2
        api_response = api_instance.get_issue_events_v2_custom_issues_v2_openapi(id, request_body)
        print("The response of CustomIssuesV2Api->get_issue_events_v2_custom_issues_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CustomIssuesV2Api->get_issue_events_v2_custom_issues_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| Resource identifier | 
 **request_body** | [**Dict[str, object]**](object.md)|  | 

### Return type

[**GetIssueEventsV2CustomIssuesV2Openapi200Response**](GetIssueEventsV2CustomIssuesV2Openapi200Response.md)

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

