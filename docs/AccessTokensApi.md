# jfrog_client.AccessTokensApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pairing_token**](AccessTokensApi.md#create_pairing_token) | **POST** /access/api/v1/service_trust/pairing/{useCase} | Create Pairing Token
[**create_token**](AccessTokensApi.md#create_token) | **POST** /access/api/v1/tokens | Create Token / Refresh Token
[**get_token_by_id**](AccessTokensApi.md#get_token_by_id) | **GET** /access/api/v1/tokens/{tokenId} | Get Token by ID
[**get_token_default_expiry**](AccessTokensApi.md#get_token_default_expiry) | **GET** /access/api/v1/config/token/default_expiry | Get Token Default Expiry Value
[**get_tokens**](AccessTokensApi.md#get_tokens) | **GET** /access/api/v1/tokens | Get Tokens
[**revoke_token_by_id**](AccessTokensApi.md#revoke_token_by_id) | **DELETE** /access/api/v1/tokens/{tokenId} | Revoke Token by ID
[**revoke_token_by_value**](AccessTokensApi.md#revoke_token_by_value) | **DELETE** /access/api/v1/tokens/revoke | Revoke Token by Value
[**set_token_default_expiry**](AccessTokensApi.md#set_token_default_expiry) | **PUT** /access/api/v1/config/token/default_expiry | Put Token Default Expiry Value


# **create_pairing_token**
> CreatePairingToken200Response create_pairing_token(use_case)

Create Pairing Token

Creates a pairing token for a specific use case. The pairing token is used to securely establish trust between services.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.create_pairing_token200_response import CreatePairingToken200Response
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
    api_instance = jfrog_client.AccessTokensApi(api_client)
    use_case = 'use_case_example' # str | The use case for the pairing token. Supported values: - `mission-control` - For Mission Control JPD registration - `bridge` - For Bridge pairing - `platform-federation` - For Platform Federation  Note: Available use cases depend on your JFrog Platform configuration and enabled services. 

    try:
        # Create Pairing Token
        api_response = api_instance.create_pairing_token(use_case)
        print("The response of AccessTokensApi->create_pairing_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccessTokensApi->create_pairing_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **use_case** | **str**| The use case for the pairing token. Supported values: - &#x60;mission-control&#x60; - For Mission Control JPD registration - &#x60;bridge&#x60; - For Bridge pairing - &#x60;platform-federation&#x60; - For Platform Federation  Note: Available use cases depend on your JFrog Platform configuration and enabled services.  | 

### Return type

[**CreatePairingToken200Response**](CreatePairingToken200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Pairing token created |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Use case not found or not supported |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_token**
> TokenResponse create_token(grant_type=grant_type, refresh_token=refresh_token, username=username, scope=scope, expires_in=expires_in, refreshable=refreshable, description=description, audience=audience, include_reference_token=include_reference_token, force_revocable=force_revocable)

Create Token / Refresh Token

Creates an access token for the JFrog Platform, or refreshes an existing access token. Only internal Artifactory users can generate a token using basic credentials via REST API.


**Create Token Notes:**
- You can create tokens at the project level if you are a Project Admin.
- You cannot create a token using basic credentials if you enabled multi-factor authentication.
- If you use basic credentials, you must enable creation of tokens in the JFrog Platform UI.


**Refresh Token:**
To refresh an existing access token, set `grant_type` to `refresh_token` and provide the `refresh_token` parameter. The authenticated user must match the user of the access token being refreshed (identified by the refresh token).


**Security:** Requires a valid token or user credentials. Basic authentication is supported when enabled in the platform configuration.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.token_response import TokenResponse
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
    api_instance = jfrog_client.AccessTokensApi(api_client)
    grant_type = client_credentials # str | The grant type. Use \\\"client_credentials\\\" to create a new token or \\\"refresh_token\\\" to refresh an existing token. (optional) (default to client_credentials)
    refresh_token = 'refresh_token_example' # str | The refresh token value of the access token to be refreshed. Required when grant_type is \\\"refresh_token\\\". (optional)
    username = 'username_example' # str | The username for which to create the token (optional)
    scope = 'applied-permissions/user' # str | The scope of access. See documentation for supported scopes. (optional) (default to 'applied-permissions/user')
    expires_in = 56 # int | Token expiry in seconds. 0 for non-expirable (admin only). (optional)
    refreshable = False # bool | Whether the token is refreshable (optional) (default to False)
    description = 'description_example' # str | Token description (optional)
    audience = '*@*' # str | Space-separated list of service IDs that should accept this token (optional) (default to '*@*')
    include_reference_token = False # bool | Generate a reference token in addition to the full token. Since 7.38.10. (optional) (default to False)
    force_revocable = False # bool | Add force_revocable flag to token. Since 7.50.3. (optional) (default to False)

    try:
        # Create Token / Refresh Token
        api_response = api_instance.create_token(grant_type=grant_type, refresh_token=refresh_token, username=username, scope=scope, expires_in=expires_in, refreshable=refreshable, description=description, audience=audience, include_reference_token=include_reference_token, force_revocable=force_revocable)
        print("The response of AccessTokensApi->create_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccessTokensApi->create_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **str**| The grant type. Use \\\&quot;client_credentials\\\&quot; to create a new token or \\\&quot;refresh_token\\\&quot; to refresh an existing token. | [optional] [default to client_credentials]
 **refresh_token** | **str**| The refresh token value of the access token to be refreshed. Required when grant_type is \\\&quot;refresh_token\\\&quot;. | [optional] 
 **username** | **str**| The username for which to create the token | [optional] 
 **scope** | **str**| The scope of access. See documentation for supported scopes. | [optional] [default to &#39;applied-permissions/user&#39;]
 **expires_in** | **int**| Token expiry in seconds. 0 for non-expirable (admin only). | [optional] 
 **refreshable** | **bool**| Whether the token is refreshable | [optional] [default to False]
 **description** | **str**| Token description | [optional] 
 **audience** | **str**| Space-separated list of service IDs that should accept this token | [optional] [default to &#39;*@*&#39;]
 **include_reference_token** | **bool**| Generate a reference token in addition to the full token. Since 7.38.10. | [optional] [default to False]
 **force_revocable** | **bool**| Add force_revocable flag to token. Since 7.50.3. | [optional] [default to False]

### Return type

[**TokenResponse**](TokenResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded, application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Token created successfully |  -  |
**400** | Invalid input, e.g., &#x60;expires_in&#x60; value is not a number, non-positive number, etc. |  -  |
**401** | Unauthenticated |  -  |
**403** | The requested token details are forbidden, e.g., &#x60;expires_in&#x60; provided but is higher than the limit defined by the admin, the user does not have the permissions on the scope requested, etc. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_token_by_id**
> TokenDetails get_token_by_id(token_id)

Get Token by ID

Returns token details by token ID. You can also use `me` instead of a token ID to get details of the currently used token.


**Note:** Admin users can view any token. Non-admin users can only view tokens where the subject matches their username.


**Security:** Requires a valid token.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.token_details import TokenDetails
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
    api_instance = jfrog_client.AccessTokensApi(api_client)
    token_id = 'token_id_example' # str | The token ID

    try:
        # Get Token by ID
        api_response = api_instance.get_token_by_id(token_id)
        print("The response of AccessTokensApi->get_token_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccessTokensApi->get_token_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **str**| The token ID | 

### Return type

[**TokenDetails**](TokenDetails.md)

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
**404** | Not Found - Token not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_token_default_expiry**
> GetTokenDefaultExpiry200Response get_token_default_expiry()

Get Token Default Expiry Value

Returns the system's token default expiry value.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_token_default_expiry200_response import GetTokenDefaultExpiry200Response
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
    api_instance = jfrog_client.AccessTokensApi(api_client)

    try:
        # Get Token Default Expiry Value
        api_response = api_instance.get_token_default_expiry()
        print("The response of AccessTokensApi->get_token_default_expiry:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccessTokensApi->get_token_default_expiry: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetTokenDefaultExpiry200Response**](GetTokenDefaultExpiry200Response.md)

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

# **get_tokens**
> TokenListResponse get_tokens()

Get Tokens

Returns token information based on the authenticated principal and optional filters. Admin users can view all tokens; non-admin users can only view their own tokens.


**Security:** Requires a valid token.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.token_list_response import TokenListResponse
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
    api_instance = jfrog_client.AccessTokensApi(api_client)

    try:
        # Get Tokens
        api_response = api_instance.get_tokens()
        print("The response of AccessTokensApi->get_tokens:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccessTokensApi->get_tokens: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**TokenListResponse**](TokenListResponse.md)

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

# **revoke_token_by_id**
> revoke_token_by_id(token_id)

Revoke Token by ID

Revokes an access token by specifying the token ID. You can also use `me` instead of a token ID to revoke the currently used token.


**Note:** Users can only revoke their own tokens. Admin users can revoke any token.


**Security:** Requires a valid token.


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
    api_instance = jfrog_client.AccessTokensApi(api_client)
    token_id = 'token_id_example' # str | The token ID to revoke

    try:
        # Revoke Token by ID
        api_instance.revoke_token_by_id(token_id)
    except Exception as e:
        print("Exception when calling AccessTokensApi->revoke_token_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token_id** | **str**| The token ID to revoke | 

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
**200** | Token revoked successfully |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Token not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke_token_by_value**
> RevokeTokenByValue200Response revoke_token_by_value(revoke_token_by_value_request)

Revoke Token by Value

Revokes an access token by providing a JSON web token (JWT) or reference token.


**Note:** The token must be revocable for this operation to succeed.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.revoke_token_by_value200_response import RevokeTokenByValue200Response
from jfrog_client.models.revoke_token_by_value_request import RevokeTokenByValueRequest
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
    api_instance = jfrog_client.AccessTokensApi(api_client)
    revoke_token_by_value_request = jfrog_client.RevokeTokenByValueRequest() # RevokeTokenByValueRequest | 

    try:
        # Revoke Token by Value
        api_response = api_instance.revoke_token_by_value(revoke_token_by_value_request)
        print("The response of AccessTokensApi->revoke_token_by_value:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccessTokensApi->revoke_token_by_value: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **revoke_token_by_value_request** | [**RevokeTokenByValueRequest**](RevokeTokenByValueRequest.md)|  | 

### Return type

[**RevokeTokenByValue200Response**](RevokeTokenByValue200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Token revoked successfully |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Token not found or not revocable |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_token_default_expiry**
> set_token_default_expiry(set_token_default_expiry_request)

Put Token Default Expiry Value

Sets the system's token default expiry value.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.set_token_default_expiry_request import SetTokenDefaultExpiryRequest
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
    api_instance = jfrog_client.AccessTokensApi(api_client)
    set_token_default_expiry_request = jfrog_client.SetTokenDefaultExpiryRequest() # SetTokenDefaultExpiryRequest | 

    try:
        # Put Token Default Expiry Value
        api_instance.set_token_default_expiry(set_token_default_expiry_request)
    except Exception as e:
        print("Exception when calling AccessTokensApi->set_token_default_expiry: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_token_default_expiry_request** | [**SetTokenDefaultExpiryRequest**](SetTokenDefaultExpiryRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

