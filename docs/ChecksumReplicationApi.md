# jfrog_client.ChecksumReplicationApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configure_checksum_replication**](ChecksumReplicationApi.md#configure_checksum_replication) | **PUT** /artifactory/api/config/storage/checksumReplication | Configure Checksum Replication
[**get_checksum_replication**](ChecksumReplicationApi.md#get_checksum_replication) | **GET** /artifactory/api/config/storage/checksumReplication | Get Checksum Replication


# **configure_checksum_replication**
> configure_checksum_replication(checksum_replication_config)

Configure Checksum Replication

Configures metadata replication of artifacts between the source Artifactory and target Artifactory while artifact replication is done with storage-level replication. The API can also set the number of days to trust the replication, which allows the transfer for a limited number of days. Allows the usage of the checkBinaryExistenceInFilestore flag in the Pull/Push Replication API on the source Artifactory. This feature is available for customers in Self-Hosted environments.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.checksum_replication_config import ChecksumReplicationConfig
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
    api_instance = jfrog_client.ChecksumReplicationApi(api_client)
    checksum_replication_config = jfrog_client.ChecksumReplicationConfig() # ChecksumReplicationConfig | Checksum replication configuration

    try:
        # Configure Checksum Replication
        api_instance.configure_checksum_replication(checksum_replication_config)
    except Exception as e:
        print("Exception when calling ChecksumReplicationApi->configure_checksum_replication: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **checksum_replication_config** | [**ChecksumReplicationConfig**](ChecksumReplicationConfig.md)| Checksum replication configuration | 

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
**200** | Checksum replication configured successfully |  -  |
**400** | Bad Request - The request body is malformed or a required parameter is missing. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_checksum_replication**
> ChecksumReplicationStatus get_checksum_replication()

Get Checksum Replication

Gets the checksum replication status on the target Artifactory. The API returns the replication status and the date until which the trust expires. This REST API is supported on Self-Hosted platforms only.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.checksum_replication_status import ChecksumReplicationStatus
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
    api_instance = jfrog_client.ChecksumReplicationApi(api_client)

    try:
        # Get Checksum Replication
        api_response = api_instance.get_checksum_replication()
        print("The response of ChecksumReplicationApi->get_checksum_replication:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ChecksumReplicationApi->get_checksum_replication: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ChecksumReplicationStatus**](ChecksumReplicationStatus.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved checksum replication status |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

