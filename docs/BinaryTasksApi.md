# jfrog_client.BinaryTasksApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_failed_binary_tasks**](BinaryTasksApi.md#delete_failed_binary_tasks) | **DELETE** /artifactory/api/federation/binaries/failures/delete | Delete Failed Binary Tasks
[**get_list_of_failed_binary_tasks**](BinaryTasksApi.md#get_list_of_failed_binary_tasks) | **GET** /artifactory/api/federation/binaries/failures/list | Get List of Failed Binary Tasks
[**replay_failed_binary_tasks**](BinaryTasksApi.md#replay_failed_binary_tasks) | **PUT** /artifactory/api/federation/binaries/failures/replay | Replay Failed Binary Tasks


# **delete_failed_binary_tasks**
> DeleteFailedBinaryTasks200Response delete_failed_binary_tasks(repo_key, sha1=sha1)

Delete Failed Binary Tasks

This API deletes binary tasks that previously failed. This can be done for the entire repository or for a particular binary task in the repository.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.delete_failed_binary_tasks200_response import DeleteFailedBinaryTasks200Response
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
    api_instance = jfrog_client.BinaryTasksApi(api_client)
    repo_key = 'repo_key_example' # str | The name of the repository
    sha1 = 'sha1_example' # str | The SHA1 of the artifact. If not provided, all failed tasks for the repository will be deleted. (optional)

    try:
        # Delete Failed Binary Tasks
        api_response = api_instance.delete_failed_binary_tasks(repo_key, sha1=sha1)
        print("The response of BinaryTasksApi->delete_failed_binary_tasks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BinaryTasksApi->delete_failed_binary_tasks: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The name of the repository | 
 **sha1** | **str**| The SHA1 of the artifact. If not provided, all failed tasks for the repository will be deleted. | [optional] 

### Return type

[**DeleteFailedBinaryTasks200Response**](DeleteFailedBinaryTasks200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - repoKey parameter is required |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_list_of_failed_binary_tasks**
> List[GetListOfFailedBinaryTasks200ResponseInner] get_list_of_failed_binary_tasks(repo_key, limit=limit, page=page)

Get List of Failed Binary Tasks

Returns a list of tasks that failed because Artifactory was not able to retrieve the binary of the task. The number of attempts that Artifactory tries to retrieve the binary of the task is set by maximum, which is 10 by default.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_list_of_failed_binary_tasks200_response_inner import GetListOfFailedBinaryTasks200ResponseInner
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
    api_instance = jfrog_client.BinaryTasksApi(api_client)
    repo_key = 'repo_key_example' # str | The name of the repository
    limit = 1000 # int | The number of tasks to be returned in the response (optional) (default to 1000)
    page = 56 # int | The page number for a group of tasks, starting from 1 (optional)

    try:
        # Get List of Failed Binary Tasks
        api_response = api_instance.get_list_of_failed_binary_tasks(repo_key, limit=limit, page=page)
        print("The response of BinaryTasksApi->get_list_of_failed_binary_tasks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BinaryTasksApi->get_list_of_failed_binary_tasks: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The name of the repository | 
 **limit** | **int**| The number of tasks to be returned in the response | [optional] [default to 1000]
 **page** | **int**| The page number for a group of tasks, starting from 1 | [optional] 

### Return type

[**List[GetListOfFailedBinaryTasks200ResponseInner]**](GetListOfFailedBinaryTasks200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - repoKey parameter is required |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replay_failed_binary_tasks**
> ReplayFailedBinaryTasks200Response replay_failed_binary_tasks(repo_key, sha1=sha1)

Replay Failed Binary Tasks

This API marks binary tasks that previously failed to be processed again. This can be done for the entire repository or for a particular binary task in the repository.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.replay_failed_binary_tasks200_response import ReplayFailedBinaryTasks200Response
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
    api_instance = jfrog_client.BinaryTasksApi(api_client)
    repo_key = 'repo_key_example' # str | The name of the repository
    sha1 = 'sha1_example' # str | The SHA1 of the artifact. If not provided, all failed tasks for the repository will be replayed. (optional)

    try:
        # Replay Failed Binary Tasks
        api_response = api_instance.replay_failed_binary_tasks(repo_key, sha1=sha1)
        print("The response of BinaryTasksApi->replay_failed_binary_tasks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BinaryTasksApi->replay_failed_binary_tasks: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The name of the repository | 
 **sha1** | **str**| The SHA1 of the artifact. If not provided, all failed tasks for the repository will be replayed. | [optional] 

### Return type

[**ReplayFailedBinaryTasks200Response**](ReplayFailedBinaryTasks200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - repoKey parameter is required or invalid request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

