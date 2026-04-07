# jfrog_client.WatchesV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_watch_watches_v2_openapi**](WatchesV2Api.md#create_watch_watches_v2_openapi) | **POST** /xray/api/v2/watches | Create Watch
[**delete_watch_watches_v2_openapi**](WatchesV2Api.md#delete_watch_watches_v2_openapi) | **DELETE** /xray/api/v2/watches/{name} | Delete Watch
[**get_watch_watches_v2_openapi**](WatchesV2Api.md#get_watch_watches_v2_openapi) | **GET** /xray/api/v2/watches/{name} | Get Watch
[**get_watches_watches_v2_openapi**](WatchesV2Api.md#get_watches_watches_v2_openapi) | **GET** /xray/api/v2/watches | Get Watches
[**update_watch_watches_v2_openapi**](WatchesV2Api.md#update_watch_watches_v2_openapi) | **PUT** /xray/api/v2/watches/{name} | Update Watch


# **create_watch_watches_v2_openapi**
> AddCustomLicense200Response create_watch_watches_v2_openapi(watch_api_v2_request, project_key=project_key)

Create Watch

Creates a new Watch. A Watch defines a set of resources (repositories, builds, release bundles, projects) to be monitored by assigned security and license policies.

**Notes:**
- For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can create a Watch in the scope of a project by using the `projectKey` query parameter.
- A Watch can include both Global and Project Policies.

Requires the 'Manage Watches' role to be set on the User or Group level.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.add_custom_license200_response import AddCustomLicense200Response
from jfrog_client.models.watch_api_v2_request import WatchApiV2Request
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
    api_instance = jfrog_client.WatchesV2Api(api_client)
    watch_api_v2_request = jfrog_client.WatchApiV2Request() # WatchApiV2Request | 
    project_key = 'project_key_example' # str | Project key for creating a Watch in the scope of a project. (optional)

    try:
        # Create Watch
        api_response = api_instance.create_watch_watches_v2_openapi(watch_api_v2_request, project_key=project_key)
        print("The response of WatchesV2Api->create_watch_watches_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WatchesV2Api->create_watch_watches_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **watch_api_v2_request** | [**WatchApiV2Request**](WatchApiV2Request.md)|  | 
 **project_key** | **str**| Project key for creating a Watch in the scope of a project. | [optional] 

### Return type

[**AddCustomLicense200Response**](AddCustomLicense200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Success - Watch has been successfully created |  -  |
**400** | Invalid Watch |  -  |
**403** | No permission for Watch |  -  |
**409** | Watch already exists |  -  |
**415** | Failed to parse request |  -  |
**500** | Failed to create Watch |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_watch_watches_v2_openapi**
> AddCustomLicense200Response delete_watch_watches_v2_openapi(name, project_key=project_key)

Delete Watch

Deletes a Watch by name.

**Notes:**
- For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can delete a Watch in the scope of a project by using the `projectKey` query parameter.
- A Watch can include both Global and Project Policies.

Requires the 'Manage Watches' role to be set on the User or Group level.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.add_custom_license200_response import AddCustomLicense200Response
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
    api_instance = jfrog_client.WatchesV2Api(api_client)
    name = 'name_example' # str | Name of the Watch to delete.
    project_key = 'project_key_example' # str | Project key for scoped deletion of a project Watch. (optional)

    try:
        # Delete Watch
        api_response = api_instance.delete_watch_watches_v2_openapi(name, project_key=project_key)
        print("The response of WatchesV2Api->delete_watch_watches_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WatchesV2Api->delete_watch_watches_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the Watch to delete. | 
 **project_key** | **str**| Project key for scoped deletion of a project Watch. | [optional] 

### Return type

[**AddCustomLicense200Response**](AddCustomLicense200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success - Watch deleted |  -  |
**403** | Failed to delete Watch |  -  |
**404** | Watch not found |  -  |
**500** | Failed to delete Watch |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_watch_watches_v2_openapi**
> WatchApiV2Request get_watch_watches_v2_openapi(name, project_key=project_key)

Get Watch

Gets a named Watch by its name.

**Notes:**
- For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can get a Watch in the scope of a project by using the `projectKey` query parameter.
- A Watch can include both Global and Project Policies.

Requires the 'Manage Watches' role to be set on the User or Group level.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.watch_api_v2_request import WatchApiV2Request
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
    api_instance = jfrog_client.WatchesV2Api(api_client)
    name = 'name_example' # str | Name of the Watch to retrieve.
    project_key = 'project_key_example' # str | Project key for retrieval of a project-scoped Watch. (optional)

    try:
        # Get Watch
        api_response = api_instance.get_watch_watches_v2_openapi(name, project_key=project_key)
        print("The response of WatchesV2Api->get_watch_watches_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WatchesV2Api->get_watch_watches_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the Watch to retrieve. | 
 **project_key** | **str**| Project key for retrieval of a project-scoped Watch. | [optional] 

### Return type

[**WatchApiV2Request**](WatchApiV2Request.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success - Watch retrieved |  -  |
**400** | Failed to get watch: Watch name is empty |  -  |
**403** | Failed to get watch: no permissions |  -  |
**404** | Watch not found |  -  |
**500** | Failed to get Watch |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_watches_watches_v2_openapi**
> List[WatchApiV2Request] get_watches_watches_v2_openapi(project_key=project_key)

Get Watches

Gets a list of all Watches in the system.

**Notes:**
- For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can get a list of Watches in the scope of a project by using the `projectKey` query parameter.
- A Watch can include both Global and Project Policies.

Requires the 'Manage Watches' role to be set on the User or Group level.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.watch_api_v2_request import WatchApiV2Request
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
    api_instance = jfrog_client.WatchesV2Api(api_client)
    project_key = 'project_key_example' # str | Project key for retrieval of project-scoped Watches. (optional)

    try:
        # Get Watches
        api_response = api_instance.get_watches_watches_v2_openapi(project_key=project_key)
        print("The response of WatchesV2Api->get_watches_watches_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WatchesV2Api->get_watches_watches_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| Project key for retrieval of project-scoped Watches. | [optional] 

### Return type

[**List[WatchApiV2Request]**](WatchApiV2Request.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success - Watches retrieved |  -  |
**403** | Failed to get watches: no permissions |  -  |
**500** | Failed to get Watches |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_watch_watches_v2_openapi**
> AddCustomLicense200Response update_watch_watches_v2_openapi(name, watch_api_v2_request, project_key=project_key)

Update Watch

Updates an existing Watch. This overwrites the previous Watch configuration and replaces it with the provided parameters. The Watch name in the path takes precedence over the name in the request body.

**Notes:**
- You cannot update the project_key property.
- A Watch can include both Global and Project Policies.
- For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can update a Watch in the scope of a project by using the `projectKey` query parameter.

Requires the 'Manage Watches' role to be set on the User or Group level.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.add_custom_license200_response import AddCustomLicense200Response
from jfrog_client.models.watch_api_v2_request import WatchApiV2Request
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
    api_instance = jfrog_client.WatchesV2Api(api_client)
    name = 'name_example' # str | Name of the Watch to update.
    watch_api_v2_request = jfrog_client.WatchApiV2Request() # WatchApiV2Request | 
    project_key = 'project_key_example' # str | Project key for scoped updates of a project Watch. (optional)

    try:
        # Update Watch
        api_response = api_instance.update_watch_watches_v2_openapi(name, watch_api_v2_request, project_key=project_key)
        print("The response of WatchesV2Api->update_watch_watches_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WatchesV2Api->update_watch_watches_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Name of the Watch to update. | 
 **watch_api_v2_request** | [**WatchApiV2Request**](WatchApiV2Request.md)|  | 
 **project_key** | **str**| Project key for scoped updates of a project Watch. | [optional] 

### Return type

[**AddCustomLicense200Response**](AddCustomLicense200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success - Watch was successfully updated |  -  |
**400** | Failed to update watch: Watch name is empty |  -  |
**403** | Failed to update watch: no permissions |  -  |
**404** | Failed to update the watch. Watch not found |  -  |
**415** | Failed to parse request |  -  |
**500** | Failed to update Watch |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

