# jfrog_client.GlobalRolesApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_global_role**](GlobalRolesApi.md#create_global_role) | **POST** /access/api/v1/roles | Create a Custom Global Role
[**delete_global_role**](GlobalRolesApi.md#delete_global_role) | **DELETE** /access/api/v1/roles/{role} | Delete a Custom Global Role
[**get_all_global_roles**](GlobalRolesApi.md#get_all_global_roles) | **GET** /access/api/v1/roles | Get All Global Roles
[**get_global_role**](GlobalRolesApi.md#get_global_role) | **GET** /access/api/v1/roles/{role} | Get a Global Role
[**update_global_role**](GlobalRolesApi.md#update_global_role) | **PUT** /access/api/v1/roles/{role} | Edit a Global Role


# **create_global_role**
> create_global_role(global_role_create)

Create a Custom Global Role

Create a new custom global role.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.global_role_create import GlobalRoleCreate
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
    api_instance = jfrog_client.GlobalRolesApi(api_client)
    global_role_create = jfrog_client.GlobalRoleCreate() # GlobalRoleCreate | 

    try:
        # Create a Custom Global Role
        api_instance.create_global_role(global_role_create)
    except Exception as e:
        print("Exception when calling GlobalRolesApi->create_global_role: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **global_role_create** | [**GlobalRoleCreate**](GlobalRoleCreate.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Role created. The response body is JSON with &#x60;code&#x60; (e.g. OK), &#x60;message&#x60;, and optionally &#x60;detail&#x60;. |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**409** | Conflict - Role already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_global_role**
> delete_global_role(role)

Delete a Custom Global Role

Delete a custom global role.


**Security:** Requires admin privileges.


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
    api_instance = jfrog_client.GlobalRolesApi(api_client)
    role = 'role_example' # str | The role name

    try:
        # Delete a Custom Global Role
        api_instance.delete_global_role(role)
    except Exception as e:
        print("Exception when calling GlobalRolesApi->delete_global_role: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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
**400** | Bad Request - Invalid request |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Role not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_global_roles**
> List[GlobalRole] get_all_global_roles()

Get All Global Roles

Get all global roles. The response includes predefined roles and custom
global roles.


**Security:** Requires admin or Project Admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.global_role import GlobalRole
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
    api_instance = jfrog_client.GlobalRolesApi(api_client)

    try:
        # Get All Global Roles
        api_response = api_instance.get_all_global_roles()
        print("The response of GlobalRolesApi->get_all_global_roles:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GlobalRolesApi->get_all_global_roles: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[GlobalRole]**](GlobalRole.md)

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

# **get_global_role**
> GlobalRole get_global_role(role)

Get a Global Role

Get a specific global role by name. Roles may be predefined or custom.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.global_role import GlobalRole
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
    api_instance = jfrog_client.GlobalRolesApi(api_client)
    role = 'role_example' # str | The role name

    try:
        # Get a Global Role
        api_response = api_instance.get_global_role(role)
        print("The response of GlobalRolesApi->get_global_role:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GlobalRolesApi->get_global_role: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **str**| The role name | 

### Return type

[**GlobalRole**](GlobalRole.md)

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
**404** | Not Found - Role not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_global_role**
> update_global_role(role, global_role_update)

Edit a Global Role

Update an existing global role.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.global_role_update import GlobalRoleUpdate
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
    api_instance = jfrog_client.GlobalRolesApi(api_client)
    role = 'role_example' # str | The role name
    global_role_update = jfrog_client.GlobalRoleUpdate() # GlobalRoleUpdate | 

    try:
        # Edit a Global Role
        api_instance.update_global_role(role, global_role_update)
    except Exception as e:
        print("Exception when calling GlobalRolesApi->update_global_role: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **role** | **str**| The role name | 
 **global_role_update** | [**GlobalRoleUpdate**](GlobalRoleUpdate.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Role updated successfully. |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Role not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

