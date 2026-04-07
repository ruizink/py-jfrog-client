# jfrog_client.ArtifactRetrievalApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**archive_entry_download**](ArtifactRetrievalApi.md#archive_entry_download) | **GET** /artifactory/api/{repoKey}/{archivePath}!/{entryPath} | Archive Entry Download
[**artifact_sync_download**](ArtifactRetrievalApi.md#artifact_sync_download) | **GET** /artifactory/api/download/{repoKey}/{filePath} | Artifact Sync Download
[**get_ruby_gem_version_list**](ArtifactRetrievalApi.md#get_ruby_gem_version_list) | **GET** /artifactory/api/gems/{repoName}/api/v1/versions/{gemName} | Get RubyGem Version List
[**retrieve_artifact**](ArtifactRetrievalApi.md#retrieve_artifact) | **GET** /artifactory/api/{repoKey}/{filePath} | Retrieve Artifact
[**retrieve_build_artifacts_archive**](ArtifactRetrievalApi.md#retrieve_build_artifacts_archive) | **POST** /artifactory/api/archive/buildArtifacts | Retrieve Build Artifacts Archive
[**retrieve_folder_or_repository_archive**](ArtifactRetrievalApi.md#retrieve_folder_or_repository_archive) | **GET** /artifactory/api/archive/download/{repoKey}/{path} | Retrieve Folder or Repository Archive


# **archive_entry_download**
> str archive_entry_download(repo_key, archive_path, entry_path)

Archive Entry Download

Returns an archived resource from the specified archive destination.

The `!` must be between the archive file name and the archive entry path, and will not work without the `/` after the `!`.

Security: Requires a user with 'read' permission (can be anonymous)


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
    api_instance = jfrog_client.ArtifactRetrievalApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    archive_path = 'archive_path_example' # str | Path to the archive file
    entry_path = 'entry_path_example' # str | Path to the resource within the archive (e.g., META-INF/MANIFEST.MF)

    try:
        # Archive Entry Download
        api_response = api_instance.archive_entry_download(repo_key, archive_path, entry_path)
        print("The response of ArtifactRetrievalApi->archive_entry_download:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactRetrievalApi->archive_entry_download: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **archive_path** | **str**| Path to the archive file | 
 **entry_path** | **str**| Path to the resource within the archive (e.g., META-INF/MANIFEST.MF) | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved archived resource |  -  |
**400** | Bad Request - Invalid path, non-existent archive, or malformed entry path. |  -  |
**401** | Bad Credentials - Authentication failed |  -  |
**403** | Permission Denied - User does not have read permissions |  -  |
**404** | Not Found - Archive or entry does not exist |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **artifact_sync_download**
> bytes artifact_sync_download(repo_key, file_path, content=content, mark=mark)

Artifact Sync Download

Downloads an artifact with or without returning the actual content to the client. When tracking the progress marks are printed (by default every 1024 bytes). This is extremely useful if you want to trigger downloads on a remote Artifactory server, for example to force eager cache population of large artifacts, but want to avoid the bandwidth consumption involved in transferring the artifacts to the triggering client. 

Notes: Requires Artifactory Pro.

Since: 2.2.2

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
    api_instance = jfrog_client.ArtifactRetrievalApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    file_path = 'file_path_example' # str | File path within the repository
    content = 'content_example' # str | Content mode (none, progress, or omit for full content) (optional)
    mark = 1024 # int | Number of bytes to print a new progress mark (optional) (default to 1024)

    try:
        # Artifact Sync Download
        api_response = api_instance.artifact_sync_download(repo_key, file_path, content=content, mark=mark)
        print("The response of ArtifactRetrievalApi->artifact_sync_download:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactRetrievalApi->artifact_sync_download: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **file_path** | **str**| File path within the repository | 
 **content** | **str**| Content mode (none, progress, or omit for full content) | [optional] 
 **mark** | **int**| Number of bytes to print a new progress mark | [optional] [default to 1024]

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/plain, text/html, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Download completed successfully |  -  |
**400** | Bad Request - Invalid path or non-printable characters in the repo/file path. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions. |  -  |
**404** | Not Found - The specified file does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ruby_gem_version_list**
> List[RubyGemVersion] get_ruby_gem_version_list(repo_name, gem_name)

Get RubyGem Version List

Returns the list of versions and other metadata associated with a specific Ruby gem.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.ruby_gem_version import RubyGemVersion
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
    api_instance = jfrog_client.ArtifactRetrievalApi(api_client)
    repo_name = 'repo_name_example' # str | Repository name
    gem_name = 'gem_name_example' # str | Gem name

    try:
        # Get RubyGem Version List
        api_response = api_instance.get_ruby_gem_version_list(repo_name, gem_name)
        print("The response of ArtifactRetrievalApi->get_ruby_gem_version_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactRetrievalApi->get_ruby_gem_version_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| Repository name | 
 **gem_name** | **str**| Gem name | 

### Return type

[**List[RubyGemVersion]**](RubyGemVersion.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/yaml

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved RubyGem version list |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**404** | Not Found - The specified gem does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_artifact**
> bytes retrieve_artifact(repo_key, file_path, skip_update_stats=skip_update_stats, trace=trace)

Retrieve Artifact

Returns an artifact from the specified destination.

You can also use properties in deployment and resolution as part of retrieving artifacts.

Special tokens for retrieving latest versions:
- **Latest Maven Release/Integration**: Specify SNAPSHOT or [RELEASE] for the version in the requested path to get the latest Maven integration or release artifact.
- **Latest Non-Maven Release/Integration**: Specify [INTEGRATION] and [RELEASE] for the version in the requested path (replacing [folderItegRev] and [fileItegRev], as defined by the repository's Repository Layouts) to get the latest integration version or latest release version artifact accordingly based on alphabetical sorting.

Notes:
- Integration and release tokens cannot be mixed together.
- Only local, cache and virtual repositories will be used for latest version resolution.
- To change the retrieve latest behavior to retrieve the latest version based on the created date, add `artifactory.request.searchLatestReleaseByDateCreated=true` to `artifactory.system.properties` and restart Artifactory.
- Both [folderItegRev] and [fileItegRev] have to be defined in the repository layout.
- Latest version resolution requires Artifactory Pro.

Since: Latest Maven: 2.6.0; Latest non-Maven: 2.6.2
Security: Requires a user with 'read' permission (can be anonymous)


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
    api_instance = jfrog_client.ArtifactRetrievalApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    file_path = 'file_path_example' # str | Path to the artifact within the repository. Can include special tokens: SNAPSHOT, [RELEASE], [INTEGRATION] for latest version resolution.
    skip_update_stats = False # bool | Skip updating download statistics for this artifact (optional) (default to False)
    trace = True # bool | Simulates an artifact retrieval request and returns verbose output about the resolution process. Useful for debugging artifact retrieval issues. (optional)

    try:
        # Retrieve Artifact
        api_response = api_instance.retrieve_artifact(repo_key, file_path, skip_update_stats=skip_update_stats, trace=trace)
        print("The response of ArtifactRetrievalApi->retrieve_artifact:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactRetrievalApi->retrieve_artifact: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **file_path** | **str**| Path to the artifact within the repository. Can include special tokens: SNAPSHOT, [RELEASE], [INTEGRATION] for latest version resolution. | 
 **skip_update_stats** | **bool**| Skip updating download statistics for this artifact | [optional] [default to False]
 **trace** | **bool**| Simulates an artifact retrieval request and returns verbose output about the resolution process. Useful for debugging artifact retrieval issues. | [optional] 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, text/plain, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved artifact or trace output |  -  |
**401** | Bad Credentials - Authentication failed |  -  |
**403** | Permission Denied - User does not have read permissions |  -  |
**404** | Not Found - Artifact does not exist |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_build_artifacts_archive**
> bytes retrieve_build_artifacts_archive(build_artifacts_request)

Retrieve Build Artifacts Archive

Returns an archive file (supports zip/tar/tar.gz/tgz) containing all the artifacts related to a specific build, you can optionally provide mappings to filter the results; the mappings support regexp capturing groups which enables you to dynamically construct the target path inside the result archive file. 

Requires Artifactory Pro.

Since: 2.6.5

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.build_artifacts_request import BuildArtifactsRequest
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
    api_instance = jfrog_client.ArtifactRetrievalApi(api_client)
    build_artifacts_request = jfrog_client.BuildArtifactsRequest() # BuildArtifactsRequest | Build artifacts archive request

    try:
        # Retrieve Build Artifacts Archive
        api_response = api_instance.retrieve_build_artifacts_archive(build_artifacts_request)
        print("The response of ArtifactRetrievalApi->retrieve_build_artifacts_archive:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactRetrievalApi->retrieve_build_artifacts_archive: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **build_artifacts_request** | [**BuildArtifactsRequest**](BuildArtifactsRequest.md)| Build artifacts archive request | 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, application/x-tar, application/x-gzip, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved build artifacts archive |  -  |
**400** | Bad Request - The request body is malformed or invalid. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **retrieve_folder_or_repository_archive**
> bytes retrieve_folder_or_repository_archive(repo_key, path, archive_type, include_checksum_files=include_checksum_files)

Retrieve Folder or Repository Archive

Returns an archive file (supports zip/tar/tar.gz/tgz) containing all the artifacts that reside under the specified path (folder or repository root). Requires Enable Folder Download to be set. 

Requires Artifactory Pro. 

Since: 4.1.0

Security: Requires a privileged user with read permissions on the path.

Downloading a folder or a repository's root is only supported for local (or cache) repositories.


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
    api_instance = jfrog_client.ArtifactRetrievalApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    path = 'path_example' # str | Path within the repository (use empty string for repository root)
    archive_type = 'archive_type_example' # str | Archive type
    include_checksum_files = True # bool | Include checksum files in the archive (optional)

    try:
        # Retrieve Folder or Repository Archive
        api_response = api_instance.retrieve_folder_or_repository_archive(repo_key, path, archive_type, include_checksum_files=include_checksum_files)
        print("The response of ArtifactRetrievalApi->retrieve_folder_or_repository_archive:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactRetrievalApi->retrieve_folder_or_repository_archive: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **path** | **str**| Path within the repository (use empty string for repository root) | 
 **archive_type** | **str**| Archive type | 
 **include_checksum_files** | **bool**| Include checksum files in the archive | [optional] 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/x-tar, application/x-gzip, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved folder or repository archive |  -  |
**400** | Bad Request - Invalid path characters or malformed archive type. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have read permissions on the path, or folder download is blocked by Xray. |  -  |
**404** | Not Found - The specified repository or path does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

