# jfrog_client.PasswordManagementApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**expire_password_for_multiple_users**](PasswordManagementApi.md#expire_password_for_multiple_users) | **POST** /artifactory/api/security/users/authorization/expirePassword | Expire Password for Multiple Users
[**get_password_expiration_policy**](PasswordManagementApi.md#get_password_expiration_policy) | **GET** /artifactory/api/security/configuration/passwordExpirationPolicy | Get Password Expiration Policy
[**get_user_encrypted_password**](PasswordManagementApi.md#get_user_encrypted_password) | **GET** /artifactory/api/security/encryptedPassword | Get User Encrypted Password
[**set_password_expiration_policy**](PasswordManagementApi.md#set_password_expiration_policy) | **PUT** /artifactory/api/security/configuration/passwordExpirationPolicy | Set Password Expiration Policy
[**unexpire_password_for_single_user**](PasswordManagementApi.md#unexpire_password_for_single_user) | **POST** /artifactory/api/security/users/authorization/unexpirePassword/{userName} | Unexpire Password for a Single User


# **expire_password_for_multiple_users**
> object expire_password_for_multiple_users(request_body)

Expire Password for Multiple Users

Expires password for a list of users

Since: 4.4.2

Notes: Requires Artifactory Pro

Security: Requires an admin user

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
    api_instance = jfrog_client.PasswordManagementApi(api_client)
    request_body = ['request_body_example'] # List[str] | 

    try:
        # Expire Password for Multiple Users
        api_response = api_instance.expire_password_for_multiple_users(request_body)
        print("The response of PasswordManagementApi->expire_password_for_multiple_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PasswordManagementApi->expire_password_for_multiple_users: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**List[str]**](str.md)|  | 

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
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_password_expiration_policy**
> GetPasswordExpirationPolicy200Response get_password_expiration_policy()

Get Password Expiration Policy

Returns the password expiration policy

Since: 4.4.2

Notes: Requires Artifactory Pro

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_password_expiration_policy200_response import GetPasswordExpirationPolicy200Response
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
    api_instance = jfrog_client.PasswordManagementApi(api_client)

    try:
        # Get Password Expiration Policy
        api_response = api_instance.get_password_expiration_policy()
        print("The response of PasswordManagementApi->get_password_expiration_policy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PasswordManagementApi->get_password_expiration_policy: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetPasswordExpirationPolicy200Response**](GetPasswordExpirationPolicy200Response.md)

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

# **get_user_encrypted_password**
> str get_user_encrypted_password()

Get User Encrypted Password

Get the encrypted password of the authenticated requestor. 

The request needs to be authenticated using a clear-text password. If you authenticate with an API key, the encrypted API key will be returned in the response.

Since: 3.3.0

Security: Requires a privileged user

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
    api_instance = jfrog_client.PasswordManagementApi(api_client)

    try:
        # Get User Encrypted Password
        api_response = api_instance.get_user_encrypted_password()
        print("The response of PasswordManagementApi->get_user_encrypted_password:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PasswordManagementApi->get_user_encrypted_password: %s\n" % e)
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

# **set_password_expiration_policy**
> object set_password_expiration_policy(set_password_expiration_policy_request)

Set Password Expiration Policy

Sets the password expiration policy

Since: 4.4.2

Notes: Requires Artifactory Pro

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.set_password_expiration_policy_request import SetPasswordExpirationPolicyRequest
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
    api_instance = jfrog_client.PasswordManagementApi(api_client)
    set_password_expiration_policy_request = jfrog_client.SetPasswordExpirationPolicyRequest() # SetPasswordExpirationPolicyRequest | 

    try:
        # Set Password Expiration Policy
        api_response = api_instance.set_password_expiration_policy(set_password_expiration_policy_request)
        print("The response of PasswordManagementApi->set_password_expiration_policy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PasswordManagementApi->set_password_expiration_policy: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_password_expiration_policy_request** | [**SetPasswordExpirationPolicyRequest**](SetPasswordExpirationPolicyRequest.md)|  | 

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
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unexpire_password_for_single_user**
> str unexpire_password_for_single_user(user_name)

Unexpire Password for a Single User

Unexpires a user's password. 

Artifactory REST API Future Breaking Change: In an upcoming release of Artifactory, JFrog will expire the "Unexpire Password for a Single User" endpoint from the Artifactory REST APIs and the UI that goes with it (once API v1 is fully deprecated). This means this API will not available in Artifactory REST API V2.

Since: 4.4.2

Notes: Requires Artifactory Pro

Security: Requires an admin user

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
    api_instance = jfrog_client.PasswordManagementApi(api_client)
    user_name = 'user_name_example' # str | The name of the user

    try:
        # Unexpire Password for a Single User
        api_response = api_instance.unexpire_password_for_single_user(user_name)
        print("The response of PasswordManagementApi->unexpire_password_for_single_user:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PasswordManagementApi->unexpire_password_for_single_user: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_name** | **str**| The name of the user | 

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
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

