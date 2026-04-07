# jfrog_client.RepositoryReplicationApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**close_event_based_pull_replication_channels**](RepositoryReplicationApi.md#close_event_based_pull_replication_channels) | **POST** /artifactory/api/replications/channels/release | Close all event based pull replication subscribed channels
[**create_or_replace_multi_push_replication**](RepositoryReplicationApi.md#create_or_replace_multi_push_replication) | **PUT** /artifactory/api/replications/multiple/{repoKey} | Create or Replace Local Multi-push Replication
[**delete_repository_replication_configuration**](RepositoryReplicationApi.md#delete_repository_replication_configuration) | **DELETE** /artifactory/api/replications/{repoKey} | Delete Repository Replication Configuration
[**execute_pull_push_replication**](RepositoryReplicationApi.md#execute_pull_push_replication) | **POST** /artifactory/api/replication/execute/{repoPath} | Pull/Push Replication
[**get_remote_repositories_registered_for_replication**](RepositoryReplicationApi.md#get_remote_repositories_registered_for_replication) | **GET** /artifactory/api/replications/channels/{repoKey} | Get Remote Repositories Registered for Replication
[**get_replication_status**](RepositoryReplicationApi.md#get_replication_status) | **GET** /artifactory/api/replication/{repoPath} | Get Replication Status
[**get_repository_replication_configuration**](RepositoryReplicationApi.md#get_repository_replication_configuration) | **GET** /artifactory/api/replications/{repoKey} | Get Repository Replication Configuration
[**set_repository_replication_configuration**](RepositoryReplicationApi.md#set_repository_replication_configuration) | **PUT** /artifactory/api/replications/{repoKey} | Set Repository Replication Configuration
[**update_multi_push_replication**](RepositoryReplicationApi.md#update_multi_push_replication) | **POST** /artifactory/api/replications/multiple/{repoKey} | Update Local Multi-push Replication
[**update_repository_replication_configuration**](RepositoryReplicationApi.md#update_repository_replication_configuration) | **POST** /artifactory/api/replications/{repoKey} | Update Repository Replication Configuration


# **close_event_based_pull_replication_channels**
> object close_event_based_pull_replication_channels()

Close all event based pull replication subscribed channels

Close the connection of all the event based pull replication instances subscribed to this Artifactory, which force them to try to reopen connection. Requires Artifactory Pro.

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
    api_instance = jfrog_client.RepositoryReplicationApi(api_client)

    try:
        # Close all event based pull replication subscribed channels
        api_response = api_instance.close_event_based_pull_replication_channels()
        print("The response of RepositoryReplicationApi->close_event_based_pull_replication_channels:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoryReplicationApi->close_event_based_pull_replication_channels: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

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
**200** | Channels released successfully |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_or_replace_multi_push_replication**
> create_or_replace_multi_push_replication(repo_key, multiple_replication_config_request)

Create or Replace Local Multi-push Replication

Creates or replaces a local multi-push replication configuration. Supported by local repositories. Requires an enterprise license

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.multiple_replication_config_request import MultipleReplicationConfigRequest
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
    api_instance = jfrog_client.RepositoryReplicationApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    multiple_replication_config_request = jfrog_client.MultipleReplicationConfigRequest() # MultipleReplicationConfigRequest | Multiple replication configuration

    try:
        # Create or Replace Local Multi-push Replication
        api_instance.create_or_replace_multi_push_replication(repo_key, multiple_replication_config_request)
    except Exception as e:
        print("Exception when calling RepositoryReplicationApi->create_or_replace_multi_push_replication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **multiple_replication_config_request** | [**MultipleReplicationConfigRequest**](MultipleReplicationConfigRequest.md)| Multiple replication configuration | 

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
**200** | Multi-push replication configuration created or replaced successfully |  -  |
**400** | Bad Request - The request body is malformed or a required parameter is missing. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_repository_replication_configuration**
> delete_repository_replication_configuration(repo_key, url=url)

Delete Repository Replication Configuration

Delete existing replication configuration for given repository key. Supported by local and local-cached repositories. Requires Artifactory Pro.

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
    api_instance = jfrog_client.RepositoryReplicationApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    url = 'url_example' # str | URL of the replicated repository. If omitted, all multi-push replication configurations for the source repository are deleted. (optional)

    try:
        # Delete Repository Replication Configuration
        api_instance.delete_repository_replication_configuration(repo_key, url=url)
    except Exception as e:
        print("Exception when calling RepositoryReplicationApi->delete_repository_replication_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **url** | **str**| URL of the replicated repository. If omitted, all multi-push replication configurations for the source repository are deleted. | [optional] 

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
**200** | Replication configuration deleted successfully |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |
**404** | Not Found - The specified repository or replication configuration does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **execute_pull_push_replication**
> execute_pull_push_replication(repo_path, strategy=strategy, replication_request=replication_request)

Pull/Push Replication

Schedules immediate content replication between two Artifactory instances. Replication can optionally include properties and delete items if they do not exist in the source repository. Pull Replication - pulls content from a remote Artifactory repository to a local cache of the remote repository. Push Replication - pushes content from a local repository into a local repository of another Artifactory instance. Multi-push Replication - pushes content from a local repository into a local repository of several Artifactory instances (Enterprise only). The type of replication initiated depends on the type of repository specified in the repoPath parameter. If repoPath is a local repository, a push replication will be triggered. If repoPath is a remote repository cache, a pull replication will be triggered. If no repositories are provided in the payload, Artifactory will trigger all existing replication configurations.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.replication_request import ReplicationRequest
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
    api_instance = jfrog_client.RepositoryReplicationApi(api_client)
    repo_path = 'repo_path_example' # str | Repository path (local repository for push, remote repository cache for pull)
    strategy = 'strategy_example' # str | Replication strategy to use (optional)
    replication_request = [jfrog_client.ReplicationRequest()] # List[ReplicationRequest] | Array of replication targets. If omitted, all existing replication configurations will be triggered. (optional)

    try:
        # Pull/Push Replication
        api_instance.execute_pull_push_replication(repo_path, strategy=strategy, replication_request=replication_request)
    except Exception as e:
        print("Exception when calling RepositoryReplicationApi->execute_pull_push_replication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_path** | **str**| Repository path (local repository for push, remote repository cache for pull) | 
 **strategy** | **str**| Replication strategy to use | [optional] 
 **replication_request** | [**List[ReplicationRequest]**](ReplicationRequest.md)| Array of replication targets. If omitted, all existing replication configurations will be triggered. | [optional] 

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
**200** | Replication executed successfully |  -  |
**400** | Bad Request - The request body is malformed or a required parameter is missing. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_remote_repositories_registered_for_replication**
> List[str] get_remote_repositories_registered_for_replication(repo_key)

Get Remote Repositories Registered for Replication

This endpoint, which is run against a local repository, returns a list of all the instances subscribed for event-based pull replication by a remote repository. Requires Artifactory Pro.

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
    api_instance = jfrog_client.RepositoryReplicationApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key

    try:
        # Get Remote Repositories Registered for Replication
        api_response = api_instance.get_remote_repositories_registered_for_replication(repo_key)
        print("The response of RepositoryReplicationApi->get_remote_repositories_registered_for_replication:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoryReplicationApi->get_remote_repositories_registered_for_replication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 

### Return type

**List[str]**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved registered repositories |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_replication_status**
> ReplicationStatus get_replication_status(repo_path)

Get Replication Status

Returns the replication status for the specified repository path. Returns status based on replication properties annotated on the artifact. Supported by local, local-cached, and remote repositories. Requires Artifactory Pro.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.replication_status import ReplicationStatus
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
    api_instance = jfrog_client.RepositoryReplicationApi(api_client)
    repo_path = 'repo_path_example' # str | Repository path (e.g., repo-key/path/to/artifact)

    try:
        # Get Replication Status
        api_response = api_instance.get_replication_status(repo_path)
        print("The response of RepositoryReplicationApi->get_replication_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoryReplicationApi->get_replication_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_path** | **str**| Repository path (e.g., repo-key/path/to/artifact) | 

### Return type

[**ReplicationStatus**](ReplicationStatus.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved replication status |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have read permission. |  -  |
**404** | Not Found - The specified repository does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_repository_replication_configuration**
> GetRepositoryReplicationConfiguration200Response get_repository_replication_configuration(repo_key)

Get Repository Replication Configuration

Returns the replication configuration for the given repository key, if found. Supported by local and remote repositories

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_repository_replication_configuration200_response import GetRepositoryReplicationConfiguration200Response
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
    api_instance = jfrog_client.RepositoryReplicationApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key

    try:
        # Get Repository Replication Configuration
        api_response = api_instance.get_repository_replication_configuration(repo_key)
        print("The response of RepositoryReplicationApi->get_repository_replication_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RepositoryReplicationApi->get_repository_replication_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 

### Return type

[**GetRepositoryReplicationConfiguration200Response**](GetRepositoryReplicationConfiguration200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved replication configuration |  -  |
**400** | Bad Request - Repository not found or invalid key. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |
**404** | Not Found - The specified repository does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_repository_replication_configuration**
> set_repository_replication_configuration(repo_key, get_repository_replication_configuration200_response)

Set Repository Replication Configuration

Add or replace replication configuration for given repository key. Supported by local and remote repositories. Accepts the JSON payload returned from Get Repository Replication Configuration for a single and an array of configurations. If the payload is an array of replication configurations, then values for cronExp and enableEventReplication in the first element in the array will determine the corresponding values when setting the repository replication configuration. Requires Artifactory Pro.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_repository_replication_configuration200_response import GetRepositoryReplicationConfiguration200Response
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
    api_instance = jfrog_client.RepositoryReplicationApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    get_repository_replication_configuration200_response = jfrog_client.GetRepositoryReplicationConfiguration200Response() # GetRepositoryReplicationConfiguration200Response | Replication configuration (single object or array)

    try:
        # Set Repository Replication Configuration
        api_instance.set_repository_replication_configuration(repo_key, get_repository_replication_configuration200_response)
    except Exception as e:
        print("Exception when calling RepositoryReplicationApi->set_repository_replication_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **get_repository_replication_configuration200_response** | [**GetRepositoryReplicationConfiguration200Response**](GetRepositoryReplicationConfiguration200Response.md)| Replication configuration (single object or array) | 

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
**200** | Replication configuration set successfully |  -  |
**400** | Bad Request - The request body is malformed or a required parameter is missing. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_multi_push_replication**
> update_multi_push_replication(repo_key, multiple_replication_config_request)

Update Local Multi-push Replication

Updates a local multi-push replication configuration. Supported by local repositories. Requires an enterprise license.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.multiple_replication_config_request import MultipleReplicationConfigRequest
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
    api_instance = jfrog_client.RepositoryReplicationApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    multiple_replication_config_request = jfrog_client.MultipleReplicationConfigRequest() # MultipleReplicationConfigRequest | Multiple replication configuration

    try:
        # Update Local Multi-push Replication
        api_instance.update_multi_push_replication(repo_key, multiple_replication_config_request)
    except Exception as e:
        print("Exception when calling RepositoryReplicationApi->update_multi_push_replication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **multiple_replication_config_request** | [**MultipleReplicationConfigRequest**](MultipleReplicationConfigRequest.md)| Multiple replication configuration | 

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
**200** | Multi-push replication configuration updated successfully |  -  |
**400** | Bad Request - The request body is malformed or a required parameter is missing. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_repository_replication_configuration**
> update_repository_replication_configuration(repo_key, replication_config_request)

Update Repository Replication Configuration

Update existing replication configuration for given repository key, if found. Supported by local and remote repositories. Requires Artifactory Pro

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.replication_config_request import ReplicationConfigRequest
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
    api_instance = jfrog_client.RepositoryReplicationApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    replication_config_request = jfrog_client.ReplicationConfigRequest() # ReplicationConfigRequest | Full or partial replication configuration

    try:
        # Update Repository Replication Configuration
        api_instance.update_repository_replication_configuration(repo_key, replication_config_request)
    except Exception as e:
        print("Exception when calling RepositoryReplicationApi->update_repository_replication_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **replication_config_request** | [**ReplicationConfigRequest**](ReplicationConfigRequest.md)| Full or partial replication configuration | 

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
**200** | Replication configuration updated successfully |  -  |
**400** | Bad Request - The request body is malformed or a required parameter is missing. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |
**404** | Not Found - The specified repository or replication configuration does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

