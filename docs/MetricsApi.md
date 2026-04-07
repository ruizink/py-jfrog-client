# jfrog_client.MetricsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_artifactory_application_metrics**](MetricsApi.md#get_artifactory_application_metrics) | **GET** /artifactory/api/v1/metrics/application | Get Artifactory Application Metrics
[**get_open_metrics_for_artifactory**](MetricsApi.md#get_open_metrics_for_artifactory) | **GET** /artifactory/api/v1/metrics | Get the Open Metrics for Artifactory


# **get_artifactory_application_metrics**
> str get_artifactory_application_metrics()

Get Artifactory Application Metrics

Returns application-related metrics for Cloud (SaaS) users in OpenMetrics/Prometheus exposition text format (`text/plain`). This feature is supported on the Cloud (SaaS) platform for all licenses.

**Security**: Requires a valid admin user.

Use `Accept: text/plain` or `Accept: */*` in the request header.


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
    api_instance = jfrog_client.MetricsApi(api_client)

    try:
        # Get Artifactory Application Metrics
        api_response = api_instance.get_artifactory_application_metrics()
        print("The response of MetricsApi->get_artifactory_application_metrics:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsApi->get_artifactory_application_metrics: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved application metrics in OpenMetrics text format. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |
**406** | Not Acceptable - The server cannot produce a response matching the Accept header. This endpoint only serves text/plain. Ensure your request uses &#x60;Accept: text/plain&#x60; or &#x60;Accept: */*&#x60;. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_open_metrics_for_artifactory**
> str get_open_metrics_for_artifactory(accept)

Get the Open Metrics for Artifactory

Returns all open metrics collected for Artifactory in OpenMetrics/Prometheus exposition text format (`text/plain`). This feature is supported on the Self-Hosted platform, with a Pro, Pro X, Enterprise X, or Enterprise+ license.

**Security**: Requires a valid admin user.

Use `Accept: text/plain` or `Accept: */*` in the request header.


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
    api_instance = jfrog_client.MetricsApi(api_client)
    accept = 'accept_example' # str | Must be `text/plain; version=0.0.4` (Prometheus exposition format).

    try:
        # Get the Open Metrics for Artifactory
        api_response = api_instance.get_open_metrics_for_artifactory(accept)
        print("The response of MetricsApi->get_open_metrics_for_artifactory:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetricsApi->get_open_metrics_for_artifactory: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accept** | **str**| Must be &#x60;text/plain; version&#x3D;0.0.4&#x60; (Prometheus exposition format). | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved open metrics in OpenMetrics text format. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |
**406** | Not Acceptable - The server cannot produce a response matching the Accept header. This endpoint only serves text/plain. Ensure your request uses &#x60;Accept: text/plain&#x60; or &#x60;Accept: */*&#x60;. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

