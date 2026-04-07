# jfrog_client.RolesApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_project_role**](RolesApi.md#create_project_role) | **POST** /access/api/v1/projects/{projectKey}/roles | Create Role
[**delete_project_role**](RolesApi.md#delete_project_role) | **DELETE** /access/api/v1/projects/{projectKey}/roles/{role} | Delete an Existing Role
[**get_project_role**](RolesApi.md#get_project_role) | **GET** /access/api/v1/projects/{projectKey}/roles/{role} | Get Project Role
[**get_project_roles**](RolesApi.md#get_project_roles) | **GET** /access/api/v1/projects/{projectKey}/roles | Get Roles List
[**update_project_role**](RolesApi.md#update_project_role) | **PUT** /access/api/v1/projects/{projectKey}/roles/{role} | Update an Existing Project Role


# **create_project_role**
> ProjectRole create_project_role(project_key, project_role_create)

Create Role

Adds a new role to the project.


**Security:** Requires Platform Admin or Project Admin with Manage Members privilege.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project_role import ProjectRole
from jfrog_client.models.project_role_create import ProjectRoleCreate
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
    api_instance = jfrog_client.RolesApi(api_client)
    project_key = 'project_key_example' # str | The project key
    project_role_create = jfrog_client.ProjectRoleCreate() # ProjectRoleCreate | 

    try:
        # Create Role
        api_response = api_instance.create_project_role(project_key, project_role_create)
        print("The response of RolesApi->create_project_role:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RolesApi->create_project_role: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **project_role_create** | [**ProjectRoleCreate**](ProjectRoleCreate.md)|  | 

### Return type

[**ProjectRole**](ProjectRole.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Role created |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Project not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_project_role**
> delete_project_role(project_key, role)

Delete an Existing Role

Deletes an existing project role.


**Security:** Requires Platform Admin or Project Admin with Manage Members privilege.


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
    api_instance = jfrog_client.RolesApi(api_client)
    project_key = 'project_key_example' # str | The project key
    role = 'role_example' # str | The role name

    try:
        # Delete an Existing Role
        api_instance.delete_project_role(project_key, role)
    except Exception as e:
        print("Exception when calling RolesApi->delete_project_role: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **role** | **str**| The role name | 

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
**204** | Role deleted |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Project or role not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_role**
> ProjectRole get_project_role(project_key, role)

Get Project Role

Returns the requested project role.


**Security:** Requires Platform Admin or Project Admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project_role import ProjectRole
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
    api_instance = jfrog_client.RolesApi(api_client)
    project_key = 'project_key_example' # str | The project key
    role = 'role_example' # str | The role name

    try:
        # Get Project Role
        api_response = api_instance.get_project_role(project_key, role)
        print("The response of RolesApi->get_project_role:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RolesApi->get_project_role: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **role** | **str**| The role name | 

### Return type

[**ProjectRole**](ProjectRole.md)

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
**404** | Not Found - Project or role not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_roles**
> List[ProjectRole] get_project_roles(project_key)

Get Roles List

Returns all project roles.


**Security:** Requires Platform Admin or Project Admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project_role import ProjectRole
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
    api_instance = jfrog_client.RolesApi(api_client)
    project_key = 'project_key_example' # str | The project key

    try:
        # Get Roles List
        api_response = api_instance.get_project_roles(project_key)
        print("The response of RolesApi->get_project_roles:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RolesApi->get_project_roles: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 

### Return type

[**List[ProjectRole]**](ProjectRole.md)

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

# **update_project_role**
> ProjectRole update_project_role(project_key, role, project_role_update)

Update an Existing Project Role

Updates an existing project role.


**Security:** Requires Platform Admin or Project Admin with Manage Members privilege.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project_role import ProjectRole
from jfrog_client.models.project_role_update import ProjectRoleUpdate
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
    api_instance = jfrog_client.RolesApi(api_client)
    project_key = 'project_key_example' # str | The project key
    role = 'role_example' # str | The role name
    project_role_update = jfrog_client.ProjectRoleUpdate() # ProjectRoleUpdate | 

    try:
        # Update an Existing Project Role
        api_response = api_instance.update_project_role(project_key, role, project_role_update)
        print("The response of RolesApi->update_project_role:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RolesApi->update_project_role: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **role** | **str**| The role name | 
 **project_role_update** | [**ProjectRoleUpdate**](ProjectRoleUpdate.md)|  | 

### Return type

[**ProjectRole**](ProjectRole.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Role updated |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Project or role not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

