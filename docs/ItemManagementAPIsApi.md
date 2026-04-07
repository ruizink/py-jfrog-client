# jfrog_client.ItemManagementAPIsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_item_properties**](ItemManagementAPIsApi.md#delete_item_properties) | **DELETE** /artifactory/api/storage/{repoKey}/{itemPath} | Delete Item Properties
[**get_storage_item**](ItemManagementAPIsApi.md#get_storage_item) | **GET** /artifactory/api/storage/{repoKey}/{itemPath} | Get Storage Item Information
[**set_item_properties**](ItemManagementAPIsApi.md#set_item_properties) | **PUT** /artifactory/api/storage/{repoKey}/{itemPath} | Set Item Properties
[**set_item_sha256_checksum**](ItemManagementAPIsApi.md#set_item_sha256_checksum) | **POST** /artifactory/api/checksum/sha256 | Set Item SHA256 Checksum
[**update_item_properties**](ItemManagementAPIsApi.md#update_item_properties) | **PATCH** /artifactory/api/metadata/{repoKey}/{itemPath} | Update Item Properties


# **delete_item_properties**
> delete_item_properties(repo_key, item_path, properties, recursive=recursive)

Delete Item Properties

Deletes the specified properties from an item (file, folder, or repository).
 
Requires Artifactory Pro, supported by local and local-cached repositories only.

Since: 2.3.2  
Security: Requires a privileged user (can be anonymous)


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
    api_instance = jfrog_client.ItemManagementAPIsApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    item_path = 'item_path_example' # str | Item path within the repository
    properties = 'properties_example' # str | Comma-separated list of property keys to delete. Required.
    recursive = 1 # int | Delete properties recursively from all items in folder (0 or 1). Default: 1 (recursive) for folders. (optional) (default to 1)

    try:
        # Delete Item Properties
        api_instance.delete_item_properties(repo_key, item_path, properties, recursive=recursive)
    except Exception as e:
        print("Exception when calling ItemManagementAPIsApi->delete_item_properties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **item_path** | **str**| Item path within the repository | 
 **properties** | **str**| Comma-separated list of property keys to delete. Required. | 
 **recursive** | **int**| Delete properties recursively from all items in folder (0 or 1). Default: 1 (recursive) for folders. | [optional] [default to 1]

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
**204** | Properties deleted successfully (no content) |  -  |
**400** | Bad Request - The properties parameter is missing or malformed. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions. |  -  |
**404** | Not Found - The specified item or repository does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_storage_item**
> GetStorageItem200Response get_storage_item(repo_key, item_path, properties=properties, last_modified=last_modified, stats=stats, permissions=permissions, list=list, deep=deep, depth=depth, list_folders=list_folders, md_timestamps=md_timestamps, include_root_path=include_root_path)

Get Storage Item Information

Returns different types of information about an item based on query parameters.

**Query parameters are mutually exclusive** - only one operation type can be requested at a time:
- list - Get file/folder listing (flat or deep)
- stats - Get file statistics (download count, last download info)
- lastModified - Get last modified timestamp
- properties - Get item properties
- permissions - Get item permissions
- No parameters - Get folder or file info

Since: 2.2.1  
Security: Requires a privileged user (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_storage_item200_response import GetStorageItem200Response
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
    api_instance = jfrog_client.ItemManagementAPIsApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    item_path = 'item_path_example' # str | Item path within the repository
    properties = 'properties_example' # str | Comma-separated list of property keys to retrieve. **Mutually exclusive with other query parameters.** (optional)
    last_modified = True # bool | Returns the last modified item at the given path. If the given path is a folder, the latest last modified item is searched for recursively. **Mutually exclusive with other query parameters.** (optional)
    stats = True # bool | Returns item statistics (download count, last download date, last downloader). **Mutually exclusive with other query parameters.** (optional)
    permissions = True # bool | Returns item permissions. **Mutually exclusive with other query parameters.** (optional)
    list = True # bool | Get a flat (the default) or deep listing of the files and folders. **Mutually exclusive with other query parameters except listing-related parameters (deep, depth, listFolders, etc.).** (optional)
    deep = 56 # int | Deep listing (0 or 1). Used with list parameter only. (optional)
    depth = 56 # int | Optional depth to limit the results for deep listing. Used with list parameter only. (optional)
    list_folders = 56 # int | Include folders in listing (0 or 1). Used with list parameter only. (optional)
    md_timestamps = 56 # int | Include metadata timestamp values (0 or 1). Used with list parameter only. (optional)
    include_root_path = 56 # int | Include folder root path (0 or 1). Used with list parameter only. (optional)

    try:
        # Get Storage Item Information
        api_response = api_instance.get_storage_item(repo_key, item_path, properties=properties, last_modified=last_modified, stats=stats, permissions=permissions, list=list, deep=deep, depth=depth, list_folders=list_folders, md_timestamps=md_timestamps, include_root_path=include_root_path)
        print("The response of ItemManagementAPIsApi->get_storage_item:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ItemManagementAPIsApi->get_storage_item: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **item_path** | **str**| Item path within the repository | 
 **properties** | **str**| Comma-separated list of property keys to retrieve. **Mutually exclusive with other query parameters.** | [optional] 
 **last_modified** | **bool**| Returns the last modified item at the given path. If the given path is a folder, the latest last modified item is searched for recursively. **Mutually exclusive with other query parameters.** | [optional] 
 **stats** | **bool**| Returns item statistics (download count, last download date, last downloader). **Mutually exclusive with other query parameters.** | [optional] 
 **permissions** | **bool**| Returns item permissions. **Mutually exclusive with other query parameters.** | [optional] 
 **list** | **bool**| Get a flat (the default) or deep listing of the files and folders. **Mutually exclusive with other query parameters except listing-related parameters (deep, depth, listFolders, etc.).** | [optional] 
 **deep** | **int**| Deep listing (0 or 1). Used with list parameter only. | [optional] 
 **depth** | **int**| Optional depth to limit the results for deep listing. Used with list parameter only. | [optional] 
 **list_folders** | **int**| Include folders in listing (0 or 1). Used with list parameter only. | [optional] 
 **md_timestamps** | **int**| Include metadata timestamp values (0 or 1). Used with list parameter only. | [optional] 
 **include_root_path** | **int**| Include folder root path (0 or 1). Used with list parameter only. | [optional] 

### Return type

[**GetStorageItem200Response**](GetStorageItem200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved item information |  -  |
**400** | Bad Request - Invalid query parameter combination or malformed path. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions. |  -  |
**404** | Not Found - The specified item does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_item_properties**
> set_item_properties(repo_key, item_path, properties, recursive=recursive)

Set Item Properties

Attach properties to an existing item (file, folder, repository, or Release Bundle v2).

To supply special characters (comma (,), backslash(\), pipe(|), equals(=)) as a key/value you must add an encoded backslash (%5C) before them. For example: ..?properties=a=1%5C=1 will attach key a with 1=1 as value.

Requires Artifactory Pro, supported by local and local-cached repositories only.

Since: 2.3.0  
Security: Requires a privileged user (can be anonymous)

Tip: Starting with Artifactory 7.104.x, it is possible to define an upper limit on the number of artifacts on which property updates can be performed at one time. For example, if you revise a folder property and the folder contains more items than the limit defined in this system parameter, the operation will fail. This feature is useful for preventing heavy loads on the database. The limit is defined using the system parameter, artifactory.max.artifacts.set.properties.recursive. By default, this feature is off. There is no default value when turned on.


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
    api_instance = jfrog_client.ItemManagementAPIsApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    item_path = 'item_path_example' # str | Item path within the repository
    properties = 'properties_example' # str | Properties to set in format: properties=key1=value1[,value2][|key2=value3]. Multiple properties can be separated by semicolon (;) or pipe (|).
    recursive = 1 # int | Apply properties recursively to all items in folder (0 or 1). For folders, , property attachment is recursive by default. (optional) (default to 1)

    try:
        # Set Item Properties
        api_instance.set_item_properties(repo_key, item_path, properties, recursive=recursive)
    except Exception as e:
        print("Exception when calling ItemManagementAPIsApi->set_item_properties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **item_path** | **str**| Item path within the repository | 
 **properties** | **str**| Properties to set in format: properties&#x3D;key1&#x3D;value1[,value2][|key2&#x3D;value3]. Multiple properties can be separated by semicolon (;) or pipe (|). | 
 **recursive** | **int**| Apply properties recursively to all items in folder (0 or 1). For folders, , property attachment is recursive by default. | [optional] [default to 1]

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
**204** | Properties set successfully (no content) |  -  |
**400** | Bad Request - The properties parameter is missing or malformed. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have annotate permissions. |  -  |
**404** | Not Found - The specified item or repository does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_item_sha256_checksum**
> set_item_sha256_checksum(sha256_checksum_request)

Set Item SHA256 Checksum

Calculates an artifact's SHA256 checksum and attaches it as a property (with key "sha256"). If the artifact is a folder, then recursively calculates the SHA256 of each item in the folder and attaches the property to each item.
Since: 4.2.1
Security: Requires an admin user
Note: Artifactory natively supports SHA-256 since version 5.5. This API has been maintained to provide backward compatibility for users of older Artifactory versions.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.sha256_checksum_request import Sha256ChecksumRequest
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
    api_instance = jfrog_client.ItemManagementAPIsApi(api_client)
    sha256_checksum_request = jfrog_client.Sha256ChecksumRequest() # Sha256ChecksumRequest | Repository and path information

    try:
        # Set Item SHA256 Checksum
        api_instance.set_item_sha256_checksum(sha256_checksum_request)
    except Exception as e:
        print("Exception when calling ItemManagementAPIsApi->set_item_sha256_checksum: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sha256_checksum_request** | [**Sha256ChecksumRequest**](Sha256ChecksumRequest.md)| Repository and path information | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | SHA256 checksum calculated and attached successfully |  -  |
**400** | Bad Request - The request body is malformed or invalid. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_item_properties**
> update_item_properties(repo_key, item_path, update_properties_request, recursive_properties=recursive_properties, atomic_properties=atomic_properties)

Update Item Properties

Attach and modify properties to an item - file, folder, or repository.
Requires Artifactory Pro, supported by local and local-cached repositories only.
Since: 6.1.0
Security: Requires a privileged user (Annotate authorization required)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.update_properties_request import UpdatePropertiesRequest
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
    api_instance = jfrog_client.ItemManagementAPIsApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    item_path = 'item_path_example' # str | Item path within the repository
    update_properties_request = jfrog_client.UpdatePropertiesRequest() # UpdatePropertiesRequest | Properties to update
    recursive_properties = 56 # int | Apply properties recursively (0 or 1) (optional)
    atomic_properties = 56 # int | Atomic properties update (0 or 1) (optional)

    try:
        # Update Item Properties
        api_instance.update_item_properties(repo_key, item_path, update_properties_request, recursive_properties=recursive_properties, atomic_properties=atomic_properties)
    except Exception as e:
        print("Exception when calling ItemManagementAPIsApi->update_item_properties: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **item_path** | **str**| Item path within the repository | 
 **update_properties_request** | [**UpdatePropertiesRequest**](UpdatePropertiesRequest.md)| Properties to update | 
 **recursive_properties** | **int**| Apply properties recursively (0 or 1) | [optional] 
 **atomic_properties** | **int**| Atomic properties update (0 or 1) | [optional] 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Properties updated successfully (no content) |  -  |
**400** | Bad Request - The request body is malformed or invalid, or props/stats fields are missing. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have Annotate authorization. |  -  |
**404** | Not Found - The specified item or repository does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

