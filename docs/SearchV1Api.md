# jfrog_client.SearchV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_component_by_cve**](SearchV1Api.md#find_component_by_cve) | **POST** /xray/api/v1/component/searchByCves | Find Component by CVE
[**find_cves_by_component**](SearchV1Api.md#find_cves_by_component) | **POST** /xray/api/v1/component/searchCvesByComponents | Find CVEs by Component


# **find_component_by_cve**
> List[FindComponentByCve200ResponseInner] find_component_by_cve(find_component_by_cve_request)

Find Component by CVE

Searches for components that are directly affected by the specified CVEs. Returns a list of matching components grouped by CVE, including component name, package type, version, and a link to the instance.

Requires the Reports Manager permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.find_component_by_cve200_response_inner import FindComponentByCve200ResponseInner
from jfrog_client.models.find_component_by_cve_request import FindComponentByCveRequest
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
    api_instance = jfrog_client.SearchV1Api(api_client)
    find_component_by_cve_request = jfrog_client.FindComponentByCveRequest() # FindComponentByCveRequest | 

    try:
        # Find Component by CVE
        api_response = api_instance.find_component_by_cve(find_component_by_cve_request)
        print("The response of SearchV1Api->find_component_by_cve:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchV1Api->find_component_by_cve: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **find_component_by_cve_request** | [**FindComponentByCveRequest**](FindComponentByCveRequest.md)|  | 

### Return type

[**List[FindComponentByCve200ResponseInner]**](FindComponentByCve200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Valid response |  -  |
**400** | Got invalid CVE |  -  |
**415** | Failed to parse request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **find_cves_by_component**
> List[FindCvesByComponent200ResponseInner] find_cves_by_component(find_cves_by_component_request)

Find CVEs by Component

Searches for CVEs that affect the specified components. Each component is identified by its component ID (e.g., gav://commons-collections:commons-collections:3.2.1). Returns CVE IDs grouped by component. If a component is not found, the response includes an error field for that component.

Requires the Reports Manager permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.find_cves_by_component200_response_inner import FindCvesByComponent200ResponseInner
from jfrog_client.models.find_cves_by_component_request import FindCvesByComponentRequest
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
    api_instance = jfrog_client.SearchV1Api(api_client)
    find_cves_by_component_request = jfrog_client.FindCvesByComponentRequest() # FindCvesByComponentRequest | 

    try:
        # Find CVEs by Component
        api_response = api_instance.find_cves_by_component(find_cves_by_component_request)
        print("The response of SearchV1Api->find_cves_by_component:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchV1Api->find_cves_by_component: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **find_cves_by_component_request** | [**FindCvesByComponentRequest**](FindCvesByComponentRequest.md)|  | 

### Return type

[**List[FindCvesByComponent200ResponseInner]**](FindCvesByComponent200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Valid Response |  -  |
**415** | Failed to parse request |  -  |
**500** | Failed to search CVEs of components |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

