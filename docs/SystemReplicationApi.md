# jfrog_client.SystemReplicationApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**block_system_replication**](SystemReplicationApi.md#block_system_replication) | **POST** /artifactory/api/system/replications/block | Block System Replication
[**get_global_system_replication_configuration**](SystemReplicationApi.md#get_global_system_replication_configuration) | **GET** /artifactory/api/system/replications | Get Global System Replication Configuration
[**unblock_system_replication**](SystemReplicationApi.md#unblock_system_replication) | **POST** /artifactory/api/system/replications/unblock | Unblock System Replication


# **block_system_replication**
> str block_system_replication(push=push, pull=pull)

Block System Replication

Blocks replications globally. Push and pull are true by default. If false, replication for the corresponding type is not blocked. Requires Artifactory Pro.

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
    api_instance = jfrog_client.SystemReplicationApi(api_client)
    push = 'true' # str | Whether to block push replications (accepts \"true\" or \"false\") (optional) (default to 'true')
    pull = 'true' # str | Whether to block pull replications (accepts \"true\" or \"false\") (optional) (default to 'true')

    try:
        # Block System Replication
        api_response = api_instance.block_system_replication(push=push, pull=pull)
        print("The response of SystemReplicationApi->block_system_replication:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemReplicationApi->block_system_replication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **push** | **str**| Whether to block push replications (accepts \&quot;true\&quot; or \&quot;false\&quot;) | [optional] [default to &#39;true&#39;]
 **pull** | **str**| Whether to block pull replications (accepts \&quot;true\&quot; or \&quot;false\&quot;) | [optional] [default to &#39;true&#39;]

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
**200** | Replications blocked successfully |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_global_system_replication_configuration**
> GlobalSystemReplicationConfig get_global_system_replication_configuration()

Get Global System Replication Configuration

Returns the global system replication configuration status, i.e. if push and pull replications are blocked or unblocked. Requires Artifactory Pro.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.global_system_replication_config import GlobalSystemReplicationConfig
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
    api_instance = jfrog_client.SystemReplicationApi(api_client)

    try:
        # Get Global System Replication Configuration
        api_response = api_instance.get_global_system_replication_configuration()
        print("The response of SystemReplicationApi->get_global_system_replication_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemReplicationApi->get_global_system_replication_configuration: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GlobalSystemReplicationConfig**](GlobalSystemReplicationConfig.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved global system replication configuration |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unblock_system_replication**
> str unblock_system_replication(push=push, pull=pull)

Unblock System Replication

Unblocks replications globally. Push and pull are true by default. If false, replication for the corresponding type is not unblocked. Requires Artifactory Pro.

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
    api_instance = jfrog_client.SystemReplicationApi(api_client)
    push = 'true' # str | Whether to unblock push replications (accepts \"true\" or \"false\") (optional) (default to 'true')
    pull = 'true' # str | Whether to unblock pull replications (accepts \"true\" or \"false\") (optional) (default to 'true')

    try:
        # Unblock System Replication
        api_response = api_instance.unblock_system_replication(push=push, pull=pull)
        print("The response of SystemReplicationApi->unblock_system_replication:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SystemReplicationApi->unblock_system_replication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **push** | **str**| Whether to unblock push replications (accepts \&quot;true\&quot; or \&quot;false\&quot;) | [optional] [default to &#39;true&#39;]
 **pull** | **str**| Whether to unblock pull replications (accepts \&quot;true\&quot; or \&quot;false\&quot;) | [optional] [default to &#39;true&#39;]

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
**200** | Replications unblocked successfully |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

