# jfrog_client.UsersApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**change_user_password**](UsersApi.md#change_user_password) | **PUT** /access/api/v2/users/{username}/password | Change a User Password
[**create_user**](UsersApi.md#create_user) | **POST** /access/api/v2/users | Create User
[**delete_user**](UsersApi.md#delete_user) | **DELETE** /access/api/v2/users/{username} | Delete User
[**expire_password_for_all_users**](UsersApi.md#expire_password_for_all_users) | **POST** /access/api/v2/users/expire_password_for_all_users | Expire Password for All Users
[**expire_user_password**](UsersApi.md#expire_user_password) | **POST** /access/api/v2/users/{username}/password/expire | Set User Password as Expired
[**get_user_details**](UsersApi.md#get_user_details) | **GET** /artifactory/api/security/users/{userName} | Get User Details
[**get_user_details1**](UsersApi.md#get_user_details1) | **GET** /access/api/v2/users/{username} | Get User Details
[**get_user_list**](UsersApi.md#get_user_list) | **GET** /access/api/v2/users | Get User List
[**unexpire_password_for_all_users**](UsersApi.md#unexpire_password_for_all_users) | **POST** /access/api/v2/users/unexpire_password_for_all_users | Un-Expire Password for All Users
[**unlock_user**](UsersApi.md#unlock_user) | **POST** /access/api/v2/users/{username}/unlock | Unlock User
[**update_user**](UsersApi.md#update_user) | **PATCH** /access/api/v2/users/{username} | Update a User (Partial Update)
[**update_user_groups**](UsersApi.md#update_user_groups) | **PATCH** /access/api/v2/users/{username}/groups | Add or Remove User from Groups


# **change_user_password**
> change_user_password(username, change_user_password_request)

Change a User Password

Change a user password.

**Security:** Requires admin privileges, or the authenticated user matches {username}.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.change_user_password_request import ChangeUserPasswordRequest
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
    api_instance = jfrog_client.UsersApi(api_client)
    username = 'username_example' # str | The username to change password for
    change_user_password_request = jfrog_client.ChangeUserPasswordRequest() # ChangeUserPasswordRequest | 

    try:
        # Change a User Password
        api_instance.change_user_password(username, change_user_password_request)
    except Exception as e:
        print("Exception when calling UsersApi->change_user_password: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username to change password for | 
 **change_user_password_request** | [**ChangeUserPasswordRequest**](ChangeUserPasswordRequest.md)|  | 

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
**204** | Password changed successfully |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Username not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_user**
> UserDetails create_user(user_create_request)

Create User

Creates a new Access user.


**Note:** 
- When `internal_password_disabled=true`, the 'password' field is not mandatory. 
- The parameter `realm` will be `internal`


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.user_create_request import UserCreateRequest
from jfrog_client.models.user_details import UserDetails
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
    api_instance = jfrog_client.UsersApi(api_client)
    user_create_request = jfrog_client.UserCreateRequest() # UserCreateRequest | 

    try:
        # Create User
        api_response = api_instance.create_user(user_create_request)
        print("The response of UsersApi->create_user:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->create_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_create_request** | [**UserCreateRequest**](UserCreateRequest.md)|  | 

### Return type

[**UserDetails**](UserDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | User created successfully |  -  |
**400** | Bad Request - Invalid input, object invalid |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**409** | Conflict - User already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_user**
> delete_user(username)

Delete User

Delete an existing user based on the username.


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
    api_instance = jfrog_client.UsersApi(api_client)
    username = 'username_example' # str | The username to delete

    try:
        # Delete User
        api_instance.delete_user(username)
    except Exception as e:
        print("Exception when calling UsersApi->delete_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username to delete | 

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
**204** | Successful - User deleted |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Username not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expire_password_for_all_users**
> str expire_password_for_all_users()

Expire Password for All Users

Expires all existing user passwords in your instance, requiring all users to update their passwords.

**Security:** Requires admin privileges.

**Availability:** Artifactory 7.128.0+


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
    api_instance = jfrog_client.UsersApi(api_client)

    try:
        # Expire Password for All Users
        api_response = api_instance.expire_password_for_all_users()
        print("The response of UsersApi->expire_password_for_all_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->expire_password_for_all_users: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **expire_user_password**
> expire_user_password(username)

Set User Password as Expired

Set a user password as expired.

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
    api_instance = jfrog_client.UsersApi(api_client)
    username = 'username_example' # str | The username to expire password for

    try:
        # Set User Password as Expired
        api_instance.expire_user_password(username)
    except Exception as e:
        print("Exception when calling UsersApi->expire_user_password: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username to expire password for | 

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
**204** | Successful - Password expired |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Username not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_details**
> UserConfiguration get_user_details(user_name)

Get User Details

Get the details of an Artifactory user.

Since: 2.4.0

Notes: Requires Artifactory Pro. 

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.user_configuration import UserConfiguration
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
    api_instance = jfrog_client.UsersApi(api_client)
    user_name = 'user_name_example' # str | The name of the user

    try:
        # Get User Details
        api_response = api_instance.get_user_details(user_name)
        print("The response of UsersApi->get_user_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->get_user_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_name** | **str**| The name of the user | 

### Return type

[**UserConfiguration**](UserConfiguration.md)

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

# **get_user_details1**
> UserDetails get_user_details1(username)

Get User Details

Returns the user's details based on the username.

**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.user_details import UserDetails
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
    api_instance = jfrog_client.UsersApi(api_client)
    username = 'username_example' # str | The username to retrieve details for

    try:
        # Get User Details
        api_response = api_instance.get_user_details1(username)
        print("The response of UsersApi->get_user_details1:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->get_user_details1: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username to retrieve details for | 

### Return type

[**UserDetails**](UserDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Invalid input, object invalid |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Username not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_list**
> UserListResponse get_user_list(status=status, limit=limit, username=username, only_admins=only_admins, cursor=cursor, role=role, resource_type=resource_type, resource_name=resource_name, project_key=project_key, descending_order=descending_order)

Get User List

Returns the list of users.

**Security:** Requires admin privileges, or a scoped token with `system:identities:r`.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.user_list_response import UserListResponse
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
    api_instance = jfrog_client.UsersApi(api_client)
    status = 'status_example' # str | Filter users by status (optional)
    limit = 1000 # int | Number of results to return (minimum 1, default 1000) (optional) (default to 1000)
    username = 'username_example' # str | Filter by username (contains) (optional)
    only_admins = True # bool | Filter to only admin users. Cannot be used with resourceName. Available from Artifactory 7.117.x. (optional)
    cursor = 'cursor_example' # str | Pagination cursor - shows results after this cursor (optional)
    role = 'role_example' # str | Filter users by role. When filtering by role, onlyAdmins and username parameters are ignored. Available from Artifactory 7.117.x. (optional)
    resource_type = 'resource_type_example' # str | Filter by resource type. Required when filtering by repository role. Available from Artifactory 7.117.x. (optional)
    resource_name = 'resource_name_example' # str | Filter by repository name. Cannot be used with onlyAdmins. Available from Artifactory 7.117.x. (optional)
    project_key = 'project_key_example' # str | Filter by project key. Refines search within a specific project context. (optional)
    descending_order = True # bool | Sort results in descending order (optional)

    try:
        # Get User List
        api_response = api_instance.get_user_list(status=status, limit=limit, username=username, only_admins=only_admins, cursor=cursor, role=role, resource_type=resource_type, resource_name=resource_name, project_key=project_key, descending_order=descending_order)
        print("The response of UsersApi->get_user_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->get_user_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **str**| Filter users by status | [optional] 
 **limit** | **int**| Number of results to return (minimum 1, default 1000) | [optional] [default to 1000]
 **username** | **str**| Filter by username (contains) | [optional] 
 **only_admins** | **bool**| Filter to only admin users. Cannot be used with resourceName. Available from Artifactory 7.117.x. | [optional] 
 **cursor** | **str**| Pagination cursor - shows results after this cursor | [optional] 
 **role** | **str**| Filter users by role. When filtering by role, onlyAdmins and username parameters are ignored. Available from Artifactory 7.117.x. | [optional] 
 **resource_type** | **str**| Filter by resource type. Required when filtering by repository role. Available from Artifactory 7.117.x. | [optional] 
 **resource_name** | **str**| Filter by repository name. Cannot be used with onlyAdmins. Available from Artifactory 7.117.x. | [optional] 
 **project_key** | **str**| Filter by project key. Refines search within a specific project context. | [optional] 
 **descending_order** | **bool**| Sort results in descending order | [optional] 

### Return type

[**UserListResponse**](UserListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Invalid input, object invalid |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unexpire_password_for_all_users**
> str unexpire_password_for_all_users()

Un-Expire Password for All Users

Un-expires all existing expired user passwords in your instance, making them usable again.

**Security:** Requires admin privileges.

**Availability:** Artifactory 7.128.0+


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
    api_instance = jfrog_client.UsersApi(api_client)

    try:
        # Un-Expire Password for All Users
        api_response = api_instance.unexpire_password_for_all_users()
        print("The response of UsersApi->unexpire_password_for_all_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->unexpire_password_for_all_users: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlock_user**
> unlock_user(username)

Unlock User

Unlocks a locked user.

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
    api_instance = jfrog_client.UsersApi(api_client)
    username = 'username_example' # str | The username to unlock

    try:
        # Unlock User
        api_instance.unlock_user(username)
    except Exception as e:
        print("Exception when calling UsersApi->unlock_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username to unlock | 

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
**204** | Successful - User unlocked |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Username not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user**
> UserDetails update_user(username, user_update_request)

Update a User (Partial Update)

Updates an existing Access user.

**Note:** 
- All fields are optional; if a specific field is not specified the value
will not change. 

- When `internal_password_disabled=false` and this field was true before,
the 'password' field is mandatory.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.user_details import UserDetails
from jfrog_client.models.user_update_request import UserUpdateRequest
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
    api_instance = jfrog_client.UsersApi(api_client)
    username = 'username_example' # str | The username to update
    user_update_request = jfrog_client.UserUpdateRequest() # UserUpdateRequest | 

    try:
        # Update a User (Partial Update)
        api_response = api_instance.update_user(username, user_update_request)
        print("The response of UsersApi->update_user:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->update_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username to update | 
 **user_update_request** | [**UserUpdateRequest**](UserUpdateRequest.md)|  | 

### Return type

[**UserDetails**](UserDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Invalid input, object invalid |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Username not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_user_groups**
> UpdateUserGroups200Response update_user_groups(username, update_user_groups_request)

Add or Remove User from Groups

Add or remove groups from a user.

**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.update_user_groups200_response import UpdateUserGroups200Response
from jfrog_client.models.update_user_groups_request import UpdateUserGroupsRequest
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
    api_instance = jfrog_client.UsersApi(api_client)
    username = 'username_example' # str | The username to update groups for
    update_user_groups_request = jfrog_client.UpdateUserGroupsRequest() # UpdateUserGroupsRequest | 

    try:
        # Add or Remove User from Groups
        api_response = api_instance.update_user_groups(username, update_user_groups_request)
        print("The response of UsersApi->update_user_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UsersApi->update_user_groups: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The username to update groups for | 
 **update_user_groups_request** | [**UpdateUserGroupsRequest**](UpdateUserGroupsRequest.md)|  | 

### Return type

[**UpdateUserGroups200Response**](UpdateUserGroups200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Username not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

