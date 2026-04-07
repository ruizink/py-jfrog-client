# jfrog_client.SupportBundleApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_support_bundle**](SupportBundleApi.md#create_support_bundle) | **POST** /artifactory/api/system/support/bundle | Create Support Bundle
[**delete_support_bundle**](SupportBundleApi.md#delete_support_bundle) | **DELETE** /artifactory/api/system/support/bundle/{bundleId} | Delete Support Bundle
[**get_support_bundle**](SupportBundleApi.md#get_support_bundle) | **GET** /artifactory/api/system/support/bundle/{bundleId}/archive | Get Support Bundle
[**get_support_bundle_metadata**](SupportBundleApi.md#get_support_bundle_metadata) | **GET** /artifactory/api/system/support/bundle/{bundleId} | Get Support Bundle Metadata
[**list_support_bundles**](SupportBundleApi.md#list_support_bundles) | **GET** /artifactory/api/system/support/bundles | List Support Bundles


# **create_support_bundle**
> CreateSupportBundle200Response create_support_bundle(support_bundle_config=support_bundle_config)

Create Support Bundle

Create a new support bundle.

**Note:** This API is available only in Self-Hosted platforms.

**Security:** Requires an admin user.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.create_support_bundle200_response import CreateSupportBundle200Response
from jfrog_client.models.support_bundle_config import SupportBundleConfig
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
    api_instance = jfrog_client.SupportBundleApi(api_client)
    support_bundle_config = jfrog_client.SupportBundleConfig() # SupportBundleConfig |  (optional)

    try:
        # Create Support Bundle
        api_response = api_instance.create_support_bundle(support_bundle_config=support_bundle_config)
        print("The response of SupportBundleApi->create_support_bundle:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SupportBundleApi->create_support_bundle: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **support_bundle_config** | [**SupportBundleConfig**](SupportBundleConfig.md)|  | [optional] 

### Return type

[**CreateSupportBundle200Response**](CreateSupportBundle200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Support bundle created successfully |  -  |
**400** | Bad Request - Operation not supported in this environment (e.g., SaaS, AOL). |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_support_bundle**
> delete_support_bundle(bundle_id)

Delete Support Bundle

Deletes a previously created bundle from the system.

**Note:** This API is available only in Self-Hosted platforms.

**Security:** Requires an admin user.


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
    api_instance = jfrog_client.SupportBundleApi(api_client)
    bundle_id = 'bundle_id_example' # str | The bundle ID to delete

    try:
        # Delete Support Bundle
        api_instance.delete_support_bundle(bundle_id)
    except Exception as e:
        print("Exception when calling SupportBundleApi->delete_support_bundle: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **str**| The bundle ID to delete | 

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
**204** | Bundle deleted successfully |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Bundle not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_support_bundle**
> bytes get_support_bundle(bundle_id)

Get Support Bundle

Downloads a previously created bundle currently stored in the system.

**Note:** This API is available only in Self-Hosted platforms.

**Security:** Requires an admin user.


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
    api_instance = jfrog_client.SupportBundleApi(api_client)
    bundle_id = 'bundle_id_example' # str | The bundle ID to download

    try:
        # Get Support Bundle
        api_response = api_instance.get_support_bundle(bundle_id)
        print("The response of SupportBundleApi->get_support_bundle:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SupportBundleApi->get_support_bundle: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **str**| The bundle ID to download | 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Bundle archive stream |  -  |
**400** | Failed to download bundle |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Bundle not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_support_bundle_metadata**
> GetSupportBundleMetadata200Response get_support_bundle_metadata(bundle_id)

Get Support Bundle Metadata

Downloads the metadata for a previously created bundle currently stored in the system.

**Note:** This API is available only in Self-Hosted platforms.

**Security:** Requires an admin user.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_support_bundle_metadata200_response import GetSupportBundleMetadata200Response
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
    api_instance = jfrog_client.SupportBundleApi(api_client)
    bundle_id = 'bundle_id_example' # str | The bundle ID

    try:
        # Get Support Bundle Metadata
        api_response = api_instance.get_support_bundle_metadata(bundle_id)
        print("The response of SupportBundleApi->get_support_bundle_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SupportBundleApi->get_support_bundle_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bundle_id** | **str**| The bundle ID | 

### Return type

[**GetSupportBundleMetadata200Response**](GetSupportBundleMetadata200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Bundle not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_support_bundles**
> ListSupportBundles200Response list_support_bundles()

List Support Bundles

Lists previously created bundles currently stored in the system.

**Note:** This API is available only in Self-Hosted platforms.

**Security:** Requires an admin user.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.list_support_bundles200_response import ListSupportBundles200Response
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
    api_instance = jfrog_client.SupportBundleApi(api_client)

    try:
        # List Support Bundles
        api_response = api_instance.list_support_bundles()
        print("The response of SupportBundleApi->list_support_bundles:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SupportBundleApi->list_support_bundles: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**ListSupportBundles200Response**](ListSupportBundles200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

