# jfrog_client.PermissionsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_or_replace_permission_target**](PermissionsApi.md#create_or_replace_permission_target) | **PUT** /artifactory/api/security/permissions/{permissionTargetName} | Create or Replace Permission Target
[**create_permission**](PermissionsApi.md#create_permission) | **POST** /access/api/v2/permissions | Create Permission
[**delete_permission**](PermissionsApi.md#delete_permission) | **DELETE** /access/api/v2/permissions/{permissionName} | Delete Permission
[**delete_permission_resource**](PermissionsApi.md#delete_permission_resource) | **DELETE** /access/api/v2/permissions/{permissionName}/{resourceType} | Delete Permission Resource Based on Permission Name and Resource Type
[**delete_permission_target**](PermissionsApi.md#delete_permission_target) | **DELETE** /artifactory/api/security/permissions/{permissionTargetName} | Delete Permission Target
[**get_permission_details**](PermissionsApi.md#get_permission_details) | **GET** /access/api/v2/permissions/{permissionName} | Get Permission Details by Permission Name
[**get_permission_resource**](PermissionsApi.md#get_permission_resource) | **GET** /access/api/v2/permissions/{permissionName}/{resourceType} | Get Permission Resource Based on Permission Name and Resource Type
[**get_permission_target_details**](PermissionsApi.md#get_permission_target_details) | **GET** /artifactory/api/security/permissions/{permissionTargetName} | Get Permission Target Details
[**get_permission_targets**](PermissionsApi.md#get_permission_targets) | **GET** /artifactory/api/security/permissions | Get Permission Targets
[**get_permissions**](PermissionsApi.md#get_permissions) | **GET** /access/api/v2/permissions | Get Permissions
[**replace_permission_resource**](PermissionsApi.md#replace_permission_resource) | **PUT** /access/api/v2/permissions/{permissionName}/{resourceType} | Replace Permission Resource Based on Permission Name and Resource Type
[**update_permission_resource**](PermissionsApi.md#update_permission_resource) | **PATCH** /access/api/v2/permissions/{permissionName}/{resourceType} | Update Permission Resource Based on Permission Name and Resource Type


# **create_or_replace_permission_target**
> object create_or_replace_permission_target(permission_target_name, create_or_replace_permission_target_request)

Create or Replace Permission Target

Creates a new permission target in the JFrog Unified Platform or replaces an existing permission target

Since: 2.4.0

Notes: Requires Artifactory Pro. 

- Missing values will be set to the default values as defined by the consumed type.

- Please note when adding Release Bundles permission targets

- Requires an Edge/Enterprise+ license

On Edge nodes, the repositories section in the request body can be left empty or contain the ‘release-bundles’ default repository. No other repositories are allowed. An Enterprise+ license allows you to add any repository

The default repository in the repository section is “release-bundles” for both Edge/EntPlus licenses. (if user create permission target with empty repositories section the repository that we put is “release bundles”)

- To support spaces in the User or Group or Permission names, a Plus symbol (+) is automatically placed when there is a space. This is set by default as the artifactory.

security.api.plus.insteadof.space property is set to true. If you want to use the + (plus) symbol, set the artifactory.security.api.plus.insteadof.space to false.

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.create_or_replace_permission_target_request import CreateOrReplacePermissionTargetRequest
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
    api_instance = jfrog_client.PermissionsApi(api_client)
    permission_target_name = 'permission_target_name_example' # str | The name of the permission target
    create_or_replace_permission_target_request = jfrog_client.CreateOrReplacePermissionTargetRequest() # CreateOrReplacePermissionTargetRequest | 

    try:
        # Create or Replace Permission Target
        api_response = api_instance.create_or_replace_permission_target(permission_target_name, create_or_replace_permission_target_request)
        print("The response of PermissionsApi->create_or_replace_permission_target:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PermissionsApi->create_or_replace_permission_target: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_target_name** | **str**| The name of the permission target | 
 **create_or_replace_permission_target_request** | [**CreateOrReplacePermissionTargetRequest**](CreateOrReplacePermissionTargetRequest.md)|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_permission**
> PermissionDetails create_permission(permission_create_request)

Create Permission

Creates a new permission target in the system.


**Security:** Requires admin privileges.


**Availability:** Artifactory 7.72.0+


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.permission_create_request import PermissionCreateRequest
from jfrog_client.models.permission_details import PermissionDetails
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
    api_instance = jfrog_client.PermissionsApi(api_client)
    permission_create_request = jfrog_client.PermissionCreateRequest() # PermissionCreateRequest | 

    try:
        # Create Permission
        api_response = api_instance.create_permission(permission_create_request)
        print("The response of PermissionsApi->create_permission:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PermissionsApi->create_permission: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_create_request** | [**PermissionCreateRequest**](PermissionCreateRequest.md)|  | 

### Return type

[**PermissionDetails**](PermissionDetails.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Permission created successfully |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**409** | Conflict - Permission already exists |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_permission**
> delete_permission(permission_name)

Delete Permission

Delete a permission from the system.


**Security:** Requires admin privileges.


**Availability:** Artifactory 7.72.0+


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
    api_instance = jfrog_client.PermissionsApi(api_client)
    permission_name = 'permission_name_example' # str | The permission name to delete

    try:
        # Delete Permission
        api_instance.delete_permission(permission_name)
    except Exception as e:
        print("Exception when calling PermissionsApi->delete_permission: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_name** | **str**| The permission name to delete | 

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
**204** | Permission deleted successfully |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Permission not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_permission_resource**
> delete_permission_resource(permission_name, resource_type)

Delete Permission Resource Based on Permission Name and Resource Type

Delete a permission resource from a permission by permission name and resource type.


**Security:** Requires admin privileges.


**Availability:** Artifactory 7.72.0+


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
    api_instance = jfrog_client.PermissionsApi(api_client)
    permission_name = 'permission_name_example' # str | The permission name
    resource_type = 'resource_type_example' # str | The resource type

    try:
        # Delete Permission Resource Based on Permission Name and Resource Type
        api_instance.delete_permission_resource(permission_name, resource_type)
    except Exception as e:
        print("Exception when calling PermissionsApi->delete_permission_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_name** | **str**| The permission name | 
 **resource_type** | **str**| The resource type | 

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
**204** | Permission resource deleted successfully |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Permission or resource not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_permission_target**
> str delete_permission_target(permission_target_name)

Delete Permission Target

Deletes an Artifactory permission target.

Since: 2.4.0

Notes: Requires Artifactory Pro. 

- To support spaces in the User or Group or Permission names, a Plus symbol (+) is automatically placed when there is a space. This is set by default as the artifactory.security.api.plus.insteadof.space property is set to true. If you want to use the + (plus) symbol, set the artifactory.security.api.plus.insteadof.space to false.

Security: Requires an admin user

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
    api_instance = jfrog_client.PermissionsApi(api_client)
    permission_target_name = 'permission_target_name_example' # str | The name of the permission target

    try:
        # Delete Permission Target
        api_response = api_instance.delete_permission_target(permission_target_name)
        print("The response of PermissionsApi->delete_permission_target:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PermissionsApi->delete_permission_target: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_target_name** | **str**| The name of the permission target | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_permission_details**
> PermissionDetails get_permission_details(permission_name)

Get Permission Details by Permission Name

Get the details of a permission by permission name.


**Security:** Requires admin privileges.


**Availability:** Artifactory 7.72.0+


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.permission_details import PermissionDetails
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
    api_instance = jfrog_client.PermissionsApi(api_client)
    permission_name = 'permission_name_example' # str | The permission name

    try:
        # Get Permission Details by Permission Name
        api_response = api_instance.get_permission_details(permission_name)
        print("The response of PermissionsApi->get_permission_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PermissionsApi->get_permission_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_name** | **str**| The permission name | 

### Return type

[**PermissionDetails**](PermissionDetails.md)

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
**404** | Not Found - Permission not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_permission_resource**
> PermissionResource get_permission_resource(permission_name, resource_type)

Get Permission Resource Based on Permission Name and Resource Type

Get the details of a permission resource by permission name and resource type.


**Security:** Requires admin privileges.


**Availability:** Artifactory 7.72.0+


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.permission_resource import PermissionResource
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
    api_instance = jfrog_client.PermissionsApi(api_client)
    permission_name = 'permission_name_example' # str | The permission name
    resource_type = 'resource_type_example' # str | The resource type

    try:
        # Get Permission Resource Based on Permission Name and Resource Type
        api_response = api_instance.get_permission_resource(permission_name, resource_type)
        print("The response of PermissionsApi->get_permission_resource:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PermissionsApi->get_permission_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_name** | **str**| The permission name | 
 **resource_type** | **str**| The resource type | 

### Return type

[**PermissionResource**](PermissionResource.md)

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
**404** | Not Found - Permission or resource not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_permission_target_details**
> object get_permission_target_details(permission_target_name)

Get Permission Target Details

Returns the details of an Artifactory Permission Target

Since: 2.4.0

Notes: Requires Artifactory Pro. 

Security: Requires an admin user

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
    api_instance = jfrog_client.PermissionsApi(api_client)
    permission_target_name = 'permission_target_name_example' # str | The name of the permission target

    try:
        # Get Permission Target Details
        api_response = api_instance.get_permission_target_details(permission_target_name)
        print("The response of PermissionsApi->get_permission_target_details:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PermissionsApi->get_permission_target_details: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_target_name** | **str**| The name of the permission target | 

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

# **get_permission_targets**
> List[GetPermissionTargets200ResponseInner] get_permission_targets()

Get Permission Targets

Get the permission targets list

Since: 2.4.0

Notes: Requires Artifactory Pro. To support spaces in the User or Group or Permission names, a Plus symbol (+) is automatically placed when there is a space. This is set by default as the artifactory.

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_permission_targets200_response_inner import GetPermissionTargets200ResponseInner
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
    api_instance = jfrog_client.PermissionsApi(api_client)

    try:
        # Get Permission Targets
        api_response = api_instance.get_permission_targets()
        print("The response of PermissionsApi->get_permission_targets:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PermissionsApi->get_permission_targets: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[GetPermissionTargets200ResponseInner]**](GetPermissionTargets200ResponseInner.md)

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

# **get_permissions**
> PermissionListResponse get_permissions(cursor=cursor, limit=limit)

Get Permissions

Get the list of all permissions in the system.


**Note:** You can use `cursor` and `limit` attributes independently or together to refine the results. Enter a permission name in `cursor` to list permissions starting from that name. Enter an integer in `limit` to define the number of results, between 1 and 99,999 (non-inclusive).


**Security:** Requires admin privileges, or a scoped token with `system:permissions:r`.


**Availability:** Artifactory 7.72.0+


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.permission_list_response import PermissionListResponse
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
    api_instance = jfrog_client.PermissionsApi(api_client)
    cursor = 'cursor_example' # str | Permission name to start listing from (optional)
    limit = 56 # int | Number of results (between 1 and 99,999, non-inclusive) (optional)

    try:
        # Get Permissions
        api_response = api_instance.get_permissions(cursor=cursor, limit=limit)
        print("The response of PermissionsApi->get_permissions:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PermissionsApi->get_permissions: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cursor** | **str**| Permission name to start listing from | [optional] 
 **limit** | **int**| Number of results (between 1 and 99,999, non-inclusive) | [optional] 

### Return type

[**PermissionListResponse**](PermissionListResponse.md)

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

# **replace_permission_resource**
> PermissionResource replace_permission_resource(permission_name, resource_type, permission_resource)

Replace Permission Resource Based on Permission Name and Resource Type

Replace a permission resource in a permission by permission name and resource type.


**Security:** Requires admin privileges.


**Availability:** Artifactory 7.72.0+


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.permission_resource import PermissionResource
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
    api_instance = jfrog_client.PermissionsApi(api_client)
    permission_name = 'permission_name_example' # str | The permission name
    resource_type = 'resource_type_example' # str | The resource type
    permission_resource = jfrog_client.PermissionResource() # PermissionResource | 

    try:
        # Replace Permission Resource Based on Permission Name and Resource Type
        api_response = api_instance.replace_permission_resource(permission_name, resource_type, permission_resource)
        print("The response of PermissionsApi->replace_permission_resource:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PermissionsApi->replace_permission_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_name** | **str**| The permission name | 
 **resource_type** | **str**| The resource type | 
 **permission_resource** | [**PermissionResource**](PermissionResource.md)|  | 

### Return type

[**PermissionResource**](PermissionResource.md)

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
**404** | Not Found - Permission not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_permission_resource**
> PermissionResource update_permission_resource(permission_name, resource_type, permission_resource_update)

Update Permission Resource Based on Permission Name and Resource Type

Update a permission resource in a permission by permission name and resource type.


**Security:** Requires admin privileges.


**Availability:** Artifactory 7.72.0+


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.permission_resource import PermissionResource
from jfrog_client.models.permission_resource_update import PermissionResourceUpdate
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
    api_instance = jfrog_client.PermissionsApi(api_client)
    permission_name = 'permission_name_example' # str | The permission name
    resource_type = 'resource_type_example' # str | The resource type
    permission_resource_update = jfrog_client.PermissionResourceUpdate() # PermissionResourceUpdate | 

    try:
        # Update Permission Resource Based on Permission Name and Resource Type
        api_response = api_instance.update_permission_resource(permission_name, resource_type, permission_resource_update)
        print("The response of PermissionsApi->update_permission_resource:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PermissionsApi->update_permission_resource: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_name** | **str**| The permission name | 
 **resource_type** | **str**| The resource type | 
 **permission_resource_update** | [**PermissionResourceUpdate**](PermissionResourceUpdate.md)|  | 

### Return type

[**PermissionResource**](PermissionResource.md)

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
**404** | Not Found - Permission not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

