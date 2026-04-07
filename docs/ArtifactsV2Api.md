# jfrog_client.ArtifactsV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**artifact_summary_artifacts_v2_openapi**](ArtifactsV2Api.md#artifact_summary_artifacts_v2_openapi) | **POST** /xray/api/v2/summary/artifact | Artifact Summary
[**build_summary_artifacts_v2_openapi**](ArtifactsV2Api.md#build_summary_artifacts_v2_openapi) | **GET** /xray/api/v2/summary/build | Build Summary


# **artifact_summary_artifacts_v2_openapi**
> ArtifactSummaryArtifactsV2Openapi200Response artifact_summary_artifacts_v2_openapi(artifact_summary_request)

Artifact Summary

Provides a security, license, and operational risk summary for artifacts specified by path identifiers or checksums (v2 API).

The v2 endpoint includes component-level vulnerability details within each issue, showing which specific components are affected and what fixed versions are available (via the components array containing component_id, version, pkg_type, and fixed_versions). This data is not available in the v1 endpoint.

Either paths or checksums must be provided. If both are provided, checksums are ignored.

Requires a user with Read permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.artifact_summary_artifacts_v2_openapi200_response import ArtifactSummaryArtifactsV2Openapi200Response
from jfrog_client.models.artifact_summary_request import ArtifactSummaryRequest
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
    api_instance = jfrog_client.ArtifactsV2Api(api_client)
    artifact_summary_request = jfrog_client.ArtifactSummaryRequest() # ArtifactSummaryRequest | 

    try:
        # Artifact Summary
        api_response = api_instance.artifact_summary_artifacts_v2_openapi(artifact_summary_request)
        print("The response of ArtifactsV2Api->artifact_summary_artifacts_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV2Api->artifact_summary_artifacts_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artifact_summary_request** | [**ArtifactSummaryRequest**](ArtifactSummaryRequest.md)|  | 

### Return type

[**ArtifactSummaryArtifactsV2Openapi200Response**](ArtifactSummaryArtifactsV2Openapi200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Artifact summary retrieved successfully. |  -  |
**415** | Failed to parse JSON request body. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **build_summary_artifacts_v2_openapi**
> BuildSummaryArtifactsV2Openapi200Response build_summary_artifacts_v2_openapi(build_name, build_number, build_repo=build_repo, project_key=project_key)

Build Summary

Provides a security, license, and operational risk summary for a build specified by name and number. Returns issues (vulnerabilities), licenses found, operational risks, and any scan errors.

The v2 endpoint includes component-level details within issues that are not available in v1.

Requires a user with Read permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.build_summary_artifacts_v2_openapi200_response import BuildSummaryArtifactsV2Openapi200Response
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
    api_instance = jfrog_client.ArtifactsV2Api(api_client)
    build_name = 'build_name_example' # str | The name of the build.
    build_number = 'build_number_example' # str | The build number/version.
    build_repo = 'build_repo_example' # str | Build repository name. If not specified, resolved from project_key or uses default. (optional)
    project_key = 'project_key_example' # str | Project key. Used to resolve build_repo if not explicitly provided. (optional)

    try:
        # Build Summary
        api_response = api_instance.build_summary_artifacts_v2_openapi(build_name, build_number, build_repo=build_repo, project_key=project_key)
        print("The response of ArtifactsV2Api->build_summary_artifacts_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV2Api->build_summary_artifacts_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **build_name** | **str**| The name of the build. | 
 **build_number** | **str**| The build number/version. | 
 **build_repo** | **str**| Build repository name. If not specified, resolved from project_key or uses default. | [optional] 
 **project_key** | **str**| Project key. Used to resolve build_repo if not explicitly provided. | [optional] 

### Return type

[**BuildSummaryArtifactsV2Openapi200Response**](BuildSummaryArtifactsV2Openapi200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Build summary retrieved successfully. |  -  |
**400** | Missing build name or build number. |  -  |
**403** | Permission denied. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

