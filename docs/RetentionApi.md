# jfrog_client.RetentionApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_release_bundles**](RetentionApi.md#delete_release_bundles) | **POST** /artifactory/api/v1/bundle/retention/delete | Delete Release Bundles
[**get_configured_retention_policies_list**](RetentionApi.md#get_configured_retention_policies_list) | **POST** /artifactory/api/v1/bundle/retention/report | Get the Configured Retention Policies List
[**get_retention_operations_history**](RetentionApi.md#get_retention_operations_history) | **GET** /artifactory/api/v1/bundle/retention/audit | Get the Retention Operations History
[**get_retention_policy_configuration**](RetentionApi.md#get_retention_policy_configuration) | **GET** /artifactory/api/v1/bundle/retention/config | Get Retention Policy Configuration
[**mark_release_bundles_to_keep_or_dont_keep**](RetentionApi.md#mark_release_bundles_to_keep_or_dont_keep) | **POST** /artifactory/api/v1/bundle/retention/keep | Mark Release Bundles to Keep (or Don&#39;t Keep)
[**query_status_of_retention_service**](RetentionApi.md#query_status_of_retention_service) | **GET** /artifactory/api/v1/bundle/retention/config/enable | Query the Status of the Retention Service
[**set_retention_policies_to_enabled**](RetentionApi.md#set_retention_policies_to_enabled) | **POST** /artifactory/api/v1/bundle/retention/config/enable | Set Retention Policies to Enabled
[**set_retention_policy_configuration**](RetentionApi.md#set_retention_policy_configuration) | **POST** /artifactory/api/v1/bundle/retention/config | Set the Retention Policy Configuration


# **delete_release_bundles**
> object delete_release_bundles(delete_release_bundles_request_inner, dry_run=dry_run)

Delete Release Bundles

Deletes the Release Bundles.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.delete_release_bundles_request_inner import DeleteReleaseBundlesRequestInner
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
    api_instance = jfrog_client.RetentionApi(api_client)
    delete_release_bundles_request_inner = [jfrog_client.DeleteReleaseBundlesRequestInner()] # List[DeleteReleaseBundlesRequestInner] | 
    dry_run = False # bool | When true no actual deletion will be performed, could be used for validation. Default is false. (optional) (default to False)

    try:
        # Delete Release Bundles
        api_response = api_instance.delete_release_bundles(delete_release_bundles_request_inner, dry_run=dry_run)
        print("The response of RetentionApi->delete_release_bundles:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RetentionApi->delete_release_bundles: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_release_bundles_request_inner** | [**List[DeleteReleaseBundlesRequestInner]**](DeleteReleaseBundlesRequestInner.md)|  | 
 **dry_run** | **bool**| When true no actual deletion will be performed, could be used for validation. Default is false. | [optional] [default to False]

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**405** | Method Not Allowed - This endpoint is not available on this Artifactory instance configuration. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_configured_retention_policies_list**
> GetConfiguredRetentionPoliciesList200Response get_configured_retention_policies_list(get_configured_retention_policies_list_request, offset=offset, limit=limit, order_by=order_by, direction=direction, pattern=pattern)

Get the Configured Retention Policies List

Finds the bundles that are candidates for retention according to the configuration type.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_configured_retention_policies_list200_response import GetConfiguredRetentionPoliciesList200Response
from jfrog_client.models.get_configured_retention_policies_list_request import GetConfiguredRetentionPoliciesListRequest
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
    api_instance = jfrog_client.RetentionApi(api_client)
    get_configured_retention_policies_list_request = jfrog_client.GetConfiguredRetentionPoliciesListRequest() # GetConfiguredRetentionPoliciesListRequest | 
    offset = 0 # int | Offset in set of all fitting bundle versions (fitting by retention config). Default is 0. (optional) (default to 0)
    limit = 100 # int | Maximum amount of items to return. Default is 100. (optional) (default to 100)
    order_by = distribution_time # str | Order by field. Default is \"distribution_time\". (optional) (default to distribution_time)
    direction = asc # str | Sort direction. Default is \"asc\". (optional) (default to asc)
    pattern = '*' # str | Case insensitive name/version pattern, where \"*\" is allowed as the wild card. Default is \"*\". (optional) (default to '*')

    try:
        # Get the Configured Retention Policies List
        api_response = api_instance.get_configured_retention_policies_list(get_configured_retention_policies_list_request, offset=offset, limit=limit, order_by=order_by, direction=direction, pattern=pattern)
        print("The response of RetentionApi->get_configured_retention_policies_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RetentionApi->get_configured_retention_policies_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **get_configured_retention_policies_list_request** | [**GetConfiguredRetentionPoliciesListRequest**](GetConfiguredRetentionPoliciesListRequest.md)|  | 
 **offset** | **int**| Offset in set of all fitting bundle versions (fitting by retention config). Default is 0. | [optional] [default to 0]
 **limit** | **int**| Maximum amount of items to return. Default is 100. | [optional] [default to 100]
 **order_by** | **str**| Order by field. Default is \&quot;distribution_time\&quot;. | [optional] [default to distribution_time]
 **direction** | **str**| Sort direction. Default is \&quot;asc\&quot;. | [optional] [default to asc]
 **pattern** | **str**| Case insensitive name/version pattern, where \&quot;*\&quot; is allowed as the wild card. Default is \&quot;*\&quot;. | [optional] [default to &#39;*&#39;]

### Return type

[**GetConfiguredRetentionPoliciesList200Response**](GetConfiguredRetentionPoliciesList200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**405** | Method Not Allowed - This endpoint is not available on this Artifactory instance configuration. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_retention_operations_history**
> GetRetentionOperationsHistory200Response get_retention_operations_history(offset=offset, limit=limit, order_by=order_by, direction=direction)

Get the Retention Operations History

Gets the history of the retention operations.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_retention_operations_history200_response import GetRetentionOperationsHistory200Response
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
    api_instance = jfrog_client.RetentionApi(api_client)
    offset = 0 # int | Offset in a set of historical operations. Default is 0. (optional) (default to 0)
    limit = 100 # int | Maximum amount of items to return. Default is 100. (optional) (default to 100)
    order_by = created # str | Order by field. Default is \"created\". (optional) (default to created)
    direction = desc # str | Sort direction. Default is \"desc\". (optional) (default to desc)

    try:
        # Get the Retention Operations History
        api_response = api_instance.get_retention_operations_history(offset=offset, limit=limit, order_by=order_by, direction=direction)
        print("The response of RetentionApi->get_retention_operations_history:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RetentionApi->get_retention_operations_history: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**| Offset in a set of historical operations. Default is 0. | [optional] [default to 0]
 **limit** | **int**| Maximum amount of items to return. Default is 100. | [optional] [default to 100]
 **order_by** | **str**| Order by field. Default is \&quot;created\&quot;. | [optional] [default to created]
 **direction** | **str**| Sort direction. Default is \&quot;desc\&quot;. | [optional] [default to desc]

### Return type

[**GetRetentionOperationsHistory200Response**](GetRetentionOperationsHistory200Response.md)

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
**405** | Method Not Allowed - This endpoint is not available on this Artifactory instance configuration. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_retention_policy_configuration**
> GetRetentionPolicyConfiguration200Response get_retention_policy_configuration()

Get Retention Policy Configuration

Gets the retention policies that were configured.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_retention_policy_configuration200_response import GetRetentionPolicyConfiguration200Response
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
    api_instance = jfrog_client.RetentionApi(api_client)

    try:
        # Get Retention Policy Configuration
        api_response = api_instance.get_retention_policy_configuration()
        print("The response of RetentionApi->get_retention_policy_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RetentionApi->get_retention_policy_configuration: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetRetentionPolicyConfiguration200Response**](GetRetentionPolicyConfiguration200Response.md)

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

# **mark_release_bundles_to_keep_or_dont_keep**
> object mark_release_bundles_to_keep_or_dont_keep(mark_release_bundles_to_keep_or_dont_keep_request)

Mark Release Bundles to Keep (or Don't Keep)

Sets the indicator to keep (indefinitely) or not keep (unkeep) Release Bundles.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.mark_release_bundles_to_keep_or_dont_keep_request import MarkReleaseBundlesToKeepOrDontKeepRequest
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
    api_instance = jfrog_client.RetentionApi(api_client)
    mark_release_bundles_to_keep_or_dont_keep_request = jfrog_client.MarkReleaseBundlesToKeepOrDontKeepRequest() # MarkReleaseBundlesToKeepOrDontKeepRequest | 

    try:
        # Mark Release Bundles to Keep (or Don't Keep)
        api_response = api_instance.mark_release_bundles_to_keep_or_dont_keep(mark_release_bundles_to_keep_or_dont_keep_request)
        print("The response of RetentionApi->mark_release_bundles_to_keep_or_dont_keep:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RetentionApi->mark_release_bundles_to_keep_or_dont_keep: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mark_release_bundles_to_keep_or_dont_keep_request** | [**MarkReleaseBundlesToKeepOrDontKeepRequest**](MarkReleaseBundlesToKeepOrDontKeepRequest.md)|  | 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**405** | Method Not Allowed - This endpoint is not available on this Artifactory instance configuration. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **query_status_of_retention_service**
> QueryStatusOfRetentionService200Response query_status_of_retention_service()

Query the Status of the Retention Service

Gets the activation status of the retention policies. If enable is set to false, any bundles can be deleted even if they have been marked as keep (i.e., their keep status will be ignored).

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.query_status_of_retention_service200_response import QueryStatusOfRetentionService200Response
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
    api_instance = jfrog_client.RetentionApi(api_client)

    try:
        # Query the Status of the Retention Service
        api_response = api_instance.query_status_of_retention_service()
        print("The response of RetentionApi->query_status_of_retention_service:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RetentionApi->query_status_of_retention_service: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**QueryStatusOfRetentionService200Response**](QueryStatusOfRetentionService200Response.md)

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

# **set_retention_policies_to_enabled**
> set_retention_policies_to_enabled(set_retention_policies_to_enabled_request)

Set Retention Policies to Enabled

Sets the Release Bundle retention policy to enabled. If enable is set to false, any bundles can be deleted even if they have been marked as keep (i.e., their keep status will be ignored).

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.set_retention_policies_to_enabled_request import SetRetentionPoliciesToEnabledRequest
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
    api_instance = jfrog_client.RetentionApi(api_client)
    set_retention_policies_to_enabled_request = jfrog_client.SetRetentionPoliciesToEnabledRequest() # SetRetentionPoliciesToEnabledRequest | 

    try:
        # Set Retention Policies to Enabled
        api_instance.set_retention_policies_to_enabled(set_retention_policies_to_enabled_request)
    except Exception as e:
        print("Exception when calling RetentionApi->set_retention_policies_to_enabled: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_retention_policies_to_enabled_request** | [**SetRetentionPoliciesToEnabledRequest**](SetRetentionPoliciesToEnabledRequest.md)|  | 

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
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_retention_policy_configuration**
> set_retention_policy_configuration(set_retention_policy_configuration_request)

Set the Retention Policy Configuration

Sets the retention policies that were configured. If a Release Bundle meets one or more of the retention policies configured, the policy will be applied to it. Note that you can set a partial configuration, but you cannot 'unset' a value - instead you will need to override it to change it.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.set_retention_policy_configuration_request import SetRetentionPolicyConfigurationRequest
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
    api_instance = jfrog_client.RetentionApi(api_client)
    set_retention_policy_configuration_request = jfrog_client.SetRetentionPolicyConfigurationRequest() # SetRetentionPolicyConfigurationRequest | 

    try:
        # Set the Retention Policy Configuration
        api_instance.set_retention_policy_configuration(set_retention_policy_configuration_request)
    except Exception as e:
        print("Exception when calling RetentionApi->set_retention_policy_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_retention_policy_configuration_request** | [**SetRetentionPolicyConfigurationRequest**](SetRetentionPolicyConfigurationRequest.md)|  | 

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
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

