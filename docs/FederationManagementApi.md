# jfrog_client.FederationManagementApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**convert_federated_repository_to_local**](FederationManagementApi.md#convert_federated_repository_to_local) | **POST** /artifactory/api/federation/convertToLocal | Convert Federated Repository to a Local Repository
[**convert_local_repository_to_federated**](FederationManagementApi.md#convert_local_repository_to_federated) | **POST** /artifactory/api/federation/migrate/{repoKey} | Convert Local Repository to a Federated Repository
[**federated_repository_force_full_sync**](FederationManagementApi.md#federated_repository_force_full_sync) | **POST** /artifactory/api/federation/forceFullSync/{repoKey} | Federated Repository Force Full Sync
[**federated_repository_full_sync**](FederationManagementApi.md#federated_repository_full_sync) | **POST** /artifactory/api/federation/fullSync/{repoKey} | Federated Repository Full Sync
[**federation_recovery**](FederationManagementApi.md#federation_recovery) | **POST** /artifactory/api/federation/recovery | Federation Recovery
[**get_list_of_inconsistent_federated_repositories**](FederationManagementApi.md#get_list_of_inconsistent_federated_repositories) | **GET** /artifactory/api/federation/inconsistentRepos | Get List of Inconsistent Federated Repositories
[**propagate_creation_time_metadata_during_full_sync**](FederationManagementApi.md#propagate_creation_time_metadata_during_full_sync) | **PUT** /artifactory/api/federation/propagateCreatedTime | Propagate Creation Time Metadata during Full Sync
[**reconnect_to_federation_client**](FederationManagementApi.md#reconnect_to_federation_client) | **POST** /artifactory/api/federation/reconnect | Reconnect to Federation Client
[**remove_federation_member**](FederationManagementApi.md#remove_federation_member) | **POST** /artifactory/api/federation/removeMember | Remove Federation Member
[**synchronize_federated_member_configuration**](FederationManagementApi.md#synchronize_federated_member_configuration) | **POST** /artifactory/api/federation/configSync/{repoKey} | Synchronize Federated Member Configuration


# **convert_federated_repository_to_local**
> ConvertFederatedRepositoryToLocal200Response convert_federated_repository_to_local(request_body)

Convert Federated Repository to a Local Repository

Converts the specified Federated repository to a local repository. The conversion from Federated back to local is allowed only if the Federated repository is not part of an active Federation containing additional members.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.convert_federated_repository_to_local200_response import ConvertFederatedRepositoryToLocal200Response
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
    api_instance = jfrog_client.FederationManagementApi(api_client)
    request_body = ['request_body_example'] # List[str] | 

    try:
        # Convert Federated Repository to a Local Repository
        api_response = api_instance.convert_federated_repository_to_local(request_body)
        print("The response of FederationManagementApi->convert_federated_repository_to_local:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationManagementApi->convert_federated_repository_to_local: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**List[str]**](str.md)|  | 

### Return type

[**ConvertFederatedRepositoryToLocal200Response**](ConvertFederatedRepositoryToLocal200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | One or more repos converted successfully |  -  |
**400** | Repos failed to convert |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **convert_local_repository_to_federated**
> str convert_local_repository_to_federated(repo_key)

Convert Local Repository to a Federated Repository

Converts the local repository to a Federated repository. When working inside a specific project, the Federated repositories that comprise the Federation must all share the same project key.

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
    api_instance = jfrog_client.FederationManagementApi(api_client)
    repo_key = 'repo_key_example' # str | The name of the local repository

    try:
        # Convert Local Repository to a Federated Repository
        api_response = api_instance.convert_local_repository_to_federated(repo_key)
        print("The response of FederationManagementApi->convert_local_repository_to_federated:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationManagementApi->convert_local_repository_to_federated: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The name of the local repository | 

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
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **federated_repository_force_full_sync**
> FederatedRepositoryFullSync200Response federated_repository_force_full_sync(repo_key, mirror=mirror)

Federated Repository Force Full Sync

Forces a full synchronization between the Federated repository members, interrupting another Full Sync operation that is already in progress. This can be used if the Full Sync operation in progress has become stuck.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.federated_repository_full_sync200_response import FederatedRepositoryFullSync200Response
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
    api_instance = jfrog_client.FederationManagementApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    mirror = 'mirror_example' # str | The URL of a specific Federation member to sync with. If not set, syncs with all remote Federation members. (optional)

    try:
        # Federated Repository Force Full Sync
        api_response = api_instance.federated_repository_force_full_sync(repo_key, mirror=mirror)
        print("The response of FederationManagementApi->federated_repository_force_full_sync:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationManagementApi->federated_repository_force_full_sync: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **mirror** | **str**| The URL of a specific Federation member to sync with. If not set, syncs with all remote Federation members. | [optional] 

### Return type

[**FederatedRepositoryFullSync200Response**](FederatedRepositoryFullSync200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
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

# **federated_repository_full_sync**
> FederatedRepositoryFullSync200Response federated_repository_full_sync(repo_key, mirror=mirror, is_dry=is_dry)

Federated Repository Full Sync

Runs a full synchronization between the Federated repository members. Starting with Artifactory 7.104.2, there is an option to use the Federation Comparison tool, which uses the isDry query parameter to generate a JSON file listing the binaries requiring synchronization without carrying out the operation.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.federated_repository_full_sync200_response import FederatedRepositoryFullSync200Response
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
    api_instance = jfrog_client.FederationManagementApi(api_client)
    repo_key = 'repo_key_example' # str | The name of the repository
    mirror = 'mirror_example' # str | The URL of the specific Federation member on which you want to run the Full Sync. If this parameter is not set, the Full Sync is run against all remote Federation members. (optional)
    is_dry = False # bool | When set to true, runs the Federation Comparison tool to determine which files on the local member are missing on the remote members. (optional) (default to False)

    try:
        # Federated Repository Full Sync
        api_response = api_instance.federated_repository_full_sync(repo_key, mirror=mirror, is_dry=is_dry)
        print("The response of FederationManagementApi->federated_repository_full_sync:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationManagementApi->federated_repository_full_sync: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The name of the repository | 
 **mirror** | **str**| The URL of the specific Federation member on which you want to run the Full Sync. If this parameter is not set, the Full Sync is run against all remote Federation members. | [optional] 
 **is_dry** | **bool**| When set to true, runs the Federation Comparison tool to determine which files on the local member are missing on the remote members. | [optional] [default to False]

### Return type

[**FederatedRepositoryFullSync200Response**](FederatedRepositoryFullSync200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
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

# **federation_recovery**
> str federation_recovery(repo_key=repo_key, force=force)

Federation Recovery

Activates the recovery mechanism on the Federation or the specified Federated repository. The recovery mechanism clears errors in exhausted queues so that additional attempts can be made to send events to all remote Federation members.

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
    api_instance = jfrog_client.FederationManagementApi(api_client)
    repo_key = 'repo_key_example' # str | The name of the Federated repository on which to perform recovery. If this property is not defined, recovery is performed on all Federated repositories. (optional)
    force = False # bool | When set to true, forces the recovery operation. (optional) (default to False)

    try:
        # Federation Recovery
        api_response = api_instance.federation_recovery(repo_key=repo_key, force=force)
        print("The response of FederationManagementApi->federation_recovery:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationManagementApi->federation_recovery: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The name of the Federated repository on which to perform recovery. If this property is not defined, recovery is performed on all Federated repositories. | [optional] 
 **force** | **bool**| When set to true, forces the recovery operation. | [optional] [default to False]

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
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

# **get_list_of_inconsistent_federated_repositories**
> List[str] get_list_of_inconsistent_federated_repositories()

Get List of Inconsistent Federated Repositories

Returns a list of Federated repositories in your local Artifactory instance that have a configuration mismatch with one or more remote members.

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
    api_instance = jfrog_client.FederationManagementApi(api_client)

    try:
        # Get List of Inconsistent Federated Repositories
        api_response = api_instance.get_list_of_inconsistent_federated_repositories()
        print("The response of FederationManagementApi->get_list_of_inconsistent_federated_repositories:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationManagementApi->get_list_of_inconsistent_federated_repositories: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

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
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **propagate_creation_time_metadata_during_full_sync**
> object propagate_creation_time_metadata_during_full_sync(enabled)

Propagate Creation Time Metadata during Full Sync

Enables the propagation of artifact creation time metadata during Full Sync operations. This endpoint is relevant when using the Artifactory Federation Service (RTFS).

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
    api_instance = jfrog_client.FederationManagementApi(api_client)
    enabled = True # bool | Set to true to enable the propagation of artifact creation time metadata during Full Sync operations.

    try:
        # Propagate Creation Time Metadata during Full Sync
        api_response = api_instance.propagate_creation_time_metadata_during_full_sync(enabled)
        print("The response of FederationManagementApi->propagate_creation_time_metadata_during_full_sync:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationManagementApi->propagate_creation_time_metadata_during_full_sync: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **enabled** | **bool**| Set to true to enable the propagation of artifact creation time metadata during Full Sync operations. | 

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
**200** | Enabled |  -  |
**400** | Bad Request - Missing the enabled query parameter |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reconnect_to_federation_client**
> str reconnect_to_federation_client()

Reconnect to Federation Client

If Artifactory cannot connect to the Artifactory Federation service automatically during startup, use this endpoint to reconnect the service manually.

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
    api_instance = jfrog_client.FederationManagementApi(api_client)

    try:
        # Reconnect to Federation Client
        api_response = api_instance.reconnect_to_federation_client()
        print("The response of FederationManagementApi->reconnect_to_federation_client:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationManagementApi->reconnect_to_federation_client: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

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
**424** | Failed Dependency Client |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_federation_member**
> str remove_federation_member(body)

Remove Federation Member

Removes the member from all the Federations with which it was associated. This API requires the installation of the Artifactory Federation Service.

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
    api_instance = jfrog_client.FederationManagementApi(api_client)
    body = 'body_example' # str | 

    try:
        # Remove Federation Member
        api_response = api_instance.remove_federation_member(body)
        print("The response of FederationManagementApi->remove_federation_member:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationManagementApi->remove_federation_member: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **str**|  | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: text/plain
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Member found and deleted |  -  |
**400** | Bad Request - Invalid URL, non-existent member, or failed getting JPD config for remote member |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **synchronize_federated_member_configuration**
> object synchronize_federated_member_configuration(repo_key)

Synchronize Federated Member Configuration

Synchronizes the configuration of a federated member in case of a network malfunction.

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
    api_instance = jfrog_client.FederationManagementApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key to synchronize configuration for

    try:
        # Synchronize Federated Member Configuration
        api_response = api_instance.synchronize_federated_member_configuration(repo_key)
        print("The response of FederationManagementApi->synchronize_federated_member_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling FederationManagementApi->synchronize_federated_member_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key to synchronize configuration for | 

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
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

