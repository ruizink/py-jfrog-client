# jfrog_client.ScanningV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_builds_scan_results**](ScanningV2Api.md#get_builds_scan_results) | **GET** /xray/api/v2/ci/build/{build_name}/{build_number} | Get Build Scan Results
[**scan_build_v2**](ScanningV2Api.md#scan_build_v2) | **POST** /xray/api/v2/ci/build | Scan Build V2


# **get_builds_scan_results**
> GetBuildsScanResults200Response get_builds_scan_results(build_name, build_number, project_key=project_key, include_vulnerabilities=include_vulnerabilities)

Get Build Scan Results

Returns CI build scan results for a specific build. Returns violations only if it determines a build failure. To retrieve full scan results including vulnerabilities, use the include_vulnerabilities parameter. Requires the Manage Xray Metadata permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_builds_scan_results200_response import GetBuildsScanResults200Response
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
    api_instance = jfrog_client.ScanningV2Api(api_client)
    build_name = 'build_name_example' # str | Name of the build.
    build_number = 'build_number_example' # str | Build number.
    project_key = 'project_key_example' # str | Project key the build belongs to. (optional)
    include_vulnerabilities = True # bool | Whether to include CVEs in the response. (optional)

    try:
        # Get Build Scan Results
        api_response = api_instance.get_builds_scan_results(build_name, build_number, project_key=project_key, include_vulnerabilities=include_vulnerabilities)
        print("The response of ScanningV2Api->get_builds_scan_results:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV2Api->get_builds_scan_results: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **build_name** | **str**| Name of the build. | 
 **build_number** | **str**| Build number. | 
 **project_key** | **str**| Project key the build belongs to. | [optional] 
 **include_vulnerabilities** | **bool**| Whether to include CVEs in the response. | [optional] 

### Return type

[**GetBuildsScanResults200Response**](GetBuildsScanResults200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Build scan results returned. |  -  |
**403** | Permission denied |  -  |
**404** | Build does not exist or is not indexed in Xray |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scan_build_v2**
> ScanBuildV2200Response scan_build_v2(scan_build_v2_request)

Scan Build V2

Triggers a CI build scan (v2 API). Invokes scanning of a build that was uploaded to Artifactory as requested by a CI server. Requires the Manage Xray Metadata permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.scan_build_v2200_response import ScanBuildV2200Response
from jfrog_client.models.scan_build_v2_request import ScanBuildV2Request
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
    api_instance = jfrog_client.ScanningV2Api(api_client)
    scan_build_v2_request = jfrog_client.ScanBuildV2Request() # ScanBuildV2Request | 

    try:
        # Scan Build V2
        api_response = api_instance.scan_build_v2(scan_build_v2_request)
        print("The response of ScanningV2Api->scan_build_v2:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ScanningV2Api->scan_build_v2: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scan_build_v2_request** | [**ScanBuildV2Request**](ScanBuildV2Request.md)|  | 

### Return type

[**ScanBuildV2200Response**](ScanBuildV2200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Build scan initiated. |  -  |
**400** | Request is missing mandatory fields |  -  |
**403** | Permission denied |  -  |
**415** | Failed to parse scan build request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

