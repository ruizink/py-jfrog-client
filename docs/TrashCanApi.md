# jfrog_client.TrashCanApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_item_from_trash_can**](TrashCanApi.md#delete_item_from_trash_can) | **DELETE** /artifactory/api/trash/clean/{repoPath} | Delete Item From Trash Can
[**delete_redundant_records_to_trash_can_directories**](TrashCanApi.md#delete_redundant_records_to_trash_can_directories) | **POST** /artifactory/api/deleteDirectoryTrashProperty/start | Delete Redundant Records to Trash Can Directories
[**empty_trash_can**](TrashCanApi.md#empty_trash_can) | **POST** /artifactory/api/trash/empty | Empty Trash Can
[**restore_item_from_trash_can**](TrashCanApi.md#restore_item_from_trash_can) | **POST** /artifactory/api/trash/restore/{fromPath} | Restore Item from Trash Can


# **delete_item_from_trash_can**
> delete_item_from_trash_can(repo_path)

Delete Item From Trash Can

Permanently deletes an item from the trash can. Requires Artifactory Pro.

**Security:** Requires a valid admin user, project admin user, or user with Manage or Delete permissions.


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
    api_instance = jfrog_client.TrashCanApi(api_client)
    repo_path = 'repo_path_example' # str | Repository name and path (e.g., npm-local or npm-local/path/to/item)

    try:
        # Delete Item From Trash Can
        api_instance.delete_item_from_trash_can(repo_path)
    except Exception as e:
        print("Exception when calling TrashCanApi->delete_item_from_trash_can: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_path** | **str**| Repository name and path (e.g., npm-local or npm-local/path/to/item) | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Item deleted from trash can successfully |  -  |
**400** | Permission Denied - The user does not have admin permissions. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_redundant_records_to_trash_can_directories**
> DeleteDirectoryTrashPropertyResponse delete_redundant_records_to_trash_can_directories(delete_directory_trash_property_request=delete_directory_trash_property_request)

Delete Redundant Records to Trash Can Directories

This REST API is called to delete redundant records to Trash Can directories. The redundant metadata of a Trash Can directory slows down the Small Garbage Collection process and can eventually cause an overall degradation in database performance. Calling this API alleviates this problem

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.delete_directory_trash_property_request import DeleteDirectoryTrashPropertyRequest
from jfrog_client.models.delete_directory_trash_property_response import DeleteDirectoryTrashPropertyResponse
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
    api_instance = jfrog_client.TrashCanApi(api_client)
    delete_directory_trash_property_request = jfrog_client.DeleteDirectoryTrashPropertyRequest() # DeleteDirectoryTrashPropertyRequest | Optional parameters for the deletion process (optional)

    try:
        # Delete Redundant Records to Trash Can Directories
        api_response = api_instance.delete_redundant_records_to_trash_can_directories(delete_directory_trash_property_request=delete_directory_trash_property_request)
        print("The response of TrashCanApi->delete_redundant_records_to_trash_can_directories:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TrashCanApi->delete_redundant_records_to_trash_can_directories: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_directory_trash_property_request** | [**DeleteDirectoryTrashPropertyRequest**](DeleteDirectoryTrashPropertyRequest.md)| Optional parameters for the deletion process | [optional] 

### Return type

[**DeleteDirectoryTrashPropertyResponse**](DeleteDirectoryTrashPropertyResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**202** | Accepted - The deletion task has been submitted |  -  |
**400** | Bad Request - The request body is malformed or contains invalid parameters. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **empty_trash_can**
> empty_trash_can()

Empty Trash Can

Permanently deletes the entire contents of the Trash Can.

**Notes:** Requires Artifactory Pro.

**Security:** Requires a valid admin user.


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
    api_instance = jfrog_client.TrashCanApi(api_client)

    try:
        # Empty Trash Can
        api_instance.empty_trash_can()
    except Exception as e:
        print("Exception when calling TrashCanApi->empty_trash_can: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**202** | Successfully deleted all trashcan item |  -  |
**400** | Permission Denied - The user does not have admin permissions. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restore_item_from_trash_can**
> str restore_item_from_trash_can(from_path, to, transaction_size=transaction_size)

Restore Item from Trash Can

Restore an item from the trash can.

**Notes:** Requires Artifactory Pro.

**Security:** Requires a valid admin user, project admin user, or user with Manage permissions.


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
    api_instance = jfrog_client.TrashCanApi(api_client)
    from_path = 'from_path_example' # str | Source path in trash can (e.g., npm-local)
    to = 'to_example' # str | Destination path where the item should be restored (e.g., npm-local2)
    transaction_size = 56 # int | Number of items to process in each database transaction during the restore operation.  (optional)

    try:
        # Restore Item from Trash Can
        api_response = api_instance.restore_item_from_trash_can(from_path, to, transaction_size=transaction_size)
        print("The response of TrashCanApi->restore_item_from_trash_can:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TrashCanApi->restore_item_from_trash_can: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **from_path** | **str**| Source path in trash can (e.g., npm-local) | 
 **to** | **str**| Destination path where the item should be restored (e.g., npm-local2) | 
 **transaction_size** | **int**| Number of items to process in each database transaction during the restore operation.  | [optional] 

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
**202** | Item restored successfully |  -  |
**400** | Permission Denied - The user does not have admin permissions. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**404** | Not Found - The specified item does not exist in the trash can. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

