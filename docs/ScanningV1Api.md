# jfrog_client.ScanningV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**abort_a_running_repository_scan**](ScanningV1Api.md#abort_a_running_repository_scan) | **POST** /xray/api/v1/repository/advancedScan/{id}/cancelScan | Cancel Repository Advanced Scan
[**apply_watch_on_existing_content**](ScanningV1Api.md#apply_watch_on_existing_content) | **POST** /xray/api/v1/applyWatch | Apply Watch on Existing Content
[**artifact_scan_status**](ScanningV1Api.md#artifact_scan_status) | **POST** /xray/api/v1/artifact/status | Artifact Scan Status
[**build_scan_status**](ScanningV1Api.md#build_scan_status) | **POST** /xray/api/v1/build/status | Build Scan Status
[**cancel_a_running_scan**](ScanningV1Api.md#cancel_a_running_scan) | **POST** /xray/api/v1/artifact/exposures/cancelScan | Cancel Artifact Exposures Scan
[**delete_on_demand_scan_results**](ScanningV1Api.md#delete_on_demand_scan_results) | **POST** /xray/api/v1/on_demand/delete | Delete On-Demand Scan Results
[**get_exposure_result_details**](ScanningV1Api.md#get_exposure_result_details) | **GET** /xray/api/v1/{groupCategoryPathPart}/results/details | Exposures Scanning - Get Results Details
[**get_exposure_result_list**](ScanningV1Api.md#get_exposure_result_list) | **GET** /xray/api/v1/{groupCategoryPathPart}/results | Exposures Scanning - Get Results List
[**get_more_exposure_result_evidence_rows**](ScanningV1Api.md#get_more_exposure_result_evidence_rows) | **GET** /xray/api/v1/{groupCategoryPathPart}/results/details/findings/evidences/rows | Exposures Scanning - Get Rows
[**get_more_exposure_result_evidences**](ScanningV1Api.md#get_more_exposure_result_evidences) | **GET** /xray/api/v1/{groupCategoryPathPart}/results/details/findings/evidences | Exposures Scanning - Get Evidence
[**get_more_exposure_result_findings**](ScanningV1Api.md#get_more_exposure_result_findings) | **GET** /xray/api/v1/{groupCategoryPathPart}/results/details/findings | Exposures Scanning - Get Findings
[**get_the_status_of_a_running_repository_scan**](ScanningV1Api.md#get_the_status_of_a_running_repository_scan) | **GET** /xray/api/v1/repository/advancedScan/{id}/scanStatus | Get Repository Advanced Scan Status
[**release_bundle_scan_status**](ScanningV1Api.md#release_bundle_scan_status) | **POST** /xray/api/v1/releaseBundle/status | Release Bundle Scan Status
[**release_bundle_v2_scan_status**](ScanningV1Api.md#release_bundle_v2_scan_status) | **POST** /xray/api/v1/release_bundle_v2/status | Release Bundle V2 Scan Status
[**repository_advanced_scans**](ScanningV1Api.md#repository_advanced_scans) | **POST** /xray/api/v1/repository/advancedScan/scan | Repository Advanced Scans
[**scan_artifact**](ScanningV1Api.md#scan_artifact) | **POST** /xray/api/v1/scanArtifact | Scan Artifact
[**scan_artifact_for_exposures**](ScanningV1Api.md#scan_artifact_for_exposures) | **POST** /xray/api/v1/artifact/exposures/scan | Scan Artifact for Exposures
[**scan_build_v1**](ScanningV1Api.md#scan_build_v1) | **POST** /xray/api/v1/scanBuild | Scan Build V1
[**scan_status_of_an_artifact**](ScanningV1Api.md#scan_status_of_an_artifact) | **POST** /xray/api/v1/artifact/exposures/scanStatus | Get Artifact Exposures Scan Status


# **abort_a_running_repository_scan**
> ScanArtifactForContextualAnalysis200Response abort_a_running_repository_scan(id)

Cancel Repository Advanced Scan

Cancels a running advanced repository scan. Only artifacts in pending status will be canceled; already-scanned artifacts retain their results. Requires the Manage Xray Metadata permission. Since Xray 3.73.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.scan_artifact_for_contextual_analysis200_response import ScanArtifactForContextualAnalysis200Response
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    id = 'id_example' # str | The scan ID returned by the advanced scan endpoint.

    try:
        # Cancel Repository Advanced Scan
        api_response = api_instance.abort_a_running_repository_scan(id)
        print("The response of ScanningV1Api->abort_a_running_repository_scan:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->abort_a_running_repository_scan: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The scan ID returned by the advanced scan endpoint. | 

### Return type

[**ScanArtifactForContextualAnalysis200Response**](ScanArtifactForContextualAnalysis200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Scan canceled successfully. |  -  |
**400** | Bad request |  -  |
**404** | Scan ID not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apply_watch_on_existing_content**
> ScanArtifactForContextualAnalysis200Response apply_watch_on_existing_content(apply_watch_on_existing_content_request)

Apply Watch on Existing Content

Applies watches on existing content within a specified date range. This triggers watch evaluation on artifacts that were already indexed before the watch was created. Requires the Manage Watches permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.apply_watch_on_existing_content_request import ApplyWatchOnExistingContentRequest
from jfrog_client.models.scan_artifact_for_contextual_analysis200_response import ScanArtifactForContextualAnalysis200Response
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    apply_watch_on_existing_content_request = jfrog_client.ApplyWatchOnExistingContentRequest() # ApplyWatchOnExistingContentRequest | 

    try:
        # Apply Watch on Existing Content
        api_response = api_instance.apply_watch_on_existing_content(apply_watch_on_existing_content_request)
        print("The response of ScanningV1Api->apply_watch_on_existing_content:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->apply_watch_on_existing_content: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apply_watch_on_existing_content_request** | [**ApplyWatchOnExistingContentRequest**](ApplyWatchOnExistingContentRequest.md)|  | 

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
**202** | Accepted - watches are being applied in the background. |  -  |
**400** | One or more fields are missing/invalid |  -  |
**403** | Permission denied |  -  |
**404** | Watch name does not exist |  -  |
**500** | Failed to apply the watch |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **artifact_scan_status**
> ArtifactScanStatus200Response artifact_scan_status(artifacts_artifact_scan_status_request)

Artifact Scan Status

Returns the scan status for a specific artifact. Requires Read permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.artifact_scan_status200_response import ArtifactScanStatus200Response
from jfrog_client.models.artifacts_artifact_scan_status_request import ArtifactsArtifactScanStatusRequest
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    artifacts_artifact_scan_status_request = jfrog_client.ArtifactsArtifactScanStatusRequest() # ArtifactsArtifactScanStatusRequest | 

    try:
        # Artifact Scan Status
        api_response = api_instance.artifact_scan_status(artifacts_artifact_scan_status_request)
        print("The response of ScanningV1Api->artifact_scan_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->artifact_scan_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artifacts_artifact_scan_status_request** | [**ArtifactsArtifactScanStatusRequest**](ArtifactsArtifactScanStatusRequest.md)|  | 

### Return type

[**ArtifactScanStatus200Response**](ArtifactScanStatus200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Artifact scan status returned. |  -  |
**400** | Bad request - mandatory fields are missing. |  -  |
**404** | Artifact not found or not indexed. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **build_scan_status**
> BuildScanStatus200Response build_scan_status(build_scan_status_request)

Build Scan Status

Returns the scan status for a specific build. Requires Read permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.build_scan_status200_response import BuildScanStatus200Response
from jfrog_client.models.build_scan_status_request import BuildScanStatusRequest
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    build_scan_status_request = jfrog_client.BuildScanStatusRequest() # BuildScanStatusRequest | 

    try:
        # Build Scan Status
        api_response = api_instance.build_scan_status(build_scan_status_request)
        print("The response of ScanningV1Api->build_scan_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->build_scan_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **build_scan_status_request** | [**BuildScanStatusRequest**](BuildScanStatusRequest.md)|  | 

### Return type

[**BuildScanStatus200Response**](BuildScanStatus200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Build scan status returned. |  -  |
**400** | Bad request - mandatory fields are missing |  -  |
**403** | Permission denied |  -  |
**404** | Not found |  -  |
**500** | Internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancel_a_running_scan**
> ScanArtifactForContextualAnalysis200Response cancel_a_running_scan(cancel_a_running_scan_request)

Cancel Artifact Exposures Scan

Cancels a running exposures scan for a specific artifact. Only artifacts that are in pending status can be canceled. Requires the Manage Xray Metadata permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.cancel_a_running_scan_request import CancelARunningScanRequest
from jfrog_client.models.scan_artifact_for_contextual_analysis200_response import ScanArtifactForContextualAnalysis200Response
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    cancel_a_running_scan_request = jfrog_client.CancelARunningScanRequest() # CancelARunningScanRequest | 

    try:
        # Cancel Artifact Exposures Scan
        api_response = api_instance.cancel_a_running_scan(cancel_a_running_scan_request)
        print("The response of ScanningV1Api->cancel_a_running_scan:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->cancel_a_running_scan: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_a_running_scan_request** | [**CancelARunningScanRequest**](CancelARunningScanRequest.md)|  | 

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
**200** | Scan canceled successfully. |  -  |
**404** | Not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_on_demand_scan_results**
> delete_on_demand_scan_results(delete_on_demand_scan_results_request)

Delete On-Demand Scan Results

Deletes multiple on-demand scan results. Requires Read permission. Since Xray 3.40.0.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.delete_on_demand_scan_results_request import DeleteOnDemandScanResultsRequest
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    delete_on_demand_scan_results_request = jfrog_client.DeleteOnDemandScanResultsRequest() # DeleteOnDemandScanResultsRequest | 

    try:
        # Delete On-Demand Scan Results
        api_instance.delete_on_demand_scan_results(delete_on_demand_scan_results_request)
    except Exception as e:
        print("Exception when calling ScanningV1Api->delete_on_demand_scan_results: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_on_demand_scan_results_request** | [**DeleteOnDemandScanResultsRequest**](DeleteOnDemandScanResultsRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Scan results deleted successfully. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_exposure_result_details**
> GetExposureResultDetails200Response get_exposure_result_details(group_category_path_part, repo, path, id)

Exposures Scanning - Get Results Details

Returns detailed information about a specific exposure finding. Requires Read permission. Since Xray 3.59.4.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_exposure_result_details200_response import GetExposureResultDetails200Response
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    group_category_path_part = 'group_category_path_part_example' # str | Exposures category: secrets, applications, services, or iac.
    repo = 'repo_example' # str | Repository name.
    path = 'path_example' # str | Path to the artifact.
    id = 'id_example' # str | Result identifier (e.g. EXP-1058-00001).

    try:
        # Exposures Scanning - Get Results Details
        api_response = api_instance.get_exposure_result_details(group_category_path_part, repo, path, id)
        print("The response of ScanningV1Api->get_exposure_result_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->get_exposure_result_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_category_path_part** | **str**| Exposures category: secrets, applications, services, or iac. | 
 **repo** | **str**| Repository name. | 
 **path** | **str**| Path to the artifact. | 
 **id** | **str**| Result identifier (e.g. EXP-1058-00001). | 

### Return type

[**GetExposureResultDetails200Response**](GetExposureResultDetails200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Result details returned successfully. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_exposure_result_list**
> GetExposureResultList200Response get_exposure_result_list(group_category_path_part, repo, path, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by, direction=direction, search=search)

Exposures Scanning - Get Results List

Returns a paginated list of exposures scan results for a specific artifact. The category is specified in the path (e.g. secrets, applications, services, iac). Requires Read permission. Since Xray 3.59.4.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_exposure_result_list200_response import GetExposureResultList200Response
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    group_category_path_part = 'group_category_path_part_example' # str | Exposures category: secrets, applications, services, or iac.
    repo = 'repo_example' # str | Repository name.
    path = 'path_example' # str | Path to the artifact.
    page_num = 1 # int | Page number (starting from 1). (optional) (default to 1)
    num_of_rows = 10 # int | Number of rows per page. (optional) (default to 10)
    order_by = 'order_by_example' # str | Field to order results by. (optional)
    direction = 'direction_example' # str | Sort direction. (optional)
    search = 'search_example' # str | Search string matched against result descriptions. (optional)

    try:
        # Exposures Scanning - Get Results List
        api_response = api_instance.get_exposure_result_list(group_category_path_part, repo, path, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by, direction=direction, search=search)
        print("The response of ScanningV1Api->get_exposure_result_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->get_exposure_result_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_category_path_part** | **str**| Exposures category: secrets, applications, services, or iac. | 
 **repo** | **str**| Repository name. | 
 **path** | **str**| Path to the artifact. | 
 **page_num** | **int**| Page number (starting from 1). | [optional] [default to 1]
 **num_of_rows** | **int**| Number of rows per page. | [optional] [default to 10]
 **order_by** | **str**| Field to order results by. | [optional] 
 **direction** | **str**| Sort direction. | [optional] 
 **search** | **str**| Search string matched against result descriptions. | [optional] 

### Return type

[**GetExposureResultList200Response**](GetExposureResultList200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Results returned successfully. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_more_exposure_result_evidence_rows**
> List[List[str]] get_more_exposure_result_evidence_rows(group_category_path_part, repo, path, id, finding_idx, evidence_idx, first_row_idx, rows_count)

Exposures Scanning - Get Rows

Returns evidence row data for a specific finding. Requires Read permission. Since Xray 3.59.4.

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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    group_category_path_part = 'group_category_path_part_example' # str | Exposures category: secrets, applications, services, or iac.
    repo = 'repo_example' # str | Repository name.
    path = 'path_example' # str | Path to the artifact.
    id = 'id_example' # str | Result identifier.
    finding_idx = 56 # int | Finding index (0 to total_findings-1).
    evidence_idx = 56 # int | Evidence index (0 to total_evidences-1).
    first_row_idx = 56 # int | First row index (0 to total_rows-1).
    rows_count = 56 # int | Maximum number of rows to return.

    try:
        # Exposures Scanning - Get Rows
        api_response = api_instance.get_more_exposure_result_evidence_rows(group_category_path_part, repo, path, id, finding_idx, evidence_idx, first_row_idx, rows_count)
        print("The response of ScanningV1Api->get_more_exposure_result_evidence_rows:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->get_more_exposure_result_evidence_rows: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_category_path_part** | **str**| Exposures category: secrets, applications, services, or iac. | 
 **repo** | **str**| Repository name. | 
 **path** | **str**| Path to the artifact. | 
 **id** | **str**| Result identifier. | 
 **finding_idx** | **int**| Finding index (0 to total_findings-1). | 
 **evidence_idx** | **int**| Evidence index (0 to total_evidences-1). | 
 **first_row_idx** | **int**| First row index (0 to total_rows-1). | 
 **rows_count** | **int**| Maximum number of rows to return. | 

### Return type

**List[List[str]]**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Evidence rows returned successfully. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_more_exposure_result_evidences**
> List[GetMoreExposureResultEvidences200ResponseInner] get_more_exposure_result_evidences(group_category_path_part, repo, path, id, finding_idx, first_evidence_idx, evidence_count)

Exposures Scanning - Get Evidence

Returns evidence details for a specific finding. Requires Read permission. Since Xray 3.59.4.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_more_exposure_result_evidences200_response_inner import GetMoreExposureResultEvidences200ResponseInner
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    group_category_path_part = 'group_category_path_part_example' # str | Exposures category: secrets, applications, services, or iac.
    repo = 'repo_example' # str | Repository name.
    path = 'path_example' # str | Path to the artifact.
    id = 'id_example' # str | Result identifier.
    finding_idx = 56 # int | Finding index (0 to total_findings-1).
    first_evidence_idx = 56 # int | First evidence index (0 to total_evidences-1).
    evidence_count = 56 # int | Maximum number of evidences to return.

    try:
        # Exposures Scanning - Get Evidence
        api_response = api_instance.get_more_exposure_result_evidences(group_category_path_part, repo, path, id, finding_idx, first_evidence_idx, evidence_count)
        print("The response of ScanningV1Api->get_more_exposure_result_evidences:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->get_more_exposure_result_evidences: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_category_path_part** | **str**| Exposures category: secrets, applications, services, or iac. | 
 **repo** | **str**| Repository name. | 
 **path** | **str**| Path to the artifact. | 
 **id** | **str**| Result identifier. | 
 **finding_idx** | **int**| Finding index (0 to total_findings-1). | 
 **first_evidence_idx** | **int**| First evidence index (0 to total_evidences-1). | 
 **evidence_count** | **int**| Maximum number of evidences to return. | 

### Return type

[**List[GetMoreExposureResultEvidences200ResponseInner]**](GetMoreExposureResultEvidences200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Evidence returned successfully. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_more_exposure_result_findings**
> List[GetMoreExposureResultFindings200ResponseInner] get_more_exposure_result_findings(group_category_path_part, repo, path, id, first_finding_idx=first_finding_idx)

Exposures Scanning - Get Findings

Returns additional findings for an exposure result. Requires Read permission. Since Xray 3.59.4.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_more_exposure_result_findings200_response_inner import GetMoreExposureResultFindings200ResponseInner
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    group_category_path_part = 'group_category_path_part_example' # str | Exposures category: secrets, applications, services, or iac.
    repo = 'repo_example' # str | Repository name.
    path = 'path_example' # str | Path to the artifact.
    id = 'id_example' # str | Result identifier.
    first_finding_idx = 56 # int | First finding index (0 to total_findings-1). (optional)

    try:
        # Exposures Scanning - Get Findings
        api_response = api_instance.get_more_exposure_result_findings(group_category_path_part, repo, path, id, first_finding_idx=first_finding_idx)
        print("The response of ScanningV1Api->get_more_exposure_result_findings:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->get_more_exposure_result_findings: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_category_path_part** | **str**| Exposures category: secrets, applications, services, or iac. | 
 **repo** | **str**| Repository name. | 
 **path** | **str**| Path to the artifact. | 
 **id** | **str**| Result identifier. | 
 **first_finding_idx** | **int**| First finding index (0 to total_findings-1). | [optional] 

### Return type

[**List[GetMoreExposureResultFindings200ResponseInner]**](GetMoreExposureResultFindings200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Findings returned successfully. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_the_status_of_a_running_repository_scan**
> GetTheStatusOfARunningRepositoryScan200Response get_the_status_of_a_running_repository_scan(id)

Get Repository Advanced Scan Status

Returns the status of an advanced repository scan. Requires the Manage Xray Metadata permission. Since Xray 3.73.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_the_status_of_a_running_repository_scan200_response import GetTheStatusOfARunningRepositoryScan200Response
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    id = 'id_example' # str | The scan ID returned by the advanced scan endpoint.

    try:
        # Get Repository Advanced Scan Status
        api_response = api_instance.get_the_status_of_a_running_repository_scan(id)
        print("The response of ScanningV1Api->get_the_status_of_a_running_repository_scan:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->get_the_status_of_a_running_repository_scan: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The scan ID returned by the advanced scan endpoint. | 

### Return type

[**GetTheStatusOfARunningRepositoryScan200Response**](GetTheStatusOfARunningRepositoryScan200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Scan status returned successfully. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **release_bundle_scan_status**
> BuildScanStatus200Response release_bundle_scan_status(release_bundle_scan_status_request)

Release Bundle Scan Status

Returns the scan status for a release bundle. Requires Read permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.build_scan_status200_response import BuildScanStatus200Response
from jfrog_client.models.release_bundle_scan_status_request import ReleaseBundleScanStatusRequest
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    release_bundle_scan_status_request = jfrog_client.ReleaseBundleScanStatusRequest() # ReleaseBundleScanStatusRequest | 

    try:
        # Release Bundle Scan Status
        api_response = api_instance.release_bundle_scan_status(release_bundle_scan_status_request)
        print("The response of ScanningV1Api->release_bundle_scan_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->release_bundle_scan_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **release_bundle_scan_status_request** | [**ReleaseBundleScanStatusRequest**](ReleaseBundleScanStatusRequest.md)|  | 

### Return type

[**BuildScanStatus200Response**](BuildScanStatus200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Release bundle scan status returned. |  -  |
**400** | Bad request - mandatory fields are missing. |  -  |
**404** | Release bundle not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **release_bundle_v2_scan_status**
> ReleaseBundleV2ScanStatus200Response release_bundle_v2_scan_status(release_bundle_v2_scan_status_request)

Release Bundle V2 Scan Status

Returns the scan status for a Release Bundle V2. Requires Read permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.release_bundle_v2_scan_status200_response import ReleaseBundleV2ScanStatus200Response
from jfrog_client.models.release_bundle_v2_scan_status_request import ReleaseBundleV2ScanStatusRequest
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    release_bundle_v2_scan_status_request = jfrog_client.ReleaseBundleV2ScanStatusRequest() # ReleaseBundleV2ScanStatusRequest | 

    try:
        # Release Bundle V2 Scan Status
        api_response = api_instance.release_bundle_v2_scan_status(release_bundle_v2_scan_status_request)
        print("The response of ScanningV1Api->release_bundle_v2_scan_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->release_bundle_v2_scan_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **release_bundle_v2_scan_status_request** | [**ReleaseBundleV2ScanStatusRequest**](ReleaseBundleV2ScanStatusRequest.md)|  | 

### Return type

[**ReleaseBundleV2ScanStatus200Response**](ReleaseBundleV2ScanStatus200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Release Bundle V2 scan status returned. |  -  |
**400** | Bad request - mandatory fields are missing. |  -  |
**404** | Release bundle not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **repository_advanced_scans**
> RepositoryAdvancedScans200Response repository_advanced_scans(repository_advanced_scans_request)

Repository Advanced Scans

Triggers an advanced security scan (JAS Exposures and Contextual Analysis) on a repository. Only artifacts already scanned by Xray (SCA) can be scanned. Requires the Manage Xray Metadata permission. Since Xray 3.73.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.repository_advanced_scans200_response import RepositoryAdvancedScans200Response
from jfrog_client.models.repository_advanced_scans_request import RepositoryAdvancedScansRequest
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    repository_advanced_scans_request = jfrog_client.RepositoryAdvancedScansRequest() # RepositoryAdvancedScansRequest | 

    try:
        # Repository Advanced Scans
        api_response = api_instance.repository_advanced_scans(repository_advanced_scans_request)
        print("The response of ScanningV1Api->repository_advanced_scans:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->repository_advanced_scans: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_advanced_scans_request** | [**RepositoryAdvancedScansRequest**](RepositoryAdvancedScansRequest.md)|  | 

### Return type

[**RepositoryAdvancedScans200Response**](RepositoryAdvancedScans200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Advanced scan started. |  -  |
**400** | Bad request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scan_artifact**
> DeleteIssueEvent200Response scan_artifact(scan_artifact_request)

Scan Artifact

Invokes scanning of an artifact. The artifact is identified by its component ID (e.g. docker://image:tag). Requires the Manage Xray Metadata permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.delete_issue_event200_response import DeleteIssueEvent200Response
from jfrog_client.models.scan_artifact_request import ScanArtifactRequest
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    scan_artifact_request = jfrog_client.ScanArtifactRequest() # ScanArtifactRequest | 

    try:
        # Scan Artifact
        api_response = api_instance.scan_artifact(scan_artifact_request)
        print("The response of ScanningV1Api->scan_artifact:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->scan_artifact: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scan_artifact_request** | [**ScanArtifactRequest**](ScanArtifactRequest.md)|  | 

### Return type

[**DeleteIssueEvent200Response**](DeleteIssueEvent200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Scan of artifact is in progress |  -  |
**415** | Failed to parse artifact |  -  |
**500** | Failed to write message to the queue |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scan_artifact_for_exposures**
> ScanArtifactForContextualAnalysis200Response scan_artifact_for_exposures(scan_artifact_for_exposures_request)

Scan Artifact for Exposures

Triggers an exposures scan for a specific artifact. Only artifacts already scanned by Xray (SCA) can be scanned for exposures. Requires the Manage Xray Metadata permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.scan_artifact_for_contextual_analysis200_response import ScanArtifactForContextualAnalysis200Response
from jfrog_client.models.scan_artifact_for_exposures_request import ScanArtifactForExposuresRequest
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    scan_artifact_for_exposures_request = jfrog_client.ScanArtifactForExposuresRequest() # ScanArtifactForExposuresRequest | 

    try:
        # Scan Artifact for Exposures
        api_response = api_instance.scan_artifact_for_exposures(scan_artifact_for_exposures_request)
        print("The response of ScanningV1Api->scan_artifact_for_exposures:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->scan_artifact_for_exposures: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scan_artifact_for_exposures_request** | [**ScanArtifactForExposuresRequest**](ScanArtifactForExposuresRequest.md)|  | 

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
**200** | Exposures scan started. |  -  |
**400** | Bad request |  -  |
**404** | Not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scan_build_v1**
> ScanBuildV1200Response scan_build_v1(scan_build_v1_request)

Scan Build V1

Invokes scanning of a build that was uploaded to Artifactory as requested by a CI server. Requires the Manage Xray Metadata permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.scan_build_v1200_response import ScanBuildV1200Response
from jfrog_client.models.scan_build_v1_request import ScanBuildV1Request
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    scan_build_v1_request = jfrog_client.ScanBuildV1Request() # ScanBuildV1Request | 

    try:
        # Scan Build V1
        api_response = api_instance.scan_build_v1(scan_build_v1_request)
        print("The response of ScanningV1Api->scan_build_v1:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->scan_build_v1: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scan_build_v1_request** | [**ScanBuildV1Request**](ScanBuildV1Request.md)|  | 

### Return type

[**ScanBuildV1200Response**](ScanBuildV1200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Build scanned successfully. |  -  |
**400** | Request is missing mandatory fields |  -  |
**403** | No valid license was found |  -  |
**415** | Failed to parse scan build request |  -  |
**500** | Failed to send build to scan |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scan_status_of_an_artifact**
> ScanStatusOfAnArtifact200Response scan_status_of_an_artifact(scan_status_of_an_artifact_request)

Get Artifact Exposures Scan Status

Returns the exposures scan status for a specific artifact. Requires the Manage Xray Metadata permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.scan_status_of_an_artifact200_response import ScanStatusOfAnArtifact200Response
from jfrog_client.models.scan_status_of_an_artifact_request import ScanStatusOfAnArtifactRequest
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
    api_instance = jfrog_client.ScanningV1Api(api_client)
    scan_status_of_an_artifact_request = jfrog_client.ScanStatusOfAnArtifactRequest() # ScanStatusOfAnArtifactRequest | 

    try:
        # Get Artifact Exposures Scan Status
        api_response = api_instance.scan_status_of_an_artifact(scan_status_of_an_artifact_request)
        print("The response of ScanningV1Api->scan_status_of_an_artifact:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV1Api->scan_status_of_an_artifact: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scan_status_of_an_artifact_request** | [**ScanStatusOfAnArtifactRequest**](ScanStatusOfAnArtifactRequest.md)|  | 

### Return type

[**ScanStatusOfAnArtifact200Response**](ScanStatusOfAnArtifact200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Scan status returned successfully. |  -  |
**400** | Bad request |  -  |
**404** | Not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

