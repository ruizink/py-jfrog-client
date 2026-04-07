# jfrog_client.RepositoriesApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attach_repository_to_project**](RepositoriesApi.md#attach_repository_to_project) | **PUT** /access/api/v1/projects/_/attach/repositories/{repoName}/{targetProjectKey} | Move Repository in a Project
[**check_if_repository_exists**](RepositoriesApi.md#check_if_repository_exists) | **GET** /artifactory/api/repositories/existence | Check If Repository Exists
[**create_multiple_repositories**](RepositoriesApi.md#create_multiple_repositories) | **PUT** /artifactory/api/v2/repositories/batch | Create Multiple Repositories
[**create_repository**](RepositoriesApi.md#create_repository) | **PUT** /artifactory/api/repositories/{repoKey} | Create Repository
[**delete_repository**](RepositoriesApi.md#delete_repository) | **DELETE** /artifactory/api/repositories/{repoKey} | Delete Repository
[**get_all_repository_configurations**](RepositoriesApi.md#get_all_repository_configurations) | **GET** /artifactory/api/repositories/configurations | Get All Repository Configurations
[**get_batch_of_repositories_by_name**](RepositoriesApi.md#get_batch_of_repositories_by_name) | **GET** /artifactory/api/v2/repositories/batch | Get Batch of Repositories by Name
[**get_project_repository_status**](RepositoriesApi.md#get_project_repository_status) | **GET** /access/api/v1/projects/_/repositories/{repoName} | Get Status of Project Repository
[**get_remote_repository_configuration**](RepositoriesApi.md#get_remote_repository_configuration) | **GET** /artifactory/api/repositories/{remoteRepoName}/configuration | Remote Repository Configuration (Deprecated)
[**get_repositories_by_type_and_project**](RepositoriesApi.md#get_repositories_by_type_and_project) | **GET** /artifactory/api/repositories | Get Repositories by Type and Project
[**get_repository_configuration**](RepositoriesApi.md#get_repository_configuration) | **GET** /artifactory/api/repositories/{repoKey} | Get Repository Configuration
[**get_repository_configuration_v2**](RepositoriesApi.md#get_repository_configuration_v2) | **GET** /artifactory/api/v2/repositories/{repoKey} | Get Repository Configuration (v2)
[**share_repository_with_all_projects**](RepositoriesApi.md#share_repository_with_all_projects) | **PUT** /access/api/v1/projects/_/share/repositories/{repoName} | Share Repository with All Projects
[**share_repository_with_target_project**](RepositoriesApi.md#share_repository_with_target_project) | **PUT** /access/api/v1/projects/_/share/repositories/{repoName}/{targetProjectKey} | Share Repository with Target Project
[**unassign_project_from_repository**](RepositoriesApi.md#unassign_project_from_repository) | **DELETE** /access/api/v1/projects/_/attach/repositories/{repoName} | Unassign a Project from a Repository
[**unshare_repository_with_all_projects**](RepositoriesApi.md#unshare_repository_with_all_projects) | **DELETE** /access/api/v1/projects/_/share/repositories/{repoName} | Unshare Repository with All Projects
[**unshare_repository_with_target_project**](RepositoriesApi.md#unshare_repository_with_target_project) | **DELETE** /access/api/v1/projects/_/share/repositories/{repoName}/{targetProjectKey} | Unshare Repository with Target Project
[**update_multiple_repositories**](RepositoriesApi.md#update_multiple_repositories) | **POST** /artifactory/api/v2/repositories/batch | Update Multiple Repositories
[**update_repository_configuration**](RepositoriesApi.md#update_repository_configuration) | **POST** /artifactory/api/repositories/{repoKey} | Update Repository Configuration


# **attach_repository_to_project**
> attach_repository_to_project(repo_name, target_project_key, force=force)

Move Repository in a Project

If not assigned, assigns a repository to a project. If already assigned, moves the project repository to the specified location, and unassigns the repository from the previous project.


**Note:** When you assign a resource to a project, the project owns and manages the resource. When you share a resource with a project, the project does not own the resource.


**Security:** Requires Platform Admin privileges.


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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name
    target_project_key = 'target_project_key_example' # str | The target project key
    force = True # bool | Indicates a force move if the repository is already assigned to an actual project. (optional)

    try:
        # Move Repository in a Project
        api_instance.attach_repository_to_project(repo_name, target_project_key, force=force)
    except Exception as e:
        print("Exception when calling RepositoriesApi->attach_repository_to_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 
 **target_project_key** | **str**| The target project key | 
 **force** | **bool**| Indicates a force move if the repository is already assigned to an actual project. | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Repository attached |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Repository or project not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **check_if_repository_exists**
> CheckIfRepositoryExists200Response check_if_repository_exists(type=type, project_key=project_key)

Check If Repository Exists

Checks if repositories exist that match the repository types and the project key specified in the query parameters.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.check_if_repository_exists200_response import CheckIfRepositoryExists200Response
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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    type = ['type_example'] # List[str] | The type of repository to search for. Can be specified multiple times. (optional)
    project_key = 'project_key_example' # str | The key to the project in which you want to search (optional)

    try:
        # Check If Repository Exists
        api_response = api_instance.check_if_repository_exists(type=type, project_key=project_key)
        print("The response of RepositoriesApi->check_if_repository_exists:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->check_if_repository_exists: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | [**List[str]**](str.md)| The type of repository to search for. Can be specified multiple times. | [optional] 
 **project_key** | **str**| The key to the project in which you want to search | [optional] 

### Return type

[**CheckIfRepositoryExists200Response**](CheckIfRepositoryExists200Response.md)

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

# **create_multiple_repositories**
> str create_multiple_repositories(request_body)

Create Multiple Repositories

Creates multiple repositories using a batch request. The batch request can contain a mix of different package types and repository types.

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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    request_body = None # List[object] | 

    try:
        # Create Multiple Repositories
        api_response = api_instance.create_multiple_repositories(request_body)
        print("The response of RepositoriesApi->create_multiple_repositories:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->create_multiple_repositories: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**List[object]**](object.md)|  | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Repositories created successfully |  -  |
**400** | Bad Request - Batch limit exceeded, mandatory keys not configured, or repository key conflict |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_repository**
> str create_repository(repo_key, body)

Create Repository

Creates a new repository in Artifactory with the provided configuration. Supported by local, remote, virtual, and Federated repositories.

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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    body = None # object | 

    try:
        # Create Repository
        api_response = api_instance.create_repository(repo_key, body)
        print("The response of RepositoriesApi->create_repository:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->create_repository: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **body** | **object**|  | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Repository already exists or invalid configuration |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_repository**
> str delete_repository(repo_key)

Delete Repository

Removes a repository configuration together with the whole repository content. Supported by local, remote, virtual and federated repositories.

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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Delete Repository
        api_response = api_instance.delete_repository(repo_key)
        print("The response of RepositoriesApi->delete_repository:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->delete_repository: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_repository_configurations**
> GetAllRepositoryConfigurations200Response get_all_repository_configurations(package_type=package_type, repo_type=repo_type)

Get All Repository Configurations

Returns a list of all repository configurations.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_all_repository_configurations200_response import GetAllRepositoryConfigurations200Response
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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    package_type = 'package_type_example' # str | Filters the response according to the defined package type. Separate multiple entries with commas. (optional)
    repo_type = 'repo_type_example' # str | Filters the response according to the defined repository type. Separate multiple entries with commas. (optional)

    try:
        # Get All Repository Configurations
        api_response = api_instance.get_all_repository_configurations(package_type=package_type, repo_type=repo_type)
        print("The response of RepositoriesApi->get_all_repository_configurations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->get_all_repository_configurations: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_type** | **str**| Filters the response according to the defined package type. Separate multiple entries with commas. | [optional] 
 **repo_type** | **str**| Filters the response according to the defined repository type. Separate multiple entries with commas. | [optional] 

### Return type

[**GetAllRepositoryConfigurations200Response**](GetAllRepositoryConfigurations200Response.md)

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

# **get_batch_of_repositories_by_name**
> Dict[str, object] get_batch_of_repositories_by_name(names)

Get Batch of Repositories by Name

Returns a batch of repositories defined by name. The default batch size is 100 items (configurable).

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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    names = ['names_example'] # List[str] | The repository names to return

    try:
        # Get Batch of Repositories by Name
        api_response = api_instance.get_batch_of_repositories_by_name(names)
        print("The response of RepositoriesApi->get_batch_of_repositories_by_name:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->get_batch_of_repositories_by_name: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **names** | [**List[str]**](str.md)| The repository names to return | 

### Return type

**Dict[str, object]**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Repository keys are missing or repository item limit exceeded |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_repository_status**
> GetProjectRepositoryStatus200Response get_project_repository_status(repo_name)

Get Status of Project Repository

Returns the status of a repository and whether it was assigned and/or shared to a project, to multiple projects, or to all projects.


**Note:** When you assign a resource to a project, the project owns and manages the resource. When you share a resource with a project, the project does not own the resource.


**Security:** Requires Platform Admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_project_repository_status200_response import GetProjectRepositoryStatus200Response
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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name

    try:
        # Get Status of Project Repository
        api_response = api_instance.get_project_repository_status(repo_name)
        print("The response of RepositoriesApi->get_project_repository_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->get_project_repository_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 

### Return type

[**GetProjectRepositoryStatus200Response**](GetProjectRepositoryStatus200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Repository not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_remote_repository_configuration**
> object get_remote_repository_configuration(remote_repo_name)

Remote Repository Configuration (Deprecated)

Returns the shared configuration of a remote repository. This API is deprecated. Use the Get Repository Configuration API instead.

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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    remote_repo_name = 'remote_repo_name_example' # str | The remote repository name

    try:
        # Remote Repository Configuration (Deprecated)
        api_response = api_instance.get_remote_repository_configuration(remote_repo_name)
        print("The response of RepositoriesApi->get_remote_repository_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->get_remote_repository_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **remote_repo_name** | **str**| The remote repository name | 

### Return type

**object**

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
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_repositories_by_type_and_project**
> List[GetRepositoriesByTypeAndProject200ResponseInner] get_repositories_by_type_and_project(type=type, package_type=package_type, project=project)

Get Repositories by Type and Project

Returns a list of minimal repository details for all repositories of the specified type. Filter the results using type, packageType, and project parameters.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_repositories_by_type_and_project200_response_inner import GetRepositoriesByTypeAndProject200ResponseInner
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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    type = 'type_example' # str | Repository type filter (optional)
    package_type = 'package_type_example' # str | Package type filter (optional)
    project = 'project_example' # str | Project key filter (optional)

    try:
        # Get Repositories by Type and Project
        api_response = api_instance.get_repositories_by_type_and_project(type=type, package_type=package_type, project=project)
        print("The response of RepositoriesApi->get_repositories_by_type_and_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->get_repositories_by_type_and_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **str**| Repository type filter | [optional] 
 **package_type** | **str**| Package type filter | [optional] 
 **project** | **str**| Project key filter | [optional] 

### Return type

[**List[GetRepositoriesByTypeAndProject200ResponseInner]**](GetRepositoriesByTypeAndProject200ResponseInner.md)

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

# **get_repository_configuration**
> object get_repository_configuration(repo_key)

Get Repository Configuration

Returns the current configuration of a repository. Supported by local, remote, virtual, and Federated repositories.

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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Get Repository Configuration
        api_response = api_instance.get_repository_configuration(repo_key)
        print("The response of RepositoriesApi->get_repository_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->get_repository_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.org.jfrog.artifactory.repositories.LocalRepositoryConfiguration+json, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_repository_configuration_v2**
> object get_repository_configuration_v2(repo_key)

Get Repository Configuration (v2)

Returns the current configuration of a repository, providing only those fields that are relevant to the package type. Supported by local, remote, virtual, and Federated repositories.

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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Get Repository Configuration (v2)
        api_response = api_instance.get_repository_configuration_v2(repo_key)
        print("The response of RepositoriesApi->get_repository_configuration_v2:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->get_repository_configuration_v2: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.org.jfrog.artifactory.repositories.LocalRepositoryConfiguration+json, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **share_repository_with_all_projects**
> share_repository_with_all_projects(repo_name)

Share Repository with All Projects

Shares a local or remote repository across all projects, allowing members in more than one project to access the repository. Project members are granted actions according to their roles in the target project.


**Note:** When you assign a resource to a project, the project owns and manages the resource. When you share a resource with a project, the project does not own the resource.


**Security:** Requires Platform Admin privileges.


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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name

    try:
        # Share Repository with All Projects
        api_instance.share_repository_with_all_projects(repo_name)
    except Exception as e:
        print("Exception when calling RepositoriesApi->share_repository_with_all_projects: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Repository shared |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Repository not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **share_repository_with_target_project**
> share_repository_with_target_project(repo_name, target_project_key, read_only=read_only)

Share Repository with Target Project

Shares a local or remote repository with a specific target project. Project members of the target project are granted actions according to their roles in the target project.


**Note:** When you assign a resource to a project, the project owns and manages the resource. When you share a resource with a project, the project does not own the resource.


**Security:** Requires Platform Admin privileges.


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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name
    target_project_key = 'target_project_key_example' # str | The target project key
    read_only = True # bool | When set to true, the target project has read-only access to the repository and cannot modify its content. (optional)

    try:
        # Share Repository with Target Project
        api_instance.share_repository_with_target_project(repo_name, target_project_key, read_only=read_only)
    except Exception as e:
        print("Exception when calling RepositoriesApi->share_repository_with_target_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 
 **target_project_key** | **str**| The target project key | 
 **read_only** | **bool**| When set to true, the target project has read-only access to the repository and cannot modify its content. | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Repository shared |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Repository or project not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unassign_project_from_repository**
> unassign_project_from_repository(repo_name)

Unassign a Project from a Repository

Unassigns a project from a repository.


**Note:** You can assign a project to a repository using the Move Repository operation.


**Security:** Requires Platform Admin privileges.


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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name

    try:
        # Unassign a Project from a Repository
        api_instance.unassign_project_from_repository(repo_name)
    except Exception as e:
        print("Exception when calling RepositoriesApi->unassign_project_from_repository: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Project unassigned |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Repository not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unshare_repository_with_all_projects**
> unshare_repository_with_all_projects(repo_name)

Unshare Repository with All Projects

Unshares a shared local or remote repository. The repository is not deleted but remains assigned to the source project.


**Security:** Requires Platform Admin privileges.


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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name

    try:
        # Unshare Repository with All Projects
        api_instance.unshare_repository_with_all_projects(repo_name)
    except Exception as e:
        print("Exception when calling RepositoriesApi->unshare_repository_with_all_projects: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Repository unshared |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Repository not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unshare_repository_with_target_project**
> unshare_repository_with_target_project(repo_name, target_project_key)

Unshare Repository with Target Project

Unshares a local or remote repository with a specific target project.


**Security:** Requires Platform Admin privileges.


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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name
    target_project_key = 'target_project_key_example' # str | The target project key

    try:
        # Unshare Repository with Target Project
        api_instance.unshare_repository_with_target_project(repo_name, target_project_key)
    except Exception as e:
        print("Exception when calling RepositoriesApi->unshare_repository_with_target_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 
 **target_project_key** | **str**| The target project key | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Repository unshared |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Repository or project not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_multiple_repositories**
> str update_multiple_repositories(request_body)

Update Multiple Repositories

Updates the configuration of multiple repositories using a batch request. The batch request can contain a mix of different package types and repository types.

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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    request_body = None # List[object] | 

    try:
        # Update Multiple Repositories
        api_response = api_instance.update_multiple_repositories(request_body)
        print("The response of RepositoriesApi->update_multiple_repositories:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->update_multiple_repositories: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**List[object]**](object.md)|  | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Repositories updated successfully |  -  |
**400** | Bad Request - Batch limit exceeded or mandatory keys not configured |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - No repositories found for the specified keys |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_repository_configuration**
> str update_repository_configuration(repo_key, body)

Update Repository Configuration

Updates an existing repository configuration in Artifactory with the provided configuration elements. Supported by local, remote, virtual, and Federated repositories.

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
    api_instance = jfrog_client.RepositoriesApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    body = None # object | 

    try:
        # Update Repository Configuration
        api_response = api_instance.update_repository_configuration(repo_key, body)
        print("The response of RepositoriesApi->update_repository_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoriesApi->update_repository_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **body** | **object**|  | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

