# jfrog_client.ViolationsV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_ignored_violations**](ViolationsV1Api.md#get_ignored_violations) | **GET** /xray/api/v1/violations/ignored/{watch_name} | Get Ignored Violations
[**get_violations**](ViolationsV1Api.md#get_violations) | **POST** /xray/api/v1/violations | Get Violations
[**list_ignored_violations**](ViolationsV1Api.md#list_ignored_violations) | **POST** /xray/api/v1/violations/ignored | List Ignored Violations
[**restore_ignored_violations**](ViolationsV1Api.md#restore_ignored_violations) | **POST** /xray/api/v1/violations/restore | Restore Ignored Violations


# **get_ignored_violations**
> GetIgnoredViolations200Response get_ignored_violations(watch_name, limit=limit, offset=offset, order_by=order_by)

Get Ignored Violations

Gets a list of all ignored violations on a specific watch. Returns violation details along with the ignore rule information that caused each violation to be suppressed.

Requires the "Manage Watches" permission. Since Xray 3.11.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_ignored_violations200_response import GetIgnoredViolations200Response
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
    api_instance = jfrog_client.ViolationsV1Api(api_client)
    watch_name = 'watch_name_example' # str | The name of the watch to retrieve ignored violations for.
    limit = 56 # int | Limit of violations to retrieve. Default: 500. (optional)
    offset = 56 # int | Offset for pagination. Default: 1. (optional)
    order_by = 'order_by_example' # str | Order by severity or updated. Default: updated. (optional)

    try:
        # Get Ignored Violations
        api_response = api_instance.get_ignored_violations(watch_name, limit=limit, offset=offset, order_by=order_by)
        print("The response of ViolationsV1Api->get_ignored_violations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ViolationsV1Api->get_ignored_violations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watch_name** | **str**| The name of the watch to retrieve ignored violations for. | 
 **limit** | **int**| Limit of violations to retrieve. Default: 500. | [optional] 
 **offset** | **int**| Offset for pagination. Default: 1. | [optional] 
 **order_by** | **str**| Order by severity or updated. Default: updated. | [optional] 

### Return type

[**GetIgnoredViolations200Response**](GetIgnoredViolations200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Parsing/validation error |  -  |
**401** | Unauthorized |  -  |
**403** | Forbidden |  -  |
**500** | Failed to get ignored violations |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_violations**
> GetViolations200Response get_violations(violations_search_request, project_key=project_key)

Get Violations

Gets Xray violations based on a set of search criteria. Returns violations with details about severity, type, infected components, and impacted artifacts. Use the `filters` object to narrow results by violation type, watch, severity, time range, CVE, issue ID, and specific resources. Use the `pagination` object to control sorting and paging.

Starting from Xray version 3.42.3, JFrog Security CVE Research and Enrichment data is supported in the response. Fields short_description, full_description, and remediation are markdown.

Requires a user with Read permissions.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_violations200_response import GetViolations200Response
from jfrog_client.models.violations_search_request import ViolationsSearchRequest
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
    api_instance = jfrog_client.ViolationsV1Api(api_client)
    violations_search_request = jfrog_client.ViolationsSearchRequest() # ViolationsSearchRequest | 
    project_key = 'project_key_example' # str | When included, the response is scoped to the specified project.  (optional)

    try:
        # Get Violations
        api_response = api_instance.get_violations(violations_search_request, project_key=project_key)
        print("The response of ViolationsV1Api->get_violations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ViolationsV1Api->get_violations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **violations_search_request** | [**ViolationsSearchRequest**](ViolationsSearchRequest.md)|  | 
 **project_key** | **str**| When included, the response is scoped to the specified project.  | [optional] 

### Return type

[**GetViolations200Response**](GetViolations200Response.md)

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

# **list_ignored_violations**
> ListIgnoredViolations200Response list_ignored_violations(list_ignored_violations_request, offset=offset, limit=limit, order_by=order_by)

List Ignored Violations

Returns ignored violations by filters. Accepts objective filters (vulnerabilities, licenses, cves, operational_risk, exposures) and scope filters (policies, watches, components, artifacts, builds, release-bundles, etc.) in the request body. Pagination parameters are passed as query parameters.

Requires the "Manage Watches" permission. Since Xray 3.11. Applicable to JFrog SaaS and Self-Hosted.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.list_ignored_violations200_response import ListIgnoredViolations200Response
from jfrog_client.models.list_ignored_violations_request import ListIgnoredViolationsRequest
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
    api_instance = jfrog_client.ViolationsV1Api(api_client)
    list_ignored_violations_request = jfrog_client.ListIgnoredViolationsRequest() # ListIgnoredViolationsRequest | 
    offset = 56 # int | Offset for pagination. (optional)
    limit = 56 # int | Limit for pagination. (optional)
    order_by = 'order_by_example' # str | Field to order results. Possible values: updated, severity. (optional)

    try:
        # List Ignored Violations
        api_response = api_instance.list_ignored_violations(list_ignored_violations_request, offset=offset, limit=limit, order_by=order_by)
        print("The response of ViolationsV1Api->list_ignored_violations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ViolationsV1Api->list_ignored_violations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_ignored_violations_request** | [**ListIgnoredViolationsRequest**](ListIgnoredViolationsRequest.md)|  | 
 **offset** | **int**| Offset for pagination. | [optional] 
 **limit** | **int**| Limit for pagination. | [optional] 
 **order_by** | **str**| Field to order results. Possible values: updated, severity. | [optional] 

### Return type

[**ListIgnoredViolations200Response**](ListIgnoredViolations200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved ignored violations. |  -  |
**400** | Failed to parse filters or invalid parameters. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore_ignored_violations**
> restore_ignored_violations(restore_ignored_violations_request)

Restore Ignored Violations

Restores violations that were previously ignored by an Ignore Rule. The violations are identified by their violation IDs. Maximum of 500 violations can be restored per request (configurable).

Requires the "Manage Watches" permission. Since Xray 3.16. Applicable to JFrog SaaS and Self-Hosted.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.restore_ignored_violations_request import RestoreIgnoredViolationsRequest
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
    api_instance = jfrog_client.ViolationsV1Api(api_client)
    restore_ignored_violations_request = jfrog_client.RestoreIgnoredViolationsRequest() # RestoreIgnoredViolationsRequest | 

    try:
        # Restore Ignored Violations
        api_instance.restore_ignored_violations(restore_ignored_violations_request)
    except Exception as e:
        print("Exception when calling ViolationsV1Api->restore_ignored_violations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **restore_ignored_violations_request** | [**RestoreIgnoredViolationsRequest**](RestoreIgnoredViolationsRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Violations restored successfully. |  -  |
**400** | No violation IDs provided, or too many IDs (limit 500 per request).  |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

