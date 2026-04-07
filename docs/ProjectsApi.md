# jfrog_client.ProjectsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_project**](ProjectsApi.md#create_project) | **POST** /access/api/v1/projects | Create Project
[**delete_project**](ProjectsApi.md#delete_project) | **DELETE** /access/api/v1/projects/{projectKey} | Delete Existing Project
[**get_project**](ProjectsApi.md#get_project) | **GET** /access/api/v1/projects/{projectKey} | Get Project
[**get_projects_for_role**](ProjectsApi.md#get_projects_for_role) | **GET** /access/api/v2/projects | Get Projects List for a Global Role
[**get_projects_list**](ProjectsApi.md#get_projects_list) | **GET** /access/api/v1/projects | Get Projects List
[**update_project**](ProjectsApi.md#update_project) | **PUT** /access/api/v1/projects/{projectKey} | Update Existing Project Properties


# **create_project**
> Project create_project(project_create_request)

Create Project

Creates a new project.


**Security:** Requires Platform Admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project import Project
from jfrog_client.models.project_create_request import ProjectCreateRequest
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
    api_instance = jfrog_client.ProjectsApi(api_client)
    project_create_request = jfrog_client.ProjectCreateRequest() # ProjectCreateRequest | 

    try:
        # Create Project
        api_response = api_instance.create_project(project_create_request)
        print("The response of ProjectsApi->create_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->create_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_create_request** | [**ProjectCreateRequest**](ProjectCreateRequest.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Project created |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**409** | Conflict - Project with the same key already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_project**
> delete_project(project_key)

Delete Existing Project

Deletes an existing project.


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
    api_instance = jfrog_client.ProjectsApi(api_client)
    project_key = 'project_key_example' # str | The project key

    try:
        # Delete Existing Project
        api_instance.delete_project(project_key)
    except Exception as e:
        print("Exception when calling ProjectsApi->delete_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 

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
**204** | Project deleted |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Project not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project**
> Project get_project(project_key)

Get Project

Returns the requested project.


**Security:** Requires Platform Admin or Project Admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project import Project
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
    api_instance = jfrog_client.ProjectsApi(api_client)
    project_key = 'project_key_example' # str | The project key

    try:
        # Get Project
        api_response = api_instance.get_project(project_key)
        print("The response of ProjectsApi->get_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 

### Return type

[**Project**](Project.md)

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
**404** | Not Found - Project not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_projects_for_role**
> GetProjectsForRole200Response get_projects_for_role(role_name, limit=limit, descending_order=descending_order, cursor=cursor)

Get Projects List for a Global Role

Returns a list of projects where a specific global role is used.


**Availability:** Artifactory 7.117.0+


**Security:** Requires Platform Admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_projects_for_role200_response import GetProjectsForRole200Response
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
    api_instance = jfrog_client.ProjectsApi(api_client)
    role_name = 'role_name_example' # str | Filter results by role. Only global roles are supported.
    limit = 1000 # int | Allows you to control the number of results. The valid value is a minimum of 1, and the default value is 1,000. (optional) (default to 1000)
    descending_order = True # bool | When set to true, the result will be ordered by project name. (optional)
    cursor = 'cursor_example' # str | Divides the list of results and shows those that fall after the cursor for pagination purposes. (optional)

    try:
        # Get Projects List for a Global Role
        api_response = api_instance.get_projects_for_role(role_name, limit=limit, descending_order=descending_order, cursor=cursor)
        print("The response of ProjectsApi->get_projects_for_role:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_projects_for_role: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role_name** | **str**| Filter results by role. Only global roles are supported. | 
 **limit** | **int**| Allows you to control the number of results. The valid value is a minimum of 1, and the default value is 1,000. | [optional] [default to 1000]
 **descending_order** | **bool**| When set to true, the result will be ordered by project name. | [optional] 
 **cursor** | **str**| Divides the list of results and shows those that fall after the cursor for pagination purposes. | [optional] 

### Return type

[**GetProjectsForRole200Response**](GetProjectsForRole200Response.md)

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
**404** | Not Found - The request payload was not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_projects_list**
> List[Project] get_projects_list()

Get Projects List

Returns all projects the requesting user manages. Platform Admin users can view all projects; non-admin users can only view projects they manage.


**Availability:** Artifactory 7.117.5+. 


**Security:** Requires a valid token or a scoped token with `project:<project_key>:r` scope.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project import Project
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
    api_instance = jfrog_client.ProjectsApi(api_client)

    try:
        # Get Projects List
        api_response = api_instance.get_projects_list()
        print("The response of ProjectsApi->get_projects_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->get_projects_list: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[Project]**](Project.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_project**
> Project update_project(project_key, project_update_request)

Update Existing Project Properties

Updates an existing project's properties.


**Security:** Requires Platform Admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project import Project
from jfrog_client.models.project_update_request import ProjectUpdateRequest
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
    api_instance = jfrog_client.ProjectsApi(api_client)
    project_key = 'project_key_example' # str | The project key
    project_update_request = jfrog_client.ProjectUpdateRequest() # ProjectUpdateRequest | 

    try:
        # Update Existing Project Properties
        api_response = api_instance.update_project(project_key, project_update_request)
        print("The response of ProjectsApi->update_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->update_project: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **project_update_request** | [**ProjectUpdateRequest**](ProjectUpdateRequest.md)|  | 

### Return type

[**Project**](Project.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Project updated |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Project not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

