# jfrog_client.SearchesApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**find_parent_manifest_lists**](SearchesApi.md#find_parent_manifest_lists) | **POST** /artifactory/api/docker/{repo-key}/v2/{imageName}/parentManifests | Find Parent Manifest Lists
[**list_docker_repositories**](SearchesApi.md#list_docker_repositories) | **GET** /artifactory/api/docker/{repo-key}/v2/_catalog | List Docker Repositories
[**list_docker_tags**](SearchesApi.md#list_docker_tags) | **GET** /artifactory/api/docker/{repo-key}/v2/{imageName}/tags/list | List Docker Tags
[**search_aql**](SearchesApi.md#search_aql) | **POST** /artifactory/api/search/aql | Artifactory Query Language (AQL)
[**search_archive**](SearchesApi.md#search_archive) | **GET** /artifactory/api/search/archive | Archive Entries Search (Class Search)
[**search_artifact**](SearchesApi.md#search_artifact) | **GET** /artifactory/api/search/artifact | Artifact Search (Quick Search)
[**search_bad_checksum**](SearchesApi.md#search_bad_checksum) | **GET** /artifactory/api/search/badChecksum | Bad Checksum Search
[**search_build_artifacts**](SearchesApi.md#search_build_artifacts) | **POST** /artifactory/api/search/buildArtifacts | Build Artifacts Search
[**search_checksum**](SearchesApi.md#search_checksum) | **GET** /artifactory/api/search/checksum | Checksum Search
[**search_creation**](SearchesApi.md#search_creation) | **GET** /artifactory/api/search/creation | Artifacts Created in Date Range
[**search_dates**](SearchesApi.md#search_dates) | **GET** /artifactory/api/search/dates | Artifacts With Date in Date Range
[**search_dependency**](SearchesApi.md#search_dependency) | **GET** /artifactory/api/search/dependency | Builds for Dependency
[**search_gavc**](SearchesApi.md#search_gavc) | **GET** /artifactory/api/search/gavc | GAVC Search
[**search_latest_version**](SearchesApi.md#search_latest_version) | **GET** /artifactory/api/search/latestVersion | Artifact Latest Version Search Based on Layout
[**search_latest_version_by_properties**](SearchesApi.md#search_latest_version_by_properties) | **GET** /artifactory/api/versions/{repo}/{path} | Artifact Latest Version Search Based on Properties
[**search_license**](SearchesApi.md#search_license) | **GET** /artifactory/api/search/license | License Search
[**search_pattern**](SearchesApi.md#search_pattern) | **GET** /artifactory/api/search/pattern | Pattern Search
[**search_property**](SearchesApi.md#search_property) | **GET** /artifactory/api/search/prop | Property Search
[**search_usage**](SearchesApi.md#search_usage) | **GET** /artifactory/api/search/usage | Artifacts Not Downloaded Since
[**search_versions**](SearchesApi.md#search_versions) | **GET** /artifactory/api/search/versions | Artifact Version Search


# **find_parent_manifest_lists**
> FindParentManifestLists200Response find_parent_manifest_lists(repo_key, image_name, find_parent_manifest_lists_request)

Find Parent Manifest Lists

Finds all parent manifest lists that include a specific Docker manifest. Since 7.119.0

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.find_parent_manifest_lists200_response import FindParentManifestLists200Response
from jfrog_client.models.find_parent_manifest_lists_request import FindParentManifestListsRequest
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
    api_instance = jfrog_client.SearchesApi(api_client)
    repo_key = 'repo_key_example' # str | Docker repository key
    image_name = 'image_name_example' # str | Docker image name
    find_parent_manifest_lists_request = jfrog_client.FindParentManifestListsRequest() # FindParentManifestListsRequest | 

    try:
        # Find Parent Manifest Lists
        api_response = api_instance.find_parent_manifest_lists(repo_key, image_name, find_parent_manifest_lists_request)
        print("The response of SearchesApi->find_parent_manifest_lists:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->find_parent_manifest_lists: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Docker repository key | 
 **image_name** | **str**| Docker image name | 
 **find_parent_manifest_lists_request** | [**FindParentManifestListsRequest**](FindParentManifestListsRequest.md)|  | 

### Return type

[**FindParentManifestLists200Response**](FindParentManifestLists200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_docker_repositories**
> ListDockerRepositories200Response list_docker_repositories(repo_key, n=n, last=last)

List Docker Repositories

Lists all Docker repositories (the registry's _catalog) hosted in an Artifactory Docker repository. Since 4.4.3. The n and last pagination parameters are supported from version 5.4.6. Both parameters refer to an integer.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.list_docker_repositories200_response import ListDockerRepositories200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    repo_key = 'repo_key_example' # str | Docker repository key
    n = 56 # int | Number of consecutive repositories (optional)
    last = 'last_example' # str | Last tag value from previous response (optional)

    try:
        # List Docker Repositories
        api_response = api_instance.list_docker_repositories(repo_key, n=n, last=last)
        print("The response of SearchesApi->list_docker_repositories:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->list_docker_repositories: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Docker repository key | 
 **n** | **int**| Number of consecutive repositories | [optional] 
 **last** | **str**| Last tag value from previous response | [optional] 

### Return type

[**ListDockerRepositories200Response**](ListDockerRepositories200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_docker_tags**
> ListDockerTags200Response list_docker_tags(repo_key, image_name, n=n, last=last)

List Docker Tags

Lists all tags of the specified Artifactory Docker repository. Since 4.4.3. The n and last pagination parameters are supported from version 5.4.6.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.list_docker_tags200_response import ListDockerTags200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    repo_key = 'repo_key_example' # str | Docker repository key
    image_name = 'image_name_example' # str | Docker image name
    n = 56 # int | Number of consecutive tags (optional)
    last = 56 # int | Last tag position (numeric) from previous response (optional)

    try:
        # List Docker Tags
        api_response = api_instance.list_docker_tags(repo_key, image_name, n=n, last=last)
        print("The response of SearchesApi->list_docker_tags:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->list_docker_tags: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Docker repository key | 
 **image_name** | **str**| Docker image name | 
 **n** | **int**| Number of consecutive tags | [optional] 
 **last** | **int**| Last tag position (numeric) from previous response | [optional] 

### Return type

[**ListDockerTags200Response**](ListDockerTags200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_aql**
> SearchAql200Response search_aql(body)

Artifactory Query Language (AQL)

Flexible and high performance search using Artifactory Query Language.

Since: 3.5.0

Security: Requires an authenticated user. Certain domains/queries may require Admin access.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_aql200_response import SearchAql200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    body = 'body_example' # str | 

    try:
        # Artifactory Query Language (AQL)
        api_response = api_instance.search_aql(body)
        print("The response of SearchesApi->search_aql:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_aql: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **str**|  | 

### Return type

[**SearchAql200Response**](SearchAql200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_archive**
> SearchArchive200Response search_archive(name=name, repos=repos)

Archive Entries Search (Class Search)

Search archive for classes or any other resources within an archive. Can limit search to specific repositories (local or caches). 

**Deprecation Notice**: This API is deprecated and is scheduled for removal in a future version of Artifactory. We strongly recommend using Artifactory Query Language (AQL) for all new development.

Since: 2.2.0

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_archive200_response import SearchArchive200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    name = 'name_example' # str | Archive entry name pattern (e.g., *Logger.class) (optional)
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)

    try:
        # Archive Entries Search (Class Search)
        api_response = api_instance.search_archive(name=name, repos=repos)
        print("The response of SearchesApi->search_archive:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_archive: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Archive entry name pattern (e.g., *Logger.class) | [optional] 
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 

### Return type

[**SearchArchive200Response**](SearchArchive200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_artifact**
> SearchArtifact200Response search_artifact(name, repos=repos, x_result_detail=x_result_detail)

Artifact Search (Quick Search)

Artifact search by part of file name. Searches return file info URIs. Can limit search to specific repositories (local or caches). 

Note: The search must be performed on the actual source repository (local or remote). Virtual repositories are not supported.

Since: 2.2.0

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_artifact200_response import SearchArtifact200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    name = 'name_example' # str | Part of file name to search for
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)
    x_result_detail = 'x_result_detail_example' # str | Optional header to include additional details: 'info' (adds all extra information of the found artifact), 'properties' (gets the properties of the found artifact), 'info, properties' (for both) (optional)

    try:
        # Artifact Search (Quick Search)
        api_response = api_instance.search_artifact(name, repos=repos, x_result_detail=x_result_detail)
        print("The response of SearchesApi->search_artifact:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_artifact: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Part of file name to search for | 
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 
 **x_result_detail** | **str**| Optional header to include additional details: &#39;info&#39; (adds all extra information of the found artifact), &#39;properties&#39; (gets the properties of the found artifact), &#39;info, properties&#39; (for both) | [optional] 

### Return type

[**SearchArtifact200Response**](SearchArtifact200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_bad_checksum**
> SearchBadChecksum200Response search_bad_checksum(type, repos=repos)

Bad Checksum Search

Find all artifacts that have bad or missing client checksum values (md5 or sha1). Searches return file info URIs. Can limit the search to specific repositories (local, remote-cache, or virtual).

Important: The response is limited to a maximum of 10,000 results.

Notes: Requires Artifactory Pro or higher

Since: 2.3.4

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_bad_checksum200_response import SearchBadChecksum200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    type = 'type_example' # str | Checksum type to search for
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)

    try:
        # Bad Checksum Search
        api_response = api_instance.search_bad_checksum(type, repos=repos)
        print("The response of SearchesApi->search_bad_checksum:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_bad_checksum: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **str**| Checksum type to search for | 
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 

### Return type

[**SearchBadChecksum200Response**](SearchBadChecksum200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. Note - The response is limited to a maximum of 10000 results. |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_build_artifacts**
> SearchBuildArtifacts200Response search_build_artifacts(search_build_artifacts_request)

Build Artifacts Search

Find all the artifacts related to a specific build.

Notes: Requires Artifactory Pro

Since: 2.6.5

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_build_artifacts200_response import SearchBuildArtifacts200Response
from jfrog_client.models.search_build_artifacts_request import SearchBuildArtifactsRequest
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
    api_instance = jfrog_client.SearchesApi(api_client)
    search_build_artifacts_request = jfrog_client.SearchBuildArtifactsRequest() # SearchBuildArtifactsRequest | 

    try:
        # Build Artifacts Search
        api_response = api_instance.search_build_artifacts(search_build_artifacts_request)
        print("The response of SearchesApi->search_build_artifacts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_build_artifacts: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search_build_artifacts_request** | [**SearchBuildArtifactsRequest**](SearchBuildArtifactsRequest.md)|  | 

### Return type

[**SearchBuildArtifacts200Response**](SearchBuildArtifacts200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_checksum**
> SearchArtifact200Response search_checksum(md5=md5, sha1=sha1, sha256=sha256, repos=repos, x_result_detail=x_result_detail)

Checksum Search

Artifact search by checksum (md5, sha1, or sha256). Searches return file info URIs. Can limit search to specific repositories (local, remote-cache or virtual).

Notes: Requires Artifactory Pro

Since: 2.3.0

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_artifact200_response import SearchArtifact200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    md5 = 'md5_example' # str | MD5 checksum (optional)
    sha1 = 'sha1_example' # str | SHA1 checksum (optional)
    sha256 = 'sha256_example' # str | SHA256 checksum (optional)
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)
    x_result_detail = 'x_result_detail_example' # str | Optional header to include additional details: 'info' (adds all extra information of the found artifact), 'properties' (gets the properties of the found artifact), 'info, properties' (for both) (optional)

    try:
        # Checksum Search
        api_response = api_instance.search_checksum(md5=md5, sha1=sha1, sha256=sha256, repos=repos, x_result_detail=x_result_detail)
        print("The response of SearchesApi->search_checksum:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_checksum: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **md5** | **str**| MD5 checksum | [optional] 
 **sha1** | **str**| SHA1 checksum | [optional] 
 **sha256** | **str**| SHA256 checksum | [optional] 
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 
 **x_result_detail** | **str**| Optional header to include additional details: &#39;info&#39; (adds all extra information of the found artifact), &#39;properties&#39; (gets the properties of the found artifact), &#39;info, properties&#39; (for both) | [optional] 

### Return type

[**SearchArtifact200Response**](SearchArtifact200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_creation**
> SearchCreation200Response search_creation(var_from, to=to, repos=repos)

Artifacts Created in Date Range

Get All Artifacts Created in Date Range. If 'to' is not specified use now(). Can limit search to specific repositories (local or remote-cache).

Since: 2.2.0

Security: Requires a privileged non-anonymous user


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_creation200_response import SearchCreation200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    var_from = 56 # int | Java epoch in milliseconds
    to = 56 # int | Java epoch in milliseconds (optional)
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)

    try:
        # Artifacts Created in Date Range
        api_response = api_instance.search_creation(var_from, to=to, repos=repos)
        print("The response of SearchesApi->search_creation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_creation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_from** | **int**| Java epoch in milliseconds | 
 **to** | **int**| Java epoch in milliseconds | [optional] 
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 

### Return type

[**SearchCreation200Response**](SearchCreation200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_dates**
> SearchDates200Response search_dates(var_from, date_fields, to=to, repos=repos)

Artifacts With Date in Date Range

Get all artifacts with specified dates within the given range. Search can be limited to specific repositories (local or caches).

Since: 3.2.1

Security: Requires a privileged non-anonymous user


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_dates200_response import SearchDates200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    var_from = jfrog_client.SearchDatesFromParameter() # SearchDatesFromParameter | The from parameter can be either a long value for the java epoch (milliseconds since the epoch), or an ISO8601 string value.
    date_fields = 'date_fields_example' # str | Comma-separated list of date fields that specify which fields the from and to values should be applied to. The supported date fields are created, lastModified, lastDownloaded.
    to = jfrog_client.SearchDatesFromParameter() # SearchDatesFromParameter | The to parameter can be either a long value for the java epoch (milliseconds since the epoch), or an ISO8601 string value. If to is not provided, now() will be used instead. (optional)
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)

    try:
        # Artifacts With Date in Date Range
        api_response = api_instance.search_dates(var_from, date_fields, to=to, repos=repos)
        print("The response of SearchesApi->search_dates:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_dates: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **var_from** | [**SearchDatesFromParameter**](.md)| The from parameter can be either a long value for the java epoch (milliseconds since the epoch), or an ISO8601 string value. | 
 **date_fields** | **str**| Comma-separated list of date fields that specify which fields the from and to values should be applied to. The supported date fields are created, lastModified, lastDownloaded. | 
 **to** | [**SearchDatesFromParameter**](.md)| The to parameter can be either a long value for the java epoch (milliseconds since the epoch), or an ISO8601 string value. If to is not provided, now() will be used instead. | [optional] 
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 

### Return type

[**SearchDates200Response**](SearchDates200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - If both parameters are omitted, 400 bad request is returned. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_dependency**
> SearchArtifact200Response search_dependency(sha1)

Builds for Dependency

Find all the builds an artifact is a dependency of (where the artifact is included in the build-info dependencies).

Notes: Requires Artifactory Pro

Since: 2.3.4

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_artifact200_response import SearchArtifact200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    sha1 = 'sha1_example' # str | SHA1 checksum

    try:
        # Builds for Dependency
        api_response = api_instance.search_dependency(sha1)
        print("The response of SearchesApi->search_dependency:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_dependency: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sha1** | **str**| SHA1 checksum | 

### Return type

[**SearchArtifact200Response**](SearchArtifact200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_gavc**
> SearchGavc200Response search_gavc(g=g, a=a, v=v, c=c, repos=repos, specific=specific, x_result_detail=x_result_detail)

GAVC Search

Search by Maven coordinates - GroupId, ArtifactId, Version & Classifier. The search must contain at least one argument. The search can be limited to specific repositories (local and remote-cache). 

Note: This endpoint requires a repository type or layout that supports GAVC, including Maven, Gradle, Ivy, and SBT.

Important: The exact GroupId and ArtifactId must be provided to search remote repositories.

Since: 2.2.0

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_gavc200_response import SearchGavc200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    g = 'g_example' # str | GroupId (optional)
    a = 'a_example' # str | ArtifactId (optional)
    v = 'v_example' # str | Version (optional)
    c = 'c_example' # str | Classifier (optional)
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)
    specific = False # bool | From Artifactory version 7.37.9, this attribute was added to support virtual and remote repositories. Once set to true, the output will be minimized to only include downloadUrl, ext, version, and classifier. (optional) (default to False)
    x_result_detail = 'x_result_detail_example' # str | Optional header to include additional details: 'info' (adds all extra information of the found artifact), 'properties' (gets the properties of the found artifact), 'info, properties' (for both) (optional)

    try:
        # GAVC Search
        api_response = api_instance.search_gavc(g=g, a=a, v=v, c=c, repos=repos, specific=specific, x_result_detail=x_result_detail)
        print("The response of SearchesApi->search_gavc:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_gavc: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **g** | **str**| GroupId | [optional] 
 **a** | **str**| ArtifactId | [optional] 
 **v** | **str**| Version | [optional] 
 **c** | **str**| Classifier | [optional] 
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 
 **specific** | **bool**| From Artifactory version 7.37.9, this attribute was added to support virtual and remote repositories. Once set to true, the output will be minimized to only include downloadUrl, ext, version, and classifier. | [optional] [default to False]
 **x_result_detail** | **str**| Optional header to include additional details: &#39;info&#39; (adds all extra information of the found artifact), &#39;properties&#39; (gets the properties of the found artifact), &#39;info, properties&#39; (for both) | [optional] 

### Return type

[**SearchGavc200Response**](SearchGavc200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_latest_version**
> str search_latest_version(g=g, a=a, v=v, remote=remote, repos=repos)

Artifact Latest Version Search Based on Layout

Search for the latest artifact version by groupId and artifactId, based on the definitions in the Repository Layouts. This API is based on a Maven-specific algorithm for sorting versions. Search can be limited to specific repositories (local, remote-cache, or virtual) by settings the repos parameter. Latest release vs. latest integration Unless the version parameter is specified, the search returns the latest artifact release version. When version is specified, e.g. 1.0-SNAPSHOT, the result is the latest integration version. Remote searches By default only local and cache repositories will be used. When specifying remote=1, Artifactory searches for versions on remote repositories. Filtering results (Artifactory 3.0.2+) The version parameter can accept the * and/or ? wildcards which will then filter the final result to match only those who match the given version pattern. Artifact path pattern The [org] and [module] fields must be specified in the artifact path pattern of the repository layout for this call to work.

Notes: Requires Artifactory Pro

Since: 2.6.0

Security: Requires a privileged user (can be anonymous)


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
    api_instance = jfrog_client.SearchesApi(api_client)
    g = 'g_example' # str | GroupId (optional)
    a = 'a_example' # str | ArtifactId (optional)
    v = 'v_example' # str | Version pattern (supports wildcards * and ?) (optional)
    remote = 0 # int | When specifying remote=1, Artifactory searches for versions on remote repositories. (optional) (default to 0)
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)

    try:
        # Artifact Latest Version Search Based on Layout
        api_response = api_instance.search_latest_version(g=g, a=a, v=v, remote=remote, repos=repos)
        print("The response of SearchesApi->search_latest_version:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_latest_version: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **g** | **str**| GroupId | [optional] 
 **a** | **str**| ArtifactId | [optional] 
 **v** | **str**| Version pattern (supports wildcards * and ?) | [optional] 
 **remote** | **int**| When specifying remote&#x3D;1, Artifactory searches for versions on remote repositories. | [optional] [default to 0]
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_latest_version_by_properties**
> SearchLatestVersionByProperties200Response search_latest_version_by_properties(repo, path, list_files=list_files)

Artifact Latest Version Search Based on Properties

Search for artifacts with the latest value in the version property. Only artifacts with the version property expressly defined in lowercase will be returned. 

This API is based on a Maven-specific algorithm for sorting versions. 

Results can be filtered by specifying additional properties. 

- {repo} Specify a repository to search through or replace with "_any" to search through all repositories. 
- {path} Specify a path to search through or replace with "_any" to search through all paths. 
- listFiles=0 (default) Artifactory will only retrieve the latest version. 
- listFiles=1 Artifactory will retrieve the latest version and the corresponding files. 

You may specify filters to restrict the set of artifacts that are searched by adding any properties to your search URL.

Notes: Requires Artifactory Pro

Since: 3.1.1

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_latest_version_by_properties200_response import SearchLatestVersionByProperties200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    repo = 'repo_example' # str | Specify a repository to search through or replace with \"_any\" to search through all repositories
    path = 'path_example' # str | Specify a path to search through or replace with \"_any\" to search through all paths
    list_files = 0 # int | listFiles=0 (default) Artifactory will only retrieve the latest version. listFiles=1 Artifactory will retrieve the latest version and the corresponding files. (optional) (default to 0)

    try:
        # Artifact Latest Version Search Based on Properties
        api_response = api_instance.search_latest_version_by_properties(repo, path, list_files=list_files)
        print("The response of SearchesApi->search_latest_version_by_properties:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_latest_version_by_properties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo** | **str**| Specify a repository to search through or replace with \&quot;_any\&quot; to search through all repositories | 
 **path** | **str**| Specify a path to search through or replace with \&quot;_any\&quot; to search through all paths | 
 **list_files** | **int**| listFiles&#x3D;0 (default) Artifactory will only retrieve the latest version. listFiles&#x3D;1 Artifactory will retrieve the latest version and the corresponding files. | [optional] [default to 0]

### Return type

[**SearchLatestVersionByProperties200Response**](SearchLatestVersionByProperties200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_license**
> SearchLicense200Response search_license(unapproved=unapproved, unknown=unknown, notfound=notfound, neutral=neutral, approved=approved, autofind=autofind, repos=repos)

License Search

Search for artifacts that were already tagged with license information and their respective licenses. To search by specific license values use Property Search with the 'artifactory.licenses' property. When the autofind parameter is specified Artifactory will try to automatically find new license information and return it as part of the result in the found field. Default parameter values when unspecified unapproved=1, unknown=1, notfound=0, neutral=0, approved=0, autofind=0. Can limit search to specific repositories (local, remote-cache or virtual).

Notes: Requires Artifactory Pro

Since: 2.3.0

Security: Requires an admin user


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_license200_response import SearchLicense200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    unapproved = 1 # int | Include unapproved licenses (optional) (default to 1)
    unknown = 1 # int | Include unknown licenses (optional) (default to 1)
    notfound = 0 # int | Include not found licenses (optional) (default to 0)
    neutral = 0 # int | Include neutral licenses (optional) (default to 0)
    approved = 0 # int | Include approved licenses (optional) (default to 0)
    autofind = 0 # int | Automatically find new license information (optional) (default to 0)
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)

    try:
        # License Search
        api_response = api_instance.search_license(unapproved=unapproved, unknown=unknown, notfound=notfound, neutral=neutral, approved=approved, autofind=autofind, repos=repos)
        print("The response of SearchesApi->search_license:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_license: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **unapproved** | **int**| Include unapproved licenses | [optional] [default to 1]
 **unknown** | **int**| Include unknown licenses | [optional] [default to 1]
 **notfound** | **int**| Include not found licenses | [optional] [default to 0]
 **neutral** | **int**| Include neutral licenses | [optional] [default to 0]
 **approved** | **int**| Include approved licenses | [optional] [default to 0]
 **autofind** | **int**| Automatically find new license information | [optional] [default to 0]
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 

### Return type

[**SearchLicense200Response**](SearchLicense200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_pattern**
> SearchPattern200Response search_pattern(pattern)

Pattern Search

Get all artifacts matching the given Ant path pattern. Pattern "**" is not supported to avoid overloading search results.

Notes: Requires Artifactory Pro

Since: 2.2.4

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_pattern200_response import SearchPattern200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    pattern = 'pattern_example' # str | Ant path pattern in format repo-key:this/is/a/*pattern*.war

    try:
        # Pattern Search
        api_response = api_instance.search_pattern(pattern)
        print("The response of SearchesApi->search_pattern:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_pattern: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pattern** | **str**| Ant path pattern in format repo-key:this/is/a/*pattern*.war | 

### Return type

[**SearchPattern200Response**](SearchPattern200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_property**
> SearchArtifact200Response search_property(p1=p1, p2=p2, repos=repos, x_result_detail=x_result_detail)

Property Search

Search by properties. If no value is specified for a property - assume '*'. Can limit search to specific repositories (local, remote-cache or virtual).

Since: 2.2.0

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_artifact200_response import SearchArtifact200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    p1 = 'p1_example' # str | Property key-value pairs in format p1=v1,v2 (optional)
    p2 = 'p2_example' # str | Additional property key-value pairs (optional)
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)
    x_result_detail = 'x_result_detail_example' # str | Optional header to include additional details: 'info' (adds all extra information of the found artifact), 'properties' (gets the properties of the found artifact), 'info, properties' (for both) (optional)

    try:
        # Property Search
        api_response = api_instance.search_property(p1=p1, p2=p2, repos=repos, x_result_detail=x_result_detail)
        print("The response of SearchesApi->search_property:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_property: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **p1** | **str**| Property key-value pairs in format p1&#x3D;v1,v2 | [optional] 
 **p2** | **str**| Additional property key-value pairs | [optional] 
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 
 **x_result_detail** | **str**| Optional header to include additional details: &#39;info&#39; (adds all extra information of the found artifact), &#39;properties&#39; (gets the properties of the found artifact), &#39;info, properties&#39; (for both) | [optional] 

### Return type

[**SearchArtifact200Response**](SearchArtifact200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_usage**
> SearchUsage200Response search_usage(not_used_since, created_before=created_before, repos=repos)

Artifacts Not Downloaded Since

Returns all artifacts not downloaded since the specified Java epoch in milliseconds. Optionally include only artifacts created before the specified createdBefore date, otherwise only artifacts created before notUsedSince are returned. Can limit search to specific repositories (local or caches).

Since: 2.2.4

Security: Requires a privileged non-anonymous user


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_usage200_response import SearchUsage200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    not_used_since = 56 # int | Java epoch in milliseconds
    created_before = 56 # int | Java epoch in milliseconds (optional)
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)

    try:
        # Artifacts Not Downloaded Since
        api_response = api_instance.search_usage(not_used_since, created_before=created_before, repos=repos)
        print("The response of SearchesApi->search_usage:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_usage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **not_used_since** | **int**| Java epoch in milliseconds | 
 **created_before** | **int**| Java epoch in milliseconds | [optional] 
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 

### Return type

[**SearchUsage200Response**](SearchUsage200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_versions**
> SearchVersions200Response search_versions(g=g, a=a, v=v, remote=remote, repos=repos)

Artifact Version Search

Search for all available artifact versions by GroupId and ArtifactId in local, remote or virtual repositories. Search can be limited to specific repositories (local, remote and virtual) by settings the repos parameter. Release/integration versions Unless the version parameter is specified, both release and integration versions are returned. When version is specified, e.g. 1.0-SNAPSHOT, result includes only integration versions. Remote searches By default only local and cache repositories are used. When specifying remote=1, Artifactory searches for versions on remote repositories. Filtering results (Artifactory 3.0.2+) The version parameter can accept the * and/or ? wildcards which will then filter the final result to match only those who match the given version pattern.

Notes: Requires Artifactory Pro

Since: 2.6.0

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_versions200_response import SearchVersions200Response
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
    api_instance = jfrog_client.SearchesApi(api_client)
    g = 'g_example' # str | GroupId (optional)
    a = 'a_example' # str | ArtifactId (optional)
    v = 'v_example' # str | Version pattern (supports wildcards * and ?) (optional)
    remote = 0 # int | When specifying remote=1, Artifactory searches for versions on remote repositories. NOTE! that this can dramatically slow down the search. (optional) (default to 0)
    repos = 'repos_example' # str | Comma-separated list of repository keys to limit search to (optional)

    try:
        # Artifact Version Search
        api_response = api_instance.search_versions(g=g, a=a, v=v, remote=remote, repos=repos)
        print("The response of SearchesApi->search_versions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchesApi->search_versions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **g** | **str**| GroupId | [optional] 
 **a** | **str**| ArtifactId | [optional] 
 **v** | **str**| Version pattern (supports wildcards * and ?) | [optional] 
 **remote** | **int**| When specifying remote&#x3D;1, Artifactory searches for versions on remote repositories. NOTE! that this can dramatically slow down the search. | [optional] [default to 0]
 **repos** | **str**| Comma-separated list of repository keys to limit search to | [optional] 

### Return type

[**SearchVersions200Response**](SearchVersions200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Missing required parameters or invalid query. |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

