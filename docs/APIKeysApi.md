# jfrog_client.APIKeysApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_api_key**](APIKeysApi.md#create_api_key) | **POST** /artifactory/api/security/apiKey | Create API Key
[**get_api_key**](APIKeysApi.md#get_api_key) | **GET** /artifactory/api/security/apiKey | Get API Key
[**regenerate_api_key**](APIKeysApi.md#regenerate_api_key) | **PUT** /artifactory/api/security/apiKey | Regenerate API Key
[**revoke_api_key**](APIKeysApi.md#revoke_api_key) | **DELETE** /artifactory/api/security/apiKey | Revoke API Key
[**revoke_user_api_key**](APIKeysApi.md#revoke_user_api_key) | **DELETE** /artifactory/api/security/apiKey/{username} | Revoke User API Key


# **create_api_key**
> GetApiKey200Response create_api_key()

Create API Key

Create an API key for the current user. Returns an error if API key already exists - use regenerate API key instead.

Since: 4.3.0

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_api_key200_response import GetApiKey200Response
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
    api_instance = jfrog_client.APIKeysApi(api_client)

    try:
        # Create API Key
        api_response = api_instance.create_api_key()
        print("The response of APIKeysApi->create_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling APIKeysApi->create_api_key: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetApiKey200Response**](GetApiKey200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - API key already exists |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_api_key**
> GetApiKey200Response get_api_key()

Get API Key

Get the current user's own API key

Since: 4.3.0

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_api_key200_response import GetApiKey200Response
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
    api_instance = jfrog_client.APIKeysApi(api_client)

    try:
        # Get API Key
        api_response = api_instance.get_api_key()
        print("The response of APIKeysApi->get_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling APIKeysApi->get_api_key: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetApiKey200Response**](GetApiKey200Response.md)

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
**404** | Not Found - API key does not exist |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **regenerate_api_key**
> GetApiKey200Response regenerate_api_key()

Regenerate API Key

Regenerate an API key for the current user

Since: 4.3.0

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_api_key200_response import GetApiKey200Response
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
    api_instance = jfrog_client.APIKeysApi(api_client)

    try:
        # Regenerate API Key
        api_response = api_instance.regenerate_api_key()
        print("The response of APIKeysApi->regenerate_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling APIKeysApi->regenerate_api_key: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetApiKey200Response**](GetApiKey200Response.md)

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

# **revoke_api_key**
> object revoke_api_key(delete_all=delete_all)

Revoke API Key

Revokes the current user's API key or all API keys currently defined in the system.

Since: 4.3.0

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
    api_instance = jfrog_client.APIKeysApi(api_client)
    delete_all = 56 # int | When set to 1, revokes all API keys currently defined in the system. Requires admin privileges. (optional)

    try:
        # Revoke API Key
        api_response = api_instance.revoke_api_key(delete_all=delete_all)
        print("The response of APIKeysApi->revoke_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling APIKeysApi->revoke_api_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **delete_all** | **int**| When set to 1, revokes all API keys currently defined in the system. Requires admin privileges. | [optional] 

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
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke_user_api_key**
> object revoke_user_api_key(username)

Revoke User API Key

Revokes the API key of another user.

Since: 4.3.0

Security: Requires a privileged user (Admin only)

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
    api_instance = jfrog_client.APIKeysApi(api_client)
    username = 'username_example' # str | The name of the user

    try:
        # Revoke User API Key
        api_response = api_instance.revoke_user_api_key(username)
        print("The response of APIKeysApi->revoke_user_api_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling APIKeysApi->revoke_user_api_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **str**| The name of the user | 

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
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

