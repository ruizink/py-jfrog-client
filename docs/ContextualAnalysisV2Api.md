# jfrog_client.ContextualAnalysisV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_contextual_analysis_per_vulnerability_v2_contextual_analysis_v2_openapi**](ContextualAnalysisV2Api.md#get_contextual_analysis_per_vulnerability_v2_contextual_analysis_v2_openapi) | **GET** /xray/api/v2/cve_applicability | Get Contextual Analysis per Vulnerability V2


# **get_contextual_analysis_per_vulnerability_v2_contextual_analysis_v2_openapi**
> GetContextualAnalysisPerVulnerabilityV2ContextualAnalysisV2Openapi200Response get_contextual_analysis_per_vulnerability_v2_contextual_analysis_v2_openapi(component_id, vulnerability_id, source_comp_id=source_comp_id, path=path, user_issue_id=user_issue_id)

Get Contextual Analysis per Vulnerability V2

Returns contextual analysis results with evidence details and transitive dependency graph (v2 format). Requires Read permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_contextual_analysis_per_vulnerability_v2_contextual_analysis_v2_openapi200_response import GetContextualAnalysisPerVulnerabilityV2ContextualAnalysisV2Openapi200Response
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
    api_instance = jfrog_client.ContextualAnalysisV2Api(api_client)
    component_id = 'component_id_example' # str | The component identifier to check applicability for (e.g. gav://group:artifact, npm://package).
    vulnerability_id = 'vulnerability_id_example' # str | The vulnerability identifier (e.g. CVE-2021-44228).
    source_comp_id = 'source_comp_id_example' # str | Source component ID (the SBOM package that the vulnerability originates from). If given, only a result matching that component will be returned. If not given, returned results will contain data for any component in the artifact. (optional)
    path = 'path_example' # str | Artifact path used to identify the specific artifact. Without this, results may be aggregated from several artifacts. Only relevant for artifacts (not builds or release bundles). (optional)
    user_issue_id = 'user_issue_id_example' # str | User issue identifier to narrow down the specific artifact. (optional)

    try:
        # Get Contextual Analysis per Vulnerability V2
        api_response = api_instance.get_contextual_analysis_per_vulnerability_v2_contextual_analysis_v2_openapi(component_id, vulnerability_id, source_comp_id=source_comp_id, path=path, user_issue_id=user_issue_id)
        print("The response of ContextualAnalysisV2Api->get_contextual_analysis_per_vulnerability_v2_contextual_analysis_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContextualAnalysisV2Api->get_contextual_analysis_per_vulnerability_v2_contextual_analysis_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **component_id** | **str**| The component identifier to check applicability for (e.g. gav://group:artifact, npm://package). | 
 **vulnerability_id** | **str**| The vulnerability identifier (e.g. CVE-2021-44228). | 
 **source_comp_id** | **str**| Source component ID (the SBOM package that the vulnerability originates from). If given, only a result matching that component will be returned. If not given, returned results will contain data for any component in the artifact. | [optional] 
 **path** | **str**| Artifact path used to identify the specific artifact. Without this, results may be aggregated from several artifacts. Only relevant for artifacts (not builds or release bundles). | [optional] 
 **user_issue_id** | **str**| User issue identifier to narrow down the specific artifact. | [optional] 

### Return type

[**GetContextualAnalysisPerVulnerabilityV2ContextualAnalysisV2Openapi200Response**](GetContextualAnalysisPerVulnerabilityV2ContextualAnalysisV2Openapi200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Contextual analysis results with evidence and dependency graph. |  -  |
**400** | Bad request - required fields are missing. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

