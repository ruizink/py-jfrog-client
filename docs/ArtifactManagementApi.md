# jfrog_client.ArtifactManagementApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**copy_item**](ArtifactManagementApi.md#copy_item) | **POST** /artifactory/api/copy/{srcRepoKey}/{srcFilePath} | Copy Item
[**delete_item**](ArtifactManagementApi.md#delete_item) | **DELETE** /artifactory/api/{repoKey}/{filePath} | Delete Item
[**move_item**](ArtifactManagementApi.md#move_item) | **POST** /artifactory/api/move/{srcRepoKey}/{srcFilePath} | Move Item


# **copy_item**
> CopyOrMoveResult copy_item(src_repo_key, src_file_path, to, dry=dry, suppress_layouts=suppress_layouts, fail_fast=fail_fast)

Copy Item

Copy an artifact or a folder to the specified destination. Supported for local, remote and Federated repositories only. Optionally suppress cross-layout module path translation during copy. You can test the copy using a dry run. 

Notes: Requires Artifactory Pro.

Since: 2.2.2

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.copy_or_move_result import CopyOrMoveResult
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
    api_instance = jfrog_client.ArtifactManagementApi(api_client)
    src_repo_key = 'src_repo_key_example' # str | Source repository key
    src_file_path = 'src_file_path_example' # str | Source file path
    to = 'to_example' # str | Target path (format - /{targetRepoKey}/{targetFilePath})
    dry = 0 # int | Dry run mode (1 for dry run, 0 for actual copy) (optional) (default to 0)
    suppress_layouts = 1 # int | Suppress cross-layout module path translation (0 or 1, default 1) (optional) (default to 1)
    fail_fast = 56 # int | Fail fast on errors (0 or 1) (optional)

    try:
        # Copy Item
        api_response = api_instance.copy_item(src_repo_key, src_file_path, to, dry=dry, suppress_layouts=suppress_layouts, fail_fast=fail_fast)
        print("The response of ArtifactManagementApi->copy_item:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactManagementApi->copy_item: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_repo_key** | **str**| Source repository key | 
 **src_file_path** | **str**| Source file path | 
 **to** | **str**| Target path (format - /{targetRepoKey}/{targetFilePath}) | 
 **dry** | **int**| Dry run mode (1 for dry run, 0 for actual copy) | [optional] [default to 0]
 **suppress_layouts** | **int**| Suppress cross-layout module path translation (0 or 1, default 1) | [optional] [default to 1]
 **fail_fast** | **int**| Fail fast on errors (0 or 1) | [optional] 

### Return type

[**CopyOrMoveResult**](CopyOrMoveResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.org.jfrog.artifactory.storage.CopyOrMoveResult+json, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Item copied successfully |  -  |
**400** | Bad Request - The request parameters are invalid or the source path does not exist. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_item**
> delete_item(repo_key, file_path)

Delete Item

Deletes a file or a folder from the specified local repository or remote repository cache.

Security: Requires a user with 'delete' permission (can be anonymous)


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
    api_instance = jfrog_client.ArtifactManagementApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    file_path = 'file_path_example' # str | Path to the file or folder within the repository

    try:
        # Delete Item
        api_instance.delete_item(repo_key, file_path)
    except Exception as e:
        print("Exception when calling ArtifactManagementApi->delete_item: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **file_path** | **str**| Path to the file or folder within the repository | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | No Content - Item deleted successfully |  -  |
**401** | Bad Credentials - Authentication failed |  -  |
**403** | Permission Denied - User does not have delete permissions |  -  |
**404** | Not Found - Item does not exist |  -  |
**405** | Method Not Allowed - The target path resolves to a repository that does not support DELETE (e.g., a remote or virtual repository). |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **move_item**
> CopyOrMoveResult move_item(src_repo_key, src_file_path, to, dry=dry, suppress_layouts=suppress_layouts, fail_fast=fail_fast)

Move Item

Moves an artifact or a folder to the specified destination. Supported by local repositories only. Optionally suppress cross-layout module path translation during move. You can test the move using dry run. 

Notes: Requires Artifactory Pro.

Since: 2.2.2

Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.copy_or_move_result import CopyOrMoveResult
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
    api_instance = jfrog_client.ArtifactManagementApi(api_client)
    src_repo_key = 'src_repo_key_example' # str | Source repository key
    src_file_path = 'src_file_path_example' # str | Source file path
    to = 'to_example' # str | Target path (format - /{targetRepoKey}/{targetFilePath})
    dry = 0 # int | Dry run mode (1 for dry run, 0 for actual move) (optional) (default to 0)
    suppress_layouts = 1 # int | Suppress cross-layout module path translation (0 or 1, default 1) (optional) (default to 1)
    fail_fast = 56 # int | Fail fast on errors (0 or 1) (optional)

    try:
        # Move Item
        api_response = api_instance.move_item(src_repo_key, src_file_path, to, dry=dry, suppress_layouts=suppress_layouts, fail_fast=fail_fast)
        print("The response of ArtifactManagementApi->move_item:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactManagementApi->move_item: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **src_repo_key** | **str**| Source repository key | 
 **src_file_path** | **str**| Source file path | 
 **to** | **str**| Target path (format - /{targetRepoKey}/{targetFilePath}) | 
 **dry** | **int**| Dry run mode (1 for dry run, 0 for actual move) | [optional] [default to 0]
 **suppress_layouts** | **int**| Suppress cross-layout module path translation (0 or 1, default 1) | [optional] [default to 1]
 **fail_fast** | **int**| Fail fast on errors (0 or 1) | [optional] 

### Return type

[**CopyOrMoveResult**](CopyOrMoveResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.org.jfrog.artifactory.storage.CopyOrMoveResult+json, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Item moved successfully |  -  |
**400** | Bad Request - The request parameters are invalid or the source path does not exist. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

