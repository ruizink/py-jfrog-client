# jfrog_client.VCSApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_file_in_vcs_branch_in_subgroup_repository**](VCSApi.md#download_file_in_vcs_branch_in_subgroup_repository) | **GET** /artifactory/api/vcs/downloadBranchFile/{repoKey}/{userOrg}/{repo}/archive/refs/{branchName} | Download a File in a VCS Branch in a Subgroup Repository
[**download_file_in_vcs_tag_in_subgroup_repository**](VCSApi.md#download_file_in_vcs_tag_in_subgroup_repository) | **GET** /artifactory/api/vcs/downloadTagFile/{repoKey}/{userOrg}/{repo}/archive/refs/{tagName} | Download a File in a VCS Tag in a Subgroup Repository
[**download_file_within_vcs_branch**](VCSApi.md#download_file_within_vcs_branch) | **GET** /artifactory/api/vcs/downloadBranchFile/{repoKey}/{userOrg}/{repo}/{branchName} | Download File within a VCS Branch
[**download_file_within_vcs_branch_alternative**](VCSApi.md#download_file_within_vcs_branch_alternative) | **GET** /artifactory/api/vcs/downloadBranchFile/{repoKey}/{userOrg}/{branchName} | Download File within a VCS Branch (Alternative Format)
[**download_file_within_vcs_tag**](VCSApi.md#download_file_within_vcs_tag) | **GET** /artifactory/api/vcs/downloadTagFile/{repoKey}/{userOrg}/{repo}/{tagName} | Download File within a VCS Tag
[**download_file_within_vcs_tag_alternative**](VCSApi.md#download_file_within_vcs_tag_alternative) | **GET** /artifactory/api/vcs/downloadTagFile/{repoKey}/{userOrg}/{tagName} | Download File within a VCS Tag (Alternative Format)
[**download_vcs_branch**](VCSApi.md#download_vcs_branch) | **GET** /artifactory/api/vcs/downloadBranch/{repoKey}/{userOrg}/{repo}/{branchName} | Download a VCS Branch
[**download_vcs_branch_alternative**](VCSApi.md#download_vcs_branch_alternative) | **GET** /artifactory/api/vcs/downloadBranch/{repoKey}/{userOrg}/{branchName} | Download a VCS Branch (Alternative Format)
[**download_vcs_branch_from_subgroup_repository**](VCSApi.md#download_vcs_branch_from_subgroup_repository) | **GET** /artifactory/api/vcs/downloadBranch/{repoKey}/{userOrg}/{repo}/archive/refs/{branchName} | Download a VCS Branch from a Subgroup Repository
[**download_vcs_commit**](VCSApi.md#download_vcs_commit) | **GET** /artifactory/api/vcs/downloadCommit/{repoKey}/{userOrg}/{repo}/{commitId} | Download a VCS Commit
[**download_vcs_release**](VCSApi.md#download_vcs_release) | **GET** /artifactory/api/vcs/downloadRelease/{repoKey}/{userOrg}/{repo}/{releaseName} | Download a VCS Release
[**download_vcs_tag**](VCSApi.md#download_vcs_tag) | **GET** /artifactory/api/vcs/downloadTag/{repoKey}/{userOrg}/{repo}/{tagName} | Download a VCS Tag
[**download_vcs_tag_alternative**](VCSApi.md#download_vcs_tag_alternative) | **GET** /artifactory/api/vcs/downloadTag/{repoKey}/{userOrg}/{tagName} | Download a VCS Tag (Alternative Format)
[**download_vcs_tag_from_subgroup_repository**](VCSApi.md#download_vcs_tag_from_subgroup_repository) | **GET** /artifactory/api/vcs/downloadTag/{repoKey}/{userOrg}/{repo}/archive/refs/{tagName} | Download a VCS Tag from a Subgroup Repository
[**get_vcs_branches**](VCSApi.md#get_vcs_branches) | **GET** /artifactory/api/vcs/branches/{repoKey}/{userOrg}/{repo} | Get VCS Branches
[**get_vcs_refs**](VCSApi.md#get_vcs_refs) | **GET** /artifactory/api/vcs/refs/{repoKey}/{userOrg}/{repo} | Get VCS Refs
[**get_vcs_tags**](VCSApi.md#get_vcs_tags) | **GET** /artifactory/api/vcs/tags/{repoKey}/{userOrg}/{repo} | Get VCS Tags


# **download_file_in_vcs_branch_in_subgroup_repository**
> bytes download_file_in_vcs_branch_in_subgroup_repository(repo_key, user_org, repo, branch_name)

Download a File in a VCS Branch in a Subgroup Repository

Downloads a specific file that is in a VCS branch in a subgroup repository.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name
    branch_name = 'branch_name_example' # str | The branch name and file path (format {branch-name}!{file-path})

    try:
        # Download a File in a VCS Branch in a Subgroup Repository
        api_response = api_instance.download_file_in_vcs_branch_in_subgroup_repository(repo_key, user_org, repo, branch_name)
        print("The response of VCSApi->download_file_in_vcs_branch_in_subgroup_repository:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_file_in_vcs_branch_in_subgroup_repository: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 
 **branch_name** | **str**| The branch name and file path (format {branch-name}!{file-path}) | 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_file_in_vcs_tag_in_subgroup_repository**
> bytes download_file_in_vcs_tag_in_subgroup_repository(repo_key, user_org, repo, tag_name)

Download a File in a VCS Tag in a Subgroup Repository

Downloads a specific file that is in a VCS tag in a subgroup repository.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name
    tag_name = 'tag_name_example' # str | The tag name and file path (format {tag-name}!{file-path})

    try:
        # Download a File in a VCS Tag in a Subgroup Repository
        api_response = api_instance.download_file_in_vcs_tag_in_subgroup_repository(repo_key, user_org, repo, tag_name)
        print("The response of VCSApi->download_file_in_vcs_tag_in_subgroup_repository:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_file_in_vcs_tag_in_subgroup_repository: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 
 **tag_name** | **str**| The tag name and file path (format {tag-name}!{file-path}) | 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_file_within_vcs_branch**
> bytes download_file_within_vcs_branch(repo_key, user_org, repo, branch_name)

Download File within a VCS Branch

Downloads a specific file from within a branch.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name
    branch_name = 'branch_name_example' # str | The branch name and file path (format {branch-name}!{file-path})

    try:
        # Download File within a VCS Branch
        api_response = api_instance.download_file_within_vcs_branch(repo_key, user_org, repo, branch_name)
        print("The response of VCSApi->download_file_within_vcs_branch:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_file_within_vcs_branch: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 
 **branch_name** | **str**| The branch name and file path (format {branch-name}!{file-path}) | 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_file_within_vcs_branch_alternative**
> bytes download_file_within_vcs_branch_alternative(repo_key, user_org, branch_name)

Download File within a VCS Branch (Alternative Format)

Downloads a specific file from within a branch using userOrg as the repository.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization (used as repository)
    branch_name = 'branch_name_example' # str | The branch name and file path (format {branch-name}!{file-path})

    try:
        # Download File within a VCS Branch (Alternative Format)
        api_response = api_instance.download_file_within_vcs_branch_alternative(repo_key, user_org, branch_name)
        print("The response of VCSApi->download_file_within_vcs_branch_alternative:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_file_within_vcs_branch_alternative: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization (used as repository) | 
 **branch_name** | **str**| The branch name and file path (format {branch-name}!{file-path}) | 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_file_within_vcs_tag**
> bytes download_file_within_vcs_tag(repo_key, user_org, repo, tag_name)

Download File within a VCS Tag

Download a specific file from within a tag.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name
    tag_name = 'tag_name_example' # str | The tag name and file path (format {tag-name}!{file-path})

    try:
        # Download File within a VCS Tag
        api_response = api_instance.download_file_within_vcs_tag(repo_key, user_org, repo, tag_name)
        print("The response of VCSApi->download_file_within_vcs_tag:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_file_within_vcs_tag: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 
 **tag_name** | **str**| The tag name and file path (format {tag-name}!{file-path}) | 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_file_within_vcs_tag_alternative**
> bytes download_file_within_vcs_tag_alternative(repo_key, user_org, tag_name)

Download File within a VCS Tag (Alternative Format)

Download a specific file from within a tag using userOrg as the repository.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization (used as repository)
    tag_name = 'tag_name_example' # str | The tag name and file path (format {tag-name}!{file-path})

    try:
        # Download File within a VCS Tag (Alternative Format)
        api_response = api_instance.download_file_within_vcs_tag_alternative(repo_key, user_org, tag_name)
        print("The response of VCSApi->download_file_within_vcs_tag_alternative:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_file_within_vcs_tag_alternative: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization (used as repository) | 
 **tag_name** | **str**| The tag name and file path (format {tag-name}!{file-path}) | 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_vcs_branch**
> bytes download_vcs_branch(repo_key, user_org, repo, branch_name, ext=ext, properties=properties)

Download a VCS Branch

Downloads a tarball (tar.gz/zip) of a complete branch. Downloading can be executed conditionally according to properties by specifying the properties query param.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name
    branch_name = 'branch_name_example' # str | The branch name
    ext = tar.gz # str | The archive format (optional) (default to tar.gz)
    properties = 'properties_example' # str | Properties filter (e.g., qa=approved) (optional)

    try:
        # Download a VCS Branch
        api_response = api_instance.download_vcs_branch(repo_key, user_org, repo, branch_name, ext=ext, properties=properties)
        print("The response of VCSApi->download_vcs_branch:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_vcs_branch: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 
 **branch_name** | **str**| The branch name | 
 **ext** | **str**| The archive format | [optional] [default to tar.gz]
 **properties** | **str**| Properties filter (e.g., qa&#x3D;approved) | [optional] 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_vcs_branch_alternative**
> bytes download_vcs_branch_alternative(repo_key, user_org, branch_name, ext=ext, properties=properties)

Download a VCS Branch (Alternative Format)

Downloads a tarball (tar.gz/zip) of a complete branch using userOrg as the repository.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization (used as repository)
    branch_name = 'branch_name_example' # str | The branch name
    ext = tar.gz # str | The archive format (optional) (default to tar.gz)
    properties = 'properties_example' # str | Properties filter (e.g., qa=approved) (optional)

    try:
        # Download a VCS Branch (Alternative Format)
        api_response = api_instance.download_vcs_branch_alternative(repo_key, user_org, branch_name, ext=ext, properties=properties)
        print("The response of VCSApi->download_vcs_branch_alternative:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_vcs_branch_alternative: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization (used as repository) | 
 **branch_name** | **str**| The branch name | 
 **ext** | **str**| The archive format | [optional] [default to tar.gz]
 **properties** | **str**| Properties filter (e.g., qa&#x3D;approved) | [optional] 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_vcs_branch_from_subgroup_repository**
> bytes download_vcs_branch_from_subgroup_repository(repo_key, user_org, repo, branch_name, properties=properties)

Download a VCS Branch from a Subgroup Repository

Downloads a tarball (tar.gz/zip, default tar.gz) of a complete branch from a subgroup repository. Downloading can be executed conditionally according to properties by specifying the properties query param.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name
    branch_name = 'branch_name_example' # str | The branch name
    properties = 'properties_example' # str | Properties filter (e.g., qa=approved) (optional)

    try:
        # Download a VCS Branch from a Subgroup Repository
        api_response = api_instance.download_vcs_branch_from_subgroup_repository(repo_key, user_org, repo, branch_name, properties=properties)
        print("The response of VCSApi->download_vcs_branch_from_subgroup_repository:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_vcs_branch_from_subgroup_repository: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 
 **branch_name** | **str**| The branch name | 
 **properties** | **str**| Properties filter (e.g., qa&#x3D;approved) | [optional] 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_vcs_commit**
> bytes download_vcs_commit(repo_key, user_org, repo, commit_id, ext=ext)

Download a VCS Commit

Downloads a tarball (tar.gz/zip, default tar.gz) of a complete commit.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name
    commit_id = 'commit_id_example' # str | The commit ID
    ext = tar.gz # str | The archive format (optional) (default to tar.gz)

    try:
        # Download a VCS Commit
        api_response = api_instance.download_vcs_commit(repo_key, user_org, repo, commit_id, ext=ext)
        print("The response of VCSApi->download_vcs_commit:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_vcs_commit: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 
 **commit_id** | **str**| The commit ID | 
 **ext** | **str**| The archive format | [optional] [default to tar.gz]

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_vcs_release**
> bytes download_vcs_release(repo_key, user_org, repo, release_name, ext=ext)

Download a VCS Release

Downloads a complete release tarball (tar.gz/zip, default tar.gz) of a tag from GitHub.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name
    release_name = 'release_name_example' # str | The release name
    ext = tar.gz # str | The archive format (optional) (default to tar.gz)

    try:
        # Download a VCS Release
        api_response = api_instance.download_vcs_release(repo_key, user_org, repo, release_name, ext=ext)
        print("The response of VCSApi->download_vcs_release:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_vcs_release: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 
 **release_name** | **str**| The release name | 
 **ext** | **str**| The archive format | [optional] [default to tar.gz]

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_vcs_tag**
> bytes download_vcs_tag(repo_key, user_org, repo, tag_name, ext=ext)

Download a VCS Tag

Download a complete tarball (tar.gz/zip) of a tag. Downloading can be executed conditionally according to properties by specifying the properties query param.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name
    tag_name = 'tag_name_example' # str | The tag name
    ext = tar.gz # str | The archive format (optional) (default to tar.gz)

    try:
        # Download a VCS Tag
        api_response = api_instance.download_vcs_tag(repo_key, user_org, repo, tag_name, ext=ext)
        print("The response of VCSApi->download_vcs_tag:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_vcs_tag: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 
 **tag_name** | **str**| The tag name | 
 **ext** | **str**| The archive format | [optional] [default to tar.gz]

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_vcs_tag_alternative**
> bytes download_vcs_tag_alternative(repo_key, user_org, tag_name, ext=ext)

Download a VCS Tag (Alternative Format)

Download a complete tarball (tar.gz/zip) of a tag using userOrg as the repository.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization (used as repository)
    tag_name = 'tag_name_example' # str | The tag name
    ext = tar.gz # str | The archive format (optional) (default to tar.gz)

    try:
        # Download a VCS Tag (Alternative Format)
        api_response = api_instance.download_vcs_tag_alternative(repo_key, user_org, tag_name, ext=ext)
        print("The response of VCSApi->download_vcs_tag_alternative:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_vcs_tag_alternative: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization (used as repository) | 
 **tag_name** | **str**| The tag name | 
 **ext** | **str**| The archive format | [optional] [default to tar.gz]

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **download_vcs_tag_from_subgroup_repository**
> bytes download_vcs_tag_from_subgroup_repository(repo_key, user_org, repo, tag_name, properties=properties)

Download a VCS Tag from a Subgroup Repository

Download a complete tarball (tar.gz/zip) of a tag in a subgroup repository. Downloading can be executed conditionally according to properties by specifying the properties query parameter.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name
    tag_name = 'tag_name_example' # str | The tag name
    properties = 'properties_example' # str | Properties filter (e.g., qa=approved) (optional)

    try:
        # Download a VCS Tag from a Subgroup Repository
        api_response = api_instance.download_vcs_tag_from_subgroup_repository(repo_key, user_org, repo, tag_name, properties=properties)
        print("The response of VCSApi->download_vcs_tag_from_subgroup_repository:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->download_vcs_tag_from_subgroup_repository: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 
 **tag_name** | **str**| The tag name | 
 **properties** | **str**| Properties filter (e.g., qa&#x3D;approved) | [optional] 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vcs_branches**
> List[GetVcsTags200ResponseInner] get_vcs_branches(repo_key, user_org, repo)

Get VCS Branches

Lists all VCS branches in a specific repository or subgroup repository.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_vcs_tags200_response_inner import GetVcsTags200ResponseInner
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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name

    try:
        # Get VCS Branches
        api_response = api_instance.get_vcs_branches(repo_key, user_org, repo)
        print("The response of VCSApi->get_vcs_branches:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->get_vcs_branches: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 

### Return type

[**List[GetVcsTags200ResponseInner]**](GetVcsTags200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vcs_refs**
> str get_vcs_refs(repo_key, user_org, repo)

Get VCS Refs

Downloads a VCS Git References file.

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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name

    try:
        # Get VCS Refs
        api_response = api_instance.get_vcs_refs(repo_key, user_org, repo)
        print("The response of VCSApi->get_vcs_refs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->get_vcs_refs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vcs_tags**
> List[GetVcsTags200ResponseInner] get_vcs_tags(repo_key, user_org, repo)

Get VCS Tags

Lists all VCS tags in a specific repository or subgroup repository.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_vcs_tags200_response_inner import GetVcsTags200ResponseInner
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
    api_instance = jfrog_client.VCSApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    user_org = 'user_org_example' # str | The user organization
    repo = 'repo_example' # str | The repository name

    try:
        # Get VCS Tags
        api_response = api_instance.get_vcs_tags(repo_key, user_org, repo)
        print("The response of VCSApi->get_vcs_tags:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VCSApi->get_vcs_tags: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **user_org** | **str**| The user organization | 
 **repo** | **str**| The repository name | 

### Return type

[**List[GetVcsTags200ResponseInner]**](GetVcsTags200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

