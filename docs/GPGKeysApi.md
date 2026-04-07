# jfrog_client.GPGKeysApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_gpg_public_key**](GPGKeysApi.md#get_gpg_public_key) | **GET** /artifactory/api/gpg/key/public | Get GPG Public Key
[**set_gpg_pass_phrase**](GPGKeysApi.md#set_gpg_pass_phrase) | **PUT** /artifactory/api/gpg/passphrase | Set GPG Pass Phrase
[**set_gpg_private_key**](GPGKeysApi.md#set_gpg_private_key) | **PUT** /artifactory/api/gpg/key/private | Set GPG Private Key
[**set_gpg_public_key**](GPGKeysApi.md#set_gpg_public_key) | **PUT** /artifactory/api/gpg/key/public | Set GPG Public Key


# **get_gpg_public_key**
> str get_gpg_public_key()

Get GPG Public Key

Returns the public key that Artifactory provides to Debian and Opkg clients to verify packages

Since: 3.3

Notes: Requires Artifactory Pro

Security: Requires an authenticated user, or anonymous (if "Anonymous Access" is globally enabled)

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
    api_instance = jfrog_client.GPGKeysApi(api_client)

    try:
        # Get GPG Public Key
        api_response = api_instance.get_gpg_public_key()
        print("The response of GPGKeysApi->get_gpg_public_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeysApi->get_gpg_public_key: %s\n" % e)
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
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_gpg_pass_phrase**
> str set_gpg_pass_phrase(body)

Set GPG Pass Phrase

Sets the pass phrase required signing Debian and ipk packages using the private key

Since: 3.3

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
    api_instance = jfrog_client.GPGKeysApi(api_client)
    body = 'body_example' # str | 

    try:
        # Set GPG Pass Phrase
        api_response = api_instance.set_gpg_pass_phrase(body)
        print("The response of GPGKeysApi->set_gpg_pass_phrase:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeysApi->set_gpg_pass_phrase: %s\n" % e)
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

# **set_gpg_private_key**
> str set_gpg_private_key(body)

Set GPG Private Key

Sets the default private GPG key that Artifactory uses to sign Debian, RPM, and ipk (Opkg) packages.

Since: 3.3

Notes: Requires Artifactory Pro

Note that when the GPG key is provided as part of the JSON payload and not in the request header, you need to add the --data-binary flag to the call.

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
    api_instance = jfrog_client.GPGKeysApi(api_client)
    body = 'body_example' # str | 

    try:
        # Set GPG Private Key
        api_response = api_instance.set_gpg_private_key(body)
        print("The response of GPGKeysApi->set_gpg_private_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeysApi->set_gpg_private_key: %s\n" % e)
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

# **set_gpg_public_key**
> str set_gpg_public_key(body)

Set GPG Public Key

Sets the default public GPG key that Artifactory provides to Debian, RPM, and Opkg clients to verify packages.

Since: 3.3

Notes: Requires Artifactory Pro. 

Note that when the GPG key is provided as part of the JSON payload and not in the request header, you need to add the --data-binary flag to the call.

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
    api_instance = jfrog_client.GPGKeysApi(api_client)
    body = 'body_example' # str | 

    try:
        # Set GPG Public Key
        api_response = api_instance.set_gpg_public_key(body)
        print("The response of GPGKeysApi->set_gpg_public_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeysApi->set_gpg_public_key: %s\n" % e)
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

