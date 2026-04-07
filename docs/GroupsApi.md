# jfrog_client.GroupsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_group**](GroupsApi.md#create_group) | **POST** /access/api/v2/groups | Create a Group
[**create_or_replace_group**](GroupsApi.md#create_or_replace_group) | **PUT** /artifactory/api/security/groups/{groupName} | Create or Replace Group (Deprecated)
[**delete_group**](GroupsApi.md#delete_group) | **DELETE** /access/api/v2/groups/{name} | Delete a Group
[**get_group_details**](GroupsApi.md#get_group_details) | **GET** /access/api/v2/groups/{name} | Get Group Details
[**get_group_list**](GroupsApi.md#get_group_list) | **GET** /access/api/v2/groups | Get a List of Groups
[**update_group**](GroupsApi.md#update_group) | **PATCH** /access/api/v2/groups/{name} | Group Update
[**update_group_members**](GroupsApi.md#update_group_members) | **PATCH** /access/api/v2/groups/{name}/members | Add or Remove a Group Member


# **create_group**
> GroupDetails create_group(group_create_request)

Create a Group

Creates a new group.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.group_create_request import GroupCreateRequest
from jfrog_client.models.group_details import GroupDetails
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
    api_instance = jfrog_client.GroupsApi(api_client)
    group_create_request = jfrog_client.GroupCreateRequest() # GroupCreateRequest | 

    try:
        # Create a Group
        api_response = api_instance.create_group(group_create_request)
        print("The response of GroupsApi->create_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->create_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_create_request** | [**GroupCreateRequest**](GroupCreateRequest.md)|  | 

### Return type

[**GroupDetails**](GroupDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Group created successfully |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - One or more users in members were not found |  -  |
**409** | Conflict - Group already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_or_replace_group**
> GroupDetails create_or_replace_group(group_name, group_details)

Create or Replace Group (Deprecated)

Creates a new group in Artifactory or replaces an existing group.


**Note:**
- From Artifactory release 7.49.3, this API is being replaced by the Access service APIs available in the JFrog Platform.
- Missing values will be set to the default values as defined by the consumed type.
- To support spaces in the User or Group or Permission names, a Plus symbol ('+') is automatically placed when there is a space.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.group_details import GroupDetails
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
    api_instance = jfrog_client.GroupsApi(api_client)
    group_name = 'group_name_example' # str | The group name
    group_details = jfrog_client.GroupDetails() # GroupDetails | 

    try:
        # Create or Replace Group (Deprecated)
        api_response = api_instance.create_or_replace_group(group_name, group_details)
        print("The response of GroupsApi->create_or_replace_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->create_or_replace_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_name** | **str**| The group name | 
 **group_details** | [**GroupDetails**](GroupDetails.md)|  | 

### Return type

[**GroupDetails**](GroupDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Group created or replaced successfully |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group**
> delete_group(name)

Delete a Group

Deletes an existing group based on the group name.


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
    api_instance = jfrog_client.GroupsApi(api_client)
    name = 'name_example' # str | The group name to delete

    try:
        # Delete a Group
        api_instance.delete_group(name)
    except Exception as e:
        print("Exception when calling GroupsApi->delete_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The group name to delete | 

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
**204** | Successful - Group deleted |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Group not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_details**
> GroupDetails get_group_details(name)

Get Group Details

Returns the group's details based on the group name.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.group_details import GroupDetails
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
    api_instance = jfrog_client.GroupsApi(api_client)
    name = 'name_example' # str | The group name

    try:
        # Get Group Details
        api_response = api_instance.get_group_details(name)
        print("The response of GroupsApi->get_group_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->get_group_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The group name | 

### Return type

[**GroupDetails**](GroupDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Group not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_list**
> GroupListResponse get_group_list(limit=limit, descending_order=descending_order, group_name=group_name, cursor=cursor, role=role, resource_type=resource_type, resource_name=resource_name, project_key=project_key)

Get a List of Groups

Returns the list of all groups.


**Security:** Requires admin privileges, or a scoped token with `system:identities:r`.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.group_list_response import GroupListResponse
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
    api_instance = jfrog_client.GroupsApi(api_client)
    limit = 1000 # int | Number of results to return (optional) (default to 1000)
    descending_order = False # bool | Whether to return groups in descending lexical order (optional) (default to False)
    group_name = 'group_name_example' # str | Filter by group name pattern (optional)
    cursor = 'cursor_example' # str | Pagination cursor (optional)
    role = 'role_example' # str | Filter by role. Must be provided together with resourceName and resourceType. Available from Artifactory 7.117.1. (optional)
    resource_type = 'resource_type_example' # str | Filter by resource type. Must be provided together with resourceName and role. Available from Artifactory 7.117.1. (optional)
    resource_name = 'resource_name_example' # str | Filter by repository name. Must be provided together with role and resourceType. Available from Artifactory 7.117.1. (optional)
    project_key = 'project_key_example' # str | Filter by project key (optional)

    try:
        # Get a List of Groups
        api_response = api_instance.get_group_list(limit=limit, descending_order=descending_order, group_name=group_name, cursor=cursor, role=role, resource_type=resource_type, resource_name=resource_name, project_key=project_key)
        print("The response of GroupsApi->get_group_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->get_group_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| Number of results to return | [optional] [default to 1000]
 **descending_order** | **bool**| Whether to return groups in descending lexical order | [optional] [default to False]
 **group_name** | **str**| Filter by group name pattern | [optional] 
 **cursor** | **str**| Pagination cursor | [optional] 
 **role** | **str**| Filter by role. Must be provided together with resourceName and resourceType. Available from Artifactory 7.117.1. | [optional] 
 **resource_type** | **str**| Filter by resource type. Must be provided together with resourceName and role. Available from Artifactory 7.117.1. | [optional] 
 **resource_name** | **str**| Filter by repository name. Must be provided together with role and resourceType. Available from Artifactory 7.117.1. | [optional] 
 **project_key** | **str**| Filter by project key | [optional] 

### Return type

[**GroupListResponse**](GroupListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group**
> GroupDetails update_group(name, group_update_request=group_update_request)

Group Update

Updates an Access group's external ID, description, and other parameters. To add or remove users, use the Add or Remove a Group Member API instead.

**Note:**
- This REST API is part of the Access service REST APIs, where modifying the realm and realm attributes parameters is not supported.
- All fields are optional; if a field is not specified, the value will not change (if the request payload is empty, returns 200).


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.group_details import GroupDetails
from jfrog_client.models.group_update_request import GroupUpdateRequest
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
    api_instance = jfrog_client.GroupsApi(api_client)
    name = 'name_example' # str | The group name
    group_update_request = jfrog_client.GroupUpdateRequest() # GroupUpdateRequest |  (optional)

    try:
        # Group Update
        api_response = api_instance.update_group(name, group_update_request=group_update_request)
        print("The response of GroupsApi->update_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->update_group: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The group name | 
 **group_update_request** | [**GroupUpdateRequest**](GroupUpdateRequest.md)|  | [optional] 

### Return type

[**GroupDetails**](GroupDetails.md)

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
**404** | Not Found - Group not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_group_members**
> UpdateGroupMembers200Response update_group_members(name, update_group_members_request)

Add or Remove a Group Member

Manage group members by adding and removing group members.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.update_group_members200_response import UpdateGroupMembers200Response
from jfrog_client.models.update_group_members_request import UpdateGroupMembersRequest
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
    api_instance = jfrog_client.GroupsApi(api_client)
    name = 'name_example' # str | The group name
    update_group_members_request = jfrog_client.UpdateGroupMembersRequest() # UpdateGroupMembersRequest | 

    try:
        # Add or Remove a Group Member
        api_response = api_instance.update_group_members(name, update_group_members_request)
        print("The response of GroupsApi->update_group_members:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupsApi->update_group_members: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The group name | 
 **update_group_members_request** | [**UpdateGroupMembersRequest**](UpdateGroupMembersRequest.md)|  | 

### Return type

[**UpdateGroupMembers200Response**](UpdateGroupMembers200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Group not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

