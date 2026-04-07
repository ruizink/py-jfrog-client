# jfrog_client.MembersApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_or_update_project_user**](MembersApi.md#add_or_update_project_user) | **PUT** /access/api/v1/projects/{projectKey}/users/{user} | Add or Update User in Project
[**delete_project_group**](MembersApi.md#delete_project_group) | **DELETE** /access/api/v1/projects/{projectKey}/groups/{group} | Delete Existing Project&#39;s Group
[**delete_project_user**](MembersApi.md#delete_project_user) | **DELETE** /access/api/v1/projects/{projectKey}/users/{user} | Delete Existing Project&#39;s User
[**get_project_group**](MembersApi.md#get_project_group) | **GET** /access/api/v1/projects/{projectKey}/groups/{group} | Get Projects Group
[**get_project_groups**](MembersApi.md#get_project_groups) | **GET** /access/api/v1/projects/{projectKey}/groups | Get Projects Groups
[**get_project_user**](MembersApi.md#get_project_user) | **GET** /access/api/v1/projects/{projectKey}/users/{user} | Get Project User
[**get_project_users**](MembersApi.md#get_project_users) | **GET** /access/api/v1/projects/{projectKey}/users | Get Project Users
[**update_project_group**](MembersApi.md#update_project_group) | **PUT** /access/api/v1/projects/{projectKey}/groups/{group} | Update Group in Project


# **add_or_update_project_user**
> ProjectUserUpdate add_or_update_project_user(project_key, user, project_user_update)

Add or Update User in Project

Adds or updates a user in a project.


**Security:** Requires Platform Admin or Project Admin with Manage Members privilege.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project_user_update import ProjectUserUpdate
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
    api_instance = jfrog_client.MembersApi(api_client)
    project_key = 'project_key_example' # str | The project key
    user = 'user_example' # str | The username
    project_user_update = jfrog_client.ProjectUserUpdate() # ProjectUserUpdate | 

    try:
        # Add or Update User in Project
        api_response = api_instance.add_or_update_project_user(project_key, user, project_user_update)
        print("The response of MembersApi->add_or_update_project_user:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MembersApi->add_or_update_project_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **user** | **str**| The username | 
 **project_user_update** | [**ProjectUserUpdate**](ProjectUserUpdate.md)|  | 

### Return type

[**ProjectUserUpdate**](ProjectUserUpdate.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | User added/updated |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Project not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_project_group**
> delete_project_group(project_key, group)

Delete Existing Project's Group

Deletes the existing project group.


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
    api_instance = jfrog_client.MembersApi(api_client)
    project_key = 'project_key_example' # str | The project key
    group = 'group_example' # str | The group name

    try:
        # Delete Existing Project's Group
        api_instance.delete_project_group(project_key, group)
    except Exception as e:
        print("Exception when calling MembersApi->delete_project_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **group** | **str**| The group name | 

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
**204** | Group removed from project |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Project or group not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_project_user**
> delete_project_user(project_key, user)

Delete Existing Project's User

Deletes an existing project's user.


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
    api_instance = jfrog_client.MembersApi(api_client)
    project_key = 'project_key_example' # str | The project key
    user = 'user_example' # str | The username

    try:
        # Delete Existing Project's User
        api_instance.delete_project_user(project_key, user)
    except Exception as e:
        print("Exception when calling MembersApi->delete_project_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **user** | **str**| The username | 

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
**204** | User removed from project |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Project or user not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_group**
> ProjectGroup get_project_group(project_key, group)

Get Projects Group

Returns the requested group associated with the project.


**Security:** Requires Platform Admin or Project Admin with Manage Members privilege.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project_group import ProjectGroup
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
    api_instance = jfrog_client.MembersApi(api_client)
    project_key = 'project_key_example' # str | The project key
    group = 'group_example' # str | The group name

    try:
        # Get Projects Group
        api_response = api_instance.get_project_group(project_key, group)
        print("The response of MembersApi->get_project_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MembersApi->get_project_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **group** | **str**| The group name | 

### Return type

[**ProjectGroup**](ProjectGroup.md)

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
**404** | Not Found - Project or group not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_groups**
> GetProjectGroups200Response get_project_groups(project_key)

Get Projects Groups

Returns all groups associated with the project.


**Security:** Requires Platform Admin or Project Admin with Manage Members privilege.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_project_groups200_response import GetProjectGroups200Response
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
    api_instance = jfrog_client.MembersApi(api_client)
    project_key = 'project_key_example' # str | The project key

    try:
        # Get Projects Groups
        api_response = api_instance.get_project_groups(project_key)
        print("The response of MembersApi->get_project_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MembersApi->get_project_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 

### Return type

[**GetProjectGroups200Response**](GetProjectGroups200Response.md)

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

# **get_project_user**
> ProjectUser get_project_user(project_key, user)

Get Project User

Returns the requested user associated with the project.


**Security:** Requires Platform Admin or Project Admin with Manage Members privilege.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project_user import ProjectUser
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
    api_instance = jfrog_client.MembersApi(api_client)
    project_key = 'project_key_example' # str | The project key
    user = 'user_example' # str | The username

    try:
        # Get Project User
        api_response = api_instance.get_project_user(project_key, user)
        print("The response of MembersApi->get_project_user:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MembersApi->get_project_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **user** | **str**| The username | 

### Return type

[**ProjectUser**](ProjectUser.md)

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
**404** | Not Found - Project or user not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_project_users**
> GetProjectUsers200Response get_project_users(project_key)

Get Project Users

Returns all users associated with the project.


**Security:** Requires Platform Admin, Project Admin with Manage Members privilege, or a scoped token with `project:<project_key>/members/**:r` scope.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_project_users200_response import GetProjectUsers200Response
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
    api_instance = jfrog_client.MembersApi(api_client)
    project_key = 'project_key_example' # str | The project key

    try:
        # Get Project Users
        api_response = api_instance.get_project_users(project_key)
        print("The response of MembersApi->get_project_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MembersApi->get_project_users: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 

### Return type

[**GetProjectUsers200Response**](GetProjectUsers200Response.md)

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

# **update_project_group**
> ProjectGroupUpdate update_project_group(project_key, group, project_group_update)

Update Group in Project

Updates the group in the project.


**Security:** Requires Platform Admin or Project Admin with Manage Members privilege.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.project_group_update import ProjectGroupUpdate
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
    api_instance = jfrog_client.MembersApi(api_client)
    project_key = 'project_key_example' # str | The project key
    group = 'group_example' # str | The group name
    project_group_update = jfrog_client.ProjectGroupUpdate() # ProjectGroupUpdate | 

    try:
        # Update Group in Project
        api_response = api_instance.update_project_group(project_key, group, project_group_update)
        print("The response of MembersApi->update_project_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MembersApi->update_project_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| The project key | 
 **group** | **str**| The group name | 
 **project_group_update** | [**ProjectGroupUpdate**](ProjectGroupUpdate.md)|  | 

### Return type

[**ProjectGroupUpdate**](ProjectGroupUpdate.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Group added/updated |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Project not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

