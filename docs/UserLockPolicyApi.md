# jfrog_client.UserLockPolicyApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**configure_user_lock_policy**](UserLockPolicyApi.md#configure_user_lock_policy) | **PUT** /artifactory/api/security/userLockPolicy | Configure User Lock Policy
[**get_locked_out_users**](UserLockPolicyApi.md#get_locked_out_users) | **GET** /artifactory/api/security/lockedUsers | Get Locked Out Users
[**get_user_lock_policy**](UserLockPolicyApi.md#get_user_lock_policy) | **GET** /artifactory/api/security/userLockPolicy | Retrieve User Lock Policy
[**unlock_all_locked_out_users**](UserLockPolicyApi.md#unlock_all_locked_out_users) | **POST** /artifactory/api/security/unlockAllUsers | Unlock All Locked Out Users
[**unlock_locked_out_users**](UserLockPolicyApi.md#unlock_locked_out_users) | **POST** /artifactory/api/security/unlockUsers | Unlock Locked-Out Users


# **configure_user_lock_policy**
> str configure_user_lock_policy(configure_user_lock_policy_request)

Configure User Lock Policy

Configures the user lock policy that locks users out of their account if the number of repeated incorrect login attempts exceeds the configured maximum allowed.

Since: 4.4

Security: Requires a valid admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.configure_user_lock_policy_request import ConfigureUserLockPolicyRequest
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
    api_instance = jfrog_client.UserLockPolicyApi(api_client)
    configure_user_lock_policy_request = jfrog_client.ConfigureUserLockPolicyRequest() # ConfigureUserLockPolicyRequest | 

    try:
        # Configure User Lock Policy
        api_response = api_instance.configure_user_lock_policy(configure_user_lock_policy_request)
        print("The response of UserLockPolicyApi->configure_user_lock_policy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UserLockPolicyApi->configure_user_lock_policy: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configure_user_lock_policy_request** | [**ConfigureUserLockPolicyRequest**](ConfigureUserLockPolicyRequest.md)|  | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
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

# **get_locked_out_users**
> List[str] get_locked_out_users()

Get Locked Out Users

If locking out users is enabled, lists all users that were locked out due to recurrent incorrect login attempts.

Since: 4.4

Security: Requires a valid admin user

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
    api_instance = jfrog_client.UserLockPolicyApi(api_client)

    try:
        # Get Locked Out Users
        api_response = api_instance.get_locked_out_users()
        print("The response of UserLockPolicyApi->get_locked_out_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UserLockPolicyApi->get_locked_out_users: %s\n" % e)
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

# **get_user_lock_policy**
> GetUserLockPolicy200Response get_user_lock_policy()

Retrieve User Lock Policy

Returns the currently configured user lock policy.

Since: 4.4

Security: Requires a valid admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_user_lock_policy200_response import GetUserLockPolicy200Response
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
    api_instance = jfrog_client.UserLockPolicyApi(api_client)

    try:
        # Retrieve User Lock Policy
        api_response = api_instance.get_user_lock_policy()
        print("The response of UserLockPolicyApi->get_user_lock_policy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UserLockPolicyApi->get_user_lock_policy: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetUserLockPolicy200Response**](GetUserLockPolicy200Response.md)

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

# **unlock_all_locked_out_users**
> str unlock_all_locked_out_users()

Unlock All Locked Out Users

Unlocks all users that were locked out due to recurrent incorrect login attempts.

Since: 4.4

Security: Requires a valid admin user

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
    api_instance = jfrog_client.UserLockPolicyApi(api_client)

    try:
        # Unlock All Locked Out Users
        api_response = api_instance.unlock_all_locked_out_users()
        print("The response of UserLockPolicyApi->unlock_all_locked_out_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UserLockPolicyApi->unlock_all_locked_out_users: %s\n" % e)
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
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unlock_locked_out_users**
> str unlock_locked_out_users(request_body)

Unlock Locked-Out Users

Unlocks a list of users that were locked out due to recurrent incorrect login attempts.

Since: 4.4

Security: Requires a valid admin user

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
    api_instance = jfrog_client.UserLockPolicyApi(api_client)
    request_body = ['request_body_example'] # List[str] | 

    try:
        # Unlock Locked-Out Users
        api_response = api_instance.unlock_locked_out_users(request_body)
        print("The response of UserLockPolicyApi->unlock_locked_out_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling UserLockPolicyApi->unlock_locked_out_users: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**List[str]**](str.md)|  | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
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

