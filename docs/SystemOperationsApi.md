# jfrog_client.SystemOperationsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_background_tasks**](SystemOperationsApi.md#get_background_tasks) | **GET** /artifactory/api/tasks | Get Background Tasks
[**optimize_system_storage**](SystemOperationsApi.md#optimize_system_storage) | **POST** /artifactory/api/system/storage/optimize | Optimize System Storage
[**zap_cache**](SystemOperationsApi.md#zap_cache) | **POST** /artifactory/api/zap/{repoPath} | Zap Cache


# **get_background_tasks**
> BackgroundTasks get_background_tasks()

Get Background Tasks

Returns list of background tasks currently scheduled or running in Artifactory. In HA, the nodeId is added to each task. Task can be in one of few states - scheduled, running, stopped, cancelled. Running task also shows the task start time.

Since: 4.4.0

Security: Requires a valid admin user


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.background_tasks import BackgroundTasks
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
    api_instance = jfrog_client.SystemOperationsApi(api_client)

    try:
        # Get Background Tasks
        api_response = api_instance.get_background_tasks()
        print("The response of SystemOperationsApi->get_background_tasks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemOperationsApi->get_background_tasks: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**BackgroundTasks**](BackgroundTasks.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved background tasks |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **optimize_system_storage**
> optimize_system_storage()

Optimize System Storage

From Artifactory Self-Hosted 4.6.0 to 7.98.x - Raises a flag to invoke balancing between redundant storage units of a shared filestore following the next full garbage collection. From Artifactory Self-Hosted 7.104.5 and later - Immediately triggers balancing between redundant storage units of a sharded filestore. If balancing is already running, the process is skipped. This is an advanced feature intended for administrators.

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
    api_instance = jfrog_client.SystemOperationsApi(api_client)

    try:
        # Optimize System Storage
        api_instance.optimize_system_storage()
    except Exception as e:
        print("Exception when calling SystemOperationsApi->optimize_system_storage: %s\n" % e)
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
**202** | Successfully started system storage optimization |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |
**409** | Sharing balancer is already running |  -  |
**412** | Sharing balancer failed to run |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **zap_cache**
> ZapCache200Response zap_cache(repo_path)

Zap Cache

Zapping cache invalidates all cached metadata artifacts downloaded from central registries like pypi.org, repo1.maven.org, registry.npmjs.org and stored in remote repo cache to speed up remote repo actions. The zapping action does not invalidate immutable artifacts (like software binaries).

After Zapping, whenever an invalidated metadata artifact is needed, Artifactory refreshes it from the central registry first. If unavailable, it falls back to the stale version.

Zapping the cache may slow down for clients who download packages requiring stale metadata updates.

Zapping cache solves:
- Resolving Cache Issues: If there are problems with the cached packages artifacts, such as corruption or inconsistencies with the central repository, zapping the cache fixes these issues.

Since: 7.49.3

Security: Requires a privileged user, Manage or Delete permissions on the Remote Repository.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.zap_cache200_response import ZapCache200Response
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
    api_instance = jfrog_client.SystemOperationsApi(api_client)
    repo_path = 'repo_path_example' # str | Repository path

    try:
        # Zap Cache
        api_response = api_instance.zap_cache(repo_path)
        print("The response of SystemOperationsApi->zap_cache:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemOperationsApi->zap_cache: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_path** | **str**| Repository path | 

### Return type

[**ZapCache200Response**](ZapCache200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Cache zapped successfully |  -  |
**400** | Bad Request - The repoPath does not resolve to a valid remote repository or cache. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have Manage or Delete permissions on the Remote Repository. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

