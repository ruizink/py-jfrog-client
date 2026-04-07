# jfrog_client.ContextualAnalysisV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_contextual_analysis_scan**](ContextualAnalysisV1Api.md#cancel_contextual_analysis_scan) | **POST** /xray/api/v1/artifact/contextualAnalysis/cancelScan | Cancel Artifact Contextual Analysis Scan
[**get_contextual_analysis_per_vulnerability_v1**](ContextualAnalysisV1Api.md#get_contextual_analysis_per_vulnerability_v1) | **GET** /xray/api/v1/cve_applicability | Get Contextual Analysis per Vulnerability V1
[**get_contextual_analysis_scan_status**](ContextualAnalysisV1Api.md#get_contextual_analysis_scan_status) | **POST** /xray/api/v1/artifact/contextualAnalysis/scanStatus | Get Artifact Contextual Analysis Scan Status
[**scan_artifact_for_contextual_analysis**](ContextualAnalysisV1Api.md#scan_artifact_for_contextual_analysis) | **POST** /xray/api/v1/artifact/contextualAnalysis/scan | Scan Artifact for Contextual Analysis


# **cancel_contextual_analysis_scan**
> CancelContextualAnalysisScan200Response cancel_contextual_analysis_scan(cancel_contextual_analysis_scan_request)

Cancel Artifact Contextual Analysis Scan

Cancels a running contextual analysis scan for a specific artifact. Requires Read permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.cancel_contextual_analysis_scan200_response import CancelContextualAnalysisScan200Response
from jfrog_client.models.cancel_contextual_analysis_scan_request import CancelContextualAnalysisScanRequest
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
    api_instance = jfrog_client.ContextualAnalysisV1Api(api_client)
    cancel_contextual_analysis_scan_request = jfrog_client.CancelContextualAnalysisScanRequest() # CancelContextualAnalysisScanRequest | 

    try:
        # Cancel Artifact Contextual Analysis Scan
        api_response = api_instance.cancel_contextual_analysis_scan(cancel_contextual_analysis_scan_request)
        print("The response of ContextualAnalysisV1Api->cancel_contextual_analysis_scan:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContextualAnalysisV1Api->cancel_contextual_analysis_scan: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_contextual_analysis_scan_request** | [**CancelContextualAnalysisScanRequest**](CancelContextualAnalysisScanRequest.md)|  | 

### Return type

[**CancelContextualAnalysisScan200Response**](CancelContextualAnalysisScan200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Scan canceled successfully. |  -  |
**404** | Artifact or scan not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contextual_analysis_per_vulnerability_v1**
> GetContextualAnalysisPerVulnerabilityV1200Response get_contextual_analysis_per_vulnerability_v1(component_id, vulnerability_id, source_comp_id=source_comp_id, path=path, user_issue_id=user_issue_id)

Get Contextual Analysis per Vulnerability V1

Returns contextual analysis results for a specific vulnerability on a component (v1 format). Requires Read permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_contextual_analysis_per_vulnerability_v1200_response import GetContextualAnalysisPerVulnerabilityV1200Response
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
    api_instance = jfrog_client.ContextualAnalysisV1Api(api_client)
    component_id = 'component_id_example' # str | The component identifier to check applicability for (e.g. gav://group:artifact, npm://package).
    vulnerability_id = 'vulnerability_id_example' # str | The vulnerability identifier (e.g. CVE-2021-44228).
    source_comp_id = 'source_comp_id_example' # str | Source component ID (the SBOM package that the vulnerability originates from). If given, only a result matching that component will be returned. If not given, returned results will contain data for any component in the artifact. (optional)
    path = 'path_example' # str | Artifact path used to identify the specific artifact. Without this, results may be aggregated from several artifacts. Only relevant for artifacts (not builds or release bundles). (optional)
    user_issue_id = 'user_issue_id_example' # str | User issue identifier to narrow down the specific artifact. (optional)

    try:
        # Get Contextual Analysis per Vulnerability V1
        api_response = api_instance.get_contextual_analysis_per_vulnerability_v1(component_id, vulnerability_id, source_comp_id=source_comp_id, path=path, user_issue_id=user_issue_id)
        print("The response of ContextualAnalysisV1Api->get_contextual_analysis_per_vulnerability_v1:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContextualAnalysisV1Api->get_contextual_analysis_per_vulnerability_v1: %s\n" % e)
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

[**GetContextualAnalysisPerVulnerabilityV1200Response**](GetContextualAnalysisPerVulnerabilityV1200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Contextual analysis results returned successfully. |  -  |
**204** | No content - no applicability data available. |  -  |
**400** | Bad request - required fields are missing. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_contextual_analysis_scan_status**
> GetContextualAnalysisScanStatus200Response get_contextual_analysis_scan_status(get_contextual_analysis_scan_status_request)

Get Artifact Contextual Analysis Scan Status

Returns the status of a contextual analysis scan for a specific artifact. Requires Read permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_contextual_analysis_scan_status200_response import GetContextualAnalysisScanStatus200Response
from jfrog_client.models.get_contextual_analysis_scan_status_request import GetContextualAnalysisScanStatusRequest
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
    api_instance = jfrog_client.ContextualAnalysisV1Api(api_client)
    get_contextual_analysis_scan_status_request = jfrog_client.GetContextualAnalysisScanStatusRequest() # GetContextualAnalysisScanStatusRequest | 

    try:
        # Get Artifact Contextual Analysis Scan Status
        api_response = api_instance.get_contextual_analysis_scan_status(get_contextual_analysis_scan_status_request)
        print("The response of ContextualAnalysisV1Api->get_contextual_analysis_scan_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContextualAnalysisV1Api->get_contextual_analysis_scan_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **get_contextual_analysis_scan_status_request** | [**GetContextualAnalysisScanStatusRequest**](GetContextualAnalysisScanStatusRequest.md)|  | 

### Return type

[**GetContextualAnalysisScanStatus200Response**](GetContextualAnalysisScanStatus200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Scan status returned successfully. |  -  |
**400** | Bad request - invalid or missing parameters. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scan_artifact_for_contextual_analysis**
> ScanArtifactForContextualAnalysis200Response scan_artifact_for_contextual_analysis(scan_artifact_for_contextual_analysis_request)

Scan Artifact for Contextual Analysis

Triggers a contextual analysis (applicability) scan. This endpoint supports two modes of operation:

**Artifact mode** - scan a specific artifact by providing `repo` and `path` (and optionally `componentId`). The artifact must already be scanned by Xray SCA.

**Aggregate mode** - scan all artifacts in a build or release bundle by providing the corresponding key pair instead:
- For builds: `build_name` + `build_number`
- For Release Bundles V1: `release_bundle_name` + `release_bundle_version`
- For Release Bundles V2: `release_bundle_v2_name` + `release_bundle_v2_version`

The two modes are mutually exclusive. If `repo`, `path`, or `componentId` is provided, the request is treated as artifact mode and aggregate keys are ignored. If none of those are set, the request is treated as aggregate mode.

Optionally, `project` can be provided to scope the request to a specific project.

Requires the MANAGE_DATA permission. Since Xray 3.73.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.scan_artifact_for_contextual_analysis200_response import ScanArtifactForContextualAnalysis200Response
from jfrog_client.models.scan_artifact_for_contextual_analysis_request import ScanArtifactForContextualAnalysisRequest
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
    api_instance = jfrog_client.ContextualAnalysisV1Api(api_client)
    scan_artifact_for_contextual_analysis_request = jfrog_client.ScanArtifactForContextualAnalysisRequest() # ScanArtifactForContextualAnalysisRequest | 

    try:
        # Scan Artifact for Contextual Analysis
        api_response = api_instance.scan_artifact_for_contextual_analysis(scan_artifact_for_contextual_analysis_request)
        print("The response of ContextualAnalysisV1Api->scan_artifact_for_contextual_analysis:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ContextualAnalysisV1Api->scan_artifact_for_contextual_analysis: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scan_artifact_for_contextual_analysis_request** | [**ScanArtifactForContextualAnalysisRequest**](ScanArtifactForContextualAnalysisRequest.md)|  | 

### Return type

[**ScanArtifactForContextualAnalysis200Response**](ScanArtifactForContextualAnalysis200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Scan triggered successfully or already in progress. |  -  |
**400** | Bad request - invalid or missing parameters. |  -  |
**403** | Permission denied - requires MANAGE_DATA permission. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

