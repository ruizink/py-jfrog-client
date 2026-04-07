# jfrog_client.SourceCodeV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_git_commit_scan_results**](SourceCodeV1Api.md#get_git_commit_scan_results) | **GET** /xray/api/v1/git/repositories/{repository_id}/commits/{commit_hash}/scan-results | Get Scan Results for a Commit
[**get_git_repositories**](SourceCodeV1Api.md#get_git_repositories) | **GET** /xray/api/v1/git/repositories | Get Git Repositories
[**get_git_repository_branches**](SourceCodeV1Api.md#get_git_repository_branches) | **GET** /xray/api/v1/git/repositories/{repository_id}/branches | Get Branches for a Repository
[**get_git_repository_commits**](SourceCodeV1Api.md#get_git_repository_commits) | **GET** /xray/api/v1/git/repositories/{repository_id}/commits | Get Commits for a Branch


# **get_git_commit_scan_results**
> GetGitCommitScanResults200Response get_git_commit_scan_results(repository_id, commit_hash, branch_name)

Get Scan Results for a Commit

Retrieves the scan results data associated with a specific commit in a branch of a repository. The scan results provide insights into vulnerabilities, SBOM components, operational risks, secrets, IaC issues, and SAST findings detected at the time of the commit.

If the same commit was scanned multiple times (e.g., by different jobs), the API returns findings from all scans. It does not deduplicate issues across scans.

Requires a user with READ permissions. Since Xray 3.122.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_git_commit_scan_results200_response import GetGitCommitScanResults200Response
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
    api_instance = jfrog_client.SourceCodeV1Api(api_client)
    repository_id = 'repository_id_example' # str | The unique identifier of the repository.
    commit_hash = 'commit_hash_example' # str | The hash of the commit for which to retrieve scan results.
    branch_name = 'branch_name_example' # str | The name of the branch that contains the commit.

    try:
        # Get Scan Results for a Commit
        api_response = api_instance.get_git_commit_scan_results(repository_id, commit_hash, branch_name)
        print("The response of SourceCodeV1Api->get_git_commit_scan_results:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SourceCodeV1Api->get_git_commit_scan_results: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_id** | **str**| The unique identifier of the repository. | 
 **commit_hash** | **str**| The hash of the commit for which to retrieve scan results. | 
 **branch_name** | **str**| The name of the branch that contains the commit. | 

### Return type

[**GetGitCommitScanResults200Response**](GetGitCommitScanResults200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Scan results retrieved successfully. |  -  |
**400** | Bad request - invalid parameters. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_git_repositories**
> GetGitRepositories200Response get_git_repositories(page=page, limit=limit, order_by=order_by, direction=direction)

Get Git Repositories

Retrieves a list of all git repositories that have been scanned. Allows fetching comprehensive information about git repositories based on scans that have been performed. You can apply various filters to refine the results.

Requires a user with READ permissions. Since Xray 3.122.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_git_repositories200_response import GetGitRepositories200Response
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
    api_instance = jfrog_client.SourceCodeV1Api(api_client)
    page = 56 # int | Page number for pagination. Default: 1. (optional)
    limit = 56 # int | Number of results per page. Default: 50. (optional)
    order_by = 'order_by_example' # str | Sort field: id, name, or last_scanned_date. (optional)
    direction = 'direction_example' # str | Sort direction: asc or desc. (optional)

    try:
        # Get Git Repositories
        api_response = api_instance.get_git_repositories(page=page, limit=limit, order_by=order_by, direction=direction)
        print("The response of SourceCodeV1Api->get_git_repositories:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SourceCodeV1Api->get_git_repositories: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number for pagination. Default: 1. | [optional] 
 **limit** | **int**| Number of results per page. Default: 50. | [optional] 
 **order_by** | **str**| Sort field: id, name, or last_scanned_date. | [optional] 
 **direction** | **str**| Sort direction: asc or desc. | [optional] 

### Return type

[**GetGitRepositories200Response**](GetGitRepositories200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | List of git repositories retrieved successfully. |  -  |
**400** | Bad request - invalid parameters. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_git_repository_branches**
> GetGitRepositoryBranches200Response get_git_repository_branches(repository_id, page=page, limit=limit, order_by=order_by, direction=direction)

Get Branches for a Repository

Retrieves all branches that belong to a specific repository. Allows fetching all Git branches associated with a given repository identified by its repository_id.

Requires a user with READ permissions. Since Xray 3.122.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_git_repository_branches200_response import GetGitRepositoryBranches200Response
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
    api_instance = jfrog_client.SourceCodeV1Api(api_client)
    repository_id = 'repository_id_example' # str | The unique identifier of the repository.
    page = 56 # int | Page number for pagination. Default: 1. (optional)
    limit = 56 # int | Number of results per page. Default: 50. (optional)
    order_by = 'order_by_example' # str | Sort field: name or last_scanned_date. (optional)
    direction = 'direction_example' # str | Sort direction: asc or desc. (optional)

    try:
        # Get Branches for a Repository
        api_response = api_instance.get_git_repository_branches(repository_id, page=page, limit=limit, order_by=order_by, direction=direction)
        print("The response of SourceCodeV1Api->get_git_repository_branches:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SourceCodeV1Api->get_git_repository_branches: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_id** | **str**| The unique identifier of the repository. | 
 **page** | **int**| Page number for pagination. Default: 1. | [optional] 
 **limit** | **int**| Number of results per page. Default: 50. | [optional] 
 **order_by** | **str**| Sort field: name or last_scanned_date. | [optional] 
 **direction** | **str**| Sort direction: asc or desc. | [optional] 

### Return type

[**GetGitRepositoryBranches200Response**](GetGitRepositoryBranches200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Branches retrieved successfully. |  -  |
**400** | Bad request - invalid parameters. |  -  |
**404** | Repository not found: repository_id does not exist. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_git_repository_commits**
> GetGitRepositoryCommits200Response get_git_repository_commits(repository_id, branch_name, page=page, limit=limit, order_by=order_by, direction=direction)

Get Commits for a Branch

Retrieves all commits that were scanned for a specific branch within a repository. The branch_name query parameter is required.

Requires a user with READ permissions. Since Xray 3.122.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_git_repository_commits200_response import GetGitRepositoryCommits200Response
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
    api_instance = jfrog_client.SourceCodeV1Api(api_client)
    repository_id = 'repository_id_example' # str | The unique identifier of the repository.
    branch_name = 'branch_name_example' # str | The name of the branch for which you want to retrieve commits.
    page = 56 # int | Page number for pagination. Default: 1. (optional)
    limit = 56 # int | Number of results per page. Default: 50. (optional)
    order_by = 'order_by_example' # str | Sort field: author or last_scanned_date. (optional)
    direction = 'direction_example' # str | Sort direction: asc or desc. (optional)

    try:
        # Get Commits for a Branch
        api_response = api_instance.get_git_repository_commits(repository_id, branch_name, page=page, limit=limit, order_by=order_by, direction=direction)
        print("The response of SourceCodeV1Api->get_git_repository_commits:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SourceCodeV1Api->get_git_repository_commits: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository_id** | **str**| The unique identifier of the repository. | 
 **branch_name** | **str**| The name of the branch for which you want to retrieve commits. | 
 **page** | **int**| Page number for pagination. Default: 1. | [optional] 
 **limit** | **int**| Number of results per page. Default: 50. | [optional] 
 **order_by** | **str**| Sort field: author or last_scanned_date. | [optional] 
 **direction** | **str**| Sort direction: asc or desc. | [optional] 

### Return type

[**GetGitRepositoryCommits200Response**](GetGitRepositoryCommits200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Commits retrieved successfully. |  -  |
**400** | Bad request - invalid parameters. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

