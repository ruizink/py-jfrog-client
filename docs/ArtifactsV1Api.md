# jfrog_client.ArtifactsV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**artifact_summary**](ArtifactsV1Api.md#artifact_summary) | **POST** /xray/api/v1/summary/artifact | Artifact Summary
[**build_vulnerability_diff**](ArtifactsV1Api.md#build_vulnerability_diff) | **POST** /xray/api/v1/diff/build | Build Vulnerability Diff
[**compare_artifacts**](ArtifactsV1Api.md#compare_artifacts) | **POST** /xray/api/v1/dependencyGraph/artifactDelta | Compare Artifacts
[**compare_builds**](ArtifactsV1Api.md#compare_builds) | **POST** /xray/api/v1/dependencyGraph/buildDelta | Compare Builds
[**get_artifact_dependency_graph**](ArtifactsV1Api.md#get_artifact_dependency_graph) | **POST** /xray/api/v1/dependencyGraph/artifact | Get Artifact Dependency Graph
[**get_build_dependency_graph**](ArtifactsV1Api.md#get_build_dependency_graph) | **POST** /xray/api/v1/dependencyGraph/build | Get Build Dependency Graph
[**get_repositories_configurations**](ArtifactsV1Api.md#get_repositories_configurations) | **GET** /xray/api/v1/repos_config/{repo_name} | Get Repository Configuration
[**release_bundle_details**](ArtifactsV1Api.md#release_bundle_details) | **GET** /xray/api/v1/details/release_bundle/{name}/{version} | Release Bundle Details
[**release_bundle_v2_details**](ArtifactsV1Api.md#release_bundle_v2_details) | **GET** /xray/api/v1/details/release_bundle_v2/{name}/{version} | Release Bundle V2 Details
[**update_repositories_configurations**](ArtifactsV1Api.md#update_repositories_configurations) | **PUT** /xray/api/v1/repos_config | Update Repositories Configurations


# **artifact_summary**
> ArtifactSummary200Response artifact_summary(artifact_summary_request)

Artifact Summary

Provides a security, license, and operational risk summary for artifacts specified by path identifiers or checksums. Returns issues (vulnerabilities), licenses, operational risks, and any errors for each artifact.

Either paths or checksums must be provided. If both are provided, checksums are ignored.

Note: In the v1 endpoint, the components field within issues is not included. Use the v2 endpoint for component-level details including fixed versions.

Requires a user with Read permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.artifact_summary200_response import ArtifactSummary200Response
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
    api_instance = jfrog_client.ArtifactsV1Api(api_client)
    artifact_summary_request = jfrog_client.ArtifactSummaryRequest() # ArtifactSummaryRequest | 

    try:
        # Artifact Summary
        api_response = api_instance.artifact_summary(artifact_summary_request)
        print("The response of ArtifactsV1Api->artifact_summary:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV1Api->artifact_summary: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artifact_summary_request** | [**ArtifactSummaryRequest**](ArtifactSummaryRequest.md)|  | 

### Return type

[**ArtifactSummary200Response**](ArtifactSummary200Response.md)

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

# **build_vulnerability_diff**
> BuildVulnerabilityDiff200Response build_vulnerability_diff(artifacts_build_vulnerability_diff_request)

Build Vulnerability Diff

Compares security vulnerabilities between two builds and returns the differences grouped by severity or package ID. The response contains added, removed, changed, and unchanged vulnerability lists for each group.

Requires a user with Read permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.artifacts_build_vulnerability_diff_request import ArtifactsBuildVulnerabilityDiffRequest
from jfrog_client.models.build_vulnerability_diff200_response import BuildVulnerabilityDiff200Response
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
    api_instance = jfrog_client.ArtifactsV1Api(api_client)
    artifacts_build_vulnerability_diff_request = jfrog_client.ArtifactsBuildVulnerabilityDiffRequest() # ArtifactsBuildVulnerabilityDiffRequest | 

    try:
        # Build Vulnerability Diff
        api_response = api_instance.build_vulnerability_diff(artifacts_build_vulnerability_diff_request)
        print("The response of ArtifactsV1Api->build_vulnerability_diff:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV1Api->build_vulnerability_diff: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artifacts_build_vulnerability_diff_request** | [**ArtifactsBuildVulnerabilityDiffRequest**](ArtifactsBuildVulnerabilityDiffRequest.md)|  | 

### Return type

[**BuildVulnerabilityDiff200Response**](BuildVulnerabilityDiff200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Vulnerability diff completed successfully. |  -  |
**400** | Missing required fields. |  -  |
**415** | Failed to parse request. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compare_artifacts**
> CompareArtifacts200Response compare_artifacts(artifacts_compare_artifacts_request)

Compare Artifacts

Compares two artifacts and produces a delta of their dependency components. Returns the source and target artifact metadata plus three component lists: added (in target only), removed (in source only), and unchanged (in both).

Requires a user with Read permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.artifacts_compare_artifacts_request import ArtifactsCompareArtifactsRequest
from jfrog_client.models.compare_artifacts200_response import CompareArtifacts200Response
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
    api_instance = jfrog_client.ArtifactsV1Api(api_client)
    artifacts_compare_artifacts_request = jfrog_client.ArtifactsCompareArtifactsRequest() # ArtifactsCompareArtifactsRequest | 

    try:
        # Compare Artifacts
        api_response = api_instance.compare_artifacts(artifacts_compare_artifacts_request)
        print("The response of ArtifactsV1Api->compare_artifacts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV1Api->compare_artifacts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artifacts_compare_artifacts_request** | [**ArtifactsCompareArtifactsRequest**](ArtifactsCompareArtifactsRequest.md)|  | 

### Return type

[**CompareArtifacts200Response**](CompareArtifacts200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Artifact &#39;&lt;PATH&gt;&#39; doesn&#39;t exist or isn&#39;t indexed in Xray |  -  |
**401** | Bad Credentials |  -  |
**415** | Failed to parse request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **compare_builds**
> CompareBuilds200Response compare_builds(artifacts_compare_builds_request)

Compare Builds

Compares two builds and produces a delta of their dependency components. Returns the source and target build metadata plus three component lists: added (in target only), removed (in source only), and unchanged (in both).

Requires a user with Read permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.artifacts_compare_builds_request import ArtifactsCompareBuildsRequest
from jfrog_client.models.compare_builds200_response import CompareBuilds200Response
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
    api_instance = jfrog_client.ArtifactsV1Api(api_client)
    artifacts_compare_builds_request = jfrog_client.ArtifactsCompareBuildsRequest() # ArtifactsCompareBuildsRequest | 

    try:
        # Compare Builds
        api_response = api_instance.compare_builds(artifacts_compare_builds_request)
        print("The response of ArtifactsV1Api->compare_builds:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV1Api->compare_builds: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artifacts_compare_builds_request** | [**ArtifactsCompareBuildsRequest**](ArtifactsCompareBuildsRequest.md)|  | 

### Return type

[**CompareBuilds200Response**](CompareBuilds200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | The build with the provided identifier doesn&#39;t exist or isn&#39;t indexed in Xray |  -  |
**401** | Bad credentials |  -  |
**415** | Failed to parse request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_artifact_dependency_graph**
> ArtifactsArtifactDependencyGraphResponse get_artifact_dependency_graph(artifacts_artifact_dependency_graph_request)

Get Artifact Dependency Graph

Retrieves the complete dependency graph for a specified artifact. Returns the artifact metadata and a recursive tree of all its component dependencies, including package type and component IDs.

Requires a user with Read permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.artifacts_artifact_dependency_graph_request import ArtifactsArtifactDependencyGraphRequest
from jfrog_client.models.artifacts_artifact_dependency_graph_response import ArtifactsArtifactDependencyGraphResponse
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
    api_instance = jfrog_client.ArtifactsV1Api(api_client)
    artifacts_artifact_dependency_graph_request = jfrog_client.ArtifactsArtifactDependencyGraphRequest() # ArtifactsArtifactDependencyGraphRequest | 

    try:
        # Get Artifact Dependency Graph
        api_response = api_instance.get_artifact_dependency_graph(artifacts_artifact_dependency_graph_request)
        print("The response of ArtifactsV1Api->get_artifact_dependency_graph:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV1Api->get_artifact_dependency_graph: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **artifacts_artifact_dependency_graph_request** | [**ArtifactsArtifactDependencyGraphRequest**](ArtifactsArtifactDependencyGraphRequest.md)|  | 

### Return type

[**ArtifactsArtifactDependencyGraphResponse**](ArtifactsArtifactDependencyGraphResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Artifact &#39;&lt;PATH&amp;&gt;&#39; doesn&#39;t exist or isn&#39;t indexed in Xray |  -  |
**401** | Bad credentials |  -  |
**415** | Failed to parse request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_build_dependency_graph**
> GetBuildDependencyGraph200Response get_build_dependency_graph(get_build_dependency_graph_request)

Get Build Dependency Graph

Retrieves the complete dependency graph for a build identified by name and number. Returns the build metadata and a recursive tree of all its component dependencies.

Requires a user with Read permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_build_dependency_graph200_response import GetBuildDependencyGraph200Response
from jfrog_client.models.get_build_dependency_graph_request import GetBuildDependencyGraphRequest
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
    api_instance = jfrog_client.ArtifactsV1Api(api_client)
    get_build_dependency_graph_request = jfrog_client.GetBuildDependencyGraphRequest() # GetBuildDependencyGraphRequest | 

    try:
        # Get Build Dependency Graph
        api_response = api_instance.get_build_dependency_graph(get_build_dependency_graph_request)
        print("The response of ArtifactsV1Api->get_build_dependency_graph:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV1Api->get_build_dependency_graph: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **get_build_dependency_graph_request** | [**GetBuildDependencyGraphRequest**](GetBuildDependencyGraphRequest.md)|  | 

### Return type

[**GetBuildDependencyGraph200Response**](GetBuildDependencyGraph200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Missing Artifactory ID |  -  |
**401** | Bad credentials |  -  |
**415** | Failed to parse request |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_repositories_configurations**
> GetRepositoriesConfigurations200Response get_repositories_configurations(repo_name, project_key=project_key)

Get Repository Configuration

Returns the scanning configuration for a specific repository, including contextual analysis, exposures, retention, and path-specific settings.

Requires Read permission. Route supports project scope.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_repositories_configurations200_response import GetRepositoriesConfigurations200Response
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
    api_instance = jfrog_client.ArtifactsV1Api(api_client)
    repo_name = 'repo_name_example' # str | Name of the repository.
    project_key = 'project_key_example' # str | Scope to the specified project. (optional)

    try:
        # Get Repository Configuration
        api_response = api_instance.get_repositories_configurations(repo_name, project_key=project_key)
        print("The response of ArtifactsV1Api->get_repositories_configurations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV1Api->get_repositories_configurations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| Name of the repository. | 
 **project_key** | **str**| Scope to the specified project. | [optional] 

### Return type

[**GetRepositoriesConfigurations200Response**](GetRepositoriesConfigurations200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Repository configuration retrieved successfully. |  -  |
**400** | Empty repository name. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **release_bundle_details**
> ReleaseBundleDetails200Response release_bundle_details(name, version, include_violations=include_violations)

Release Bundle Details

Returns the scan status and optionally the license, security, and operational risk violations found in a Release Bundle.

Requires Admin or Read permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.release_bundle_details200_response import ReleaseBundleDetails200Response
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
    api_instance = jfrog_client.ArtifactsV1Api(api_client)
    name = 'name_example' # str | Release bundle name.
    version = 'version_example' # str | Release bundle version.
    include_violations = True # bool | Whether to include violation details in the response. Default: true. (optional)

    try:
        # Release Bundle Details
        api_response = api_instance.release_bundle_details(name, version, include_violations=include_violations)
        print("The response of ArtifactsV1Api->release_bundle_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV1Api->release_bundle_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Release bundle name. | 
 **version** | **str**| Release bundle version. | 
 **include_violations** | **bool**| Whether to include violation details in the response. Default: true. | [optional] 

### Return type

[**ReleaseBundleDetails200Response**](ReleaseBundleDetails200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Release bundle details retrieved successfully. |  -  |
**404** | Release bundle not found or not indexed. |  -  |
**409** | Release bundle not marked for indexing. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **release_bundle_v2_details**
> ReleaseBundleV2Details200Response release_bundle_v2_details(name, version, operation, include_violations=include_violations, project_key=project_key)

Release Bundle V2 Details

Returns security, license, and operational risk violations found in a Release Bundle V2. Use the `operation` parameter to specify whether to check promotion or distribution violations.

Requires Admin or Read permission. Since Xray 3.82.x.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.release_bundle_v2_details200_response import ReleaseBundleV2Details200Response
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
    api_instance = jfrog_client.ArtifactsV1Api(api_client)
    name = 'name_example' # str | Release bundle V2 name.
    version = 'version_example' # str | Release bundle V2 version.
    operation = 'operation_example' # str | Which operation to check violations for.
    include_violations = True # bool | Include violation details in the response. Default: true. (optional)
    project_key = 'project_key_example' # str | Project key scope. (optional)

    try:
        # Release Bundle V2 Details
        api_response = api_instance.release_bundle_v2_details(name, version, operation, include_violations=include_violations, project_key=project_key)
        print("The response of ArtifactsV1Api->release_bundle_v2_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV1Api->release_bundle_v2_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Release bundle V2 name. | 
 **version** | **str**| Release bundle V2 version. | 
 **operation** | **str**| Which operation to check violations for. | 
 **include_violations** | **bool**| Include violation details in the response. Default: true. | [optional] 
 **project_key** | **str**| Project key scope. | [optional] 

### Return type

[**ReleaseBundleV2Details200Response**](ReleaseBundleV2Details200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Release bundle details (allowed or blocked). |  -  |
**202** | Scan is in progress. |  -  |
**400** | Bad request. |  -  |
**404** | Release bundle not found or not indexed. |  -  |
**409** | Release bundle not marked for indexing. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_repositories_configurations**
> UpdateRepositoriesConfigurations200Response update_repositories_configurations(update_repositories_configurations_request)

Update Repositories Configurations

Updates the scanning configuration for a specific repository, including contextual analysis settings, exposures scanning, retention period, and path-specific configurations.

Requires Admin or Index Resources permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.update_repositories_configurations200_response import UpdateRepositoriesConfigurations200Response
from jfrog_client.models.update_repositories_configurations_request import UpdateRepositoriesConfigurationsRequest
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
    api_instance = jfrog_client.ArtifactsV1Api(api_client)
    update_repositories_configurations_request = jfrog_client.UpdateRepositoriesConfigurationsRequest() # UpdateRepositoriesConfigurationsRequest | 

    try:
        # Update Repositories Configurations
        api_response = api_instance.update_repositories_configurations(update_repositories_configurations_request)
        print("The response of ArtifactsV1Api->update_repositories_configurations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactsV1Api->update_repositories_configurations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_repositories_configurations_request** | [**UpdateRepositoriesConfigurationsRequest**](UpdateRepositoriesConfigurationsRequest.md)|  | 

### Return type

[**UpdateRepositoriesConfigurations200Response**](UpdateRepositoriesConfigurations200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Repository configuration updated successfully. |  -  |
**400** | Failed to decode request or invalid configuration. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

