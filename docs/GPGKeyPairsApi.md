# jfrog_client.GPGKeyPairsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_key_pair**](GPGKeyPairsApi.md#create_key_pair) | **POST** /artifactory/api/security/keypair | Create Key Pair
[**delete_key_pair**](GPGKeyPairsApi.md#delete_key_pair) | **DELETE** /artifactory/api/security/keypair/{keyPairName} | Delete Key Pair
[**delete_primary_key**](GPGKeyPairsApi.md#delete_primary_key) | **DELETE** /artifactory/api/v2/repositories/{repoName}/keyPairs/primary | Delete Primary Key
[**delete_repository_key**](GPGKeyPairsApi.md#delete_repository_key) | **DELETE** /artifactory/api/v2/repositories/{repoName}/keyPairs/{keyName} | Delete Key from Repository
[**delete_secondary_key**](GPGKeyPairsApi.md#delete_secondary_key) | **DELETE** /artifactory/api/v2/repositories/{repoName}/keyPairs/secondary | Delete Secondary Key
[**download_primary_key**](GPGKeyPairsApi.md#download_primary_key) | **GET** /artifactory/api/v2/repositories/{repoName}/keyPairs/primary/public | Download Primary Key
[**download_secondary_public_key**](GPGKeyPairsApi.md#download_secondary_public_key) | **GET** /artifactory/api/v2/repositories/{repoName}/keyPairs/secondary/public | Download Secondary Public Key
[**get_all_key_pairs**](GPGKeyPairsApi.md#get_all_key_pairs) | **GET** /artifactory/api/security/keypair | Get All Key Pairs
[**get_key_pair**](GPGKeyPairsApi.md#get_key_pair) | **GET** /artifactory/api/security/keypair/{keyPairName} | Get Key Pair
[**get_key_pair_public_key_per_repository**](GPGKeyPairsApi.md#get_key_pair_public_key_per_repository) | **GET** /artifactory/api/security/keypair/public/repositories/{repoKey} | Get Key Pair Public Key Per Repository
[**promote_secondary_key**](GPGKeyPairsApi.md#promote_secondary_key) | **POST** /artifactory/api/v2/repositories/{repoName}/keyPairs/promote | Promote Secondary to Primary Key
[**set_primary_key**](GPGKeyPairsApi.md#set_primary_key) | **POST** /artifactory/api/v2/repositories/{repoName}/keyPairs/primary | Set Primary Key
[**set_repository_key**](GPGKeyPairsApi.md#set_repository_key) | **POST** /artifactory/api/v2/repositories/{repoName}/keyPairs | Set Key for Repository
[**set_secondary_key**](GPGKeyPairsApi.md#set_secondary_key) | **POST** /artifactory/api/v2/repositories/{repoName}/keyPairs/secondary | Set Secondary Key
[**update_key_pair**](GPGKeyPairsApi.md#update_key_pair) | **PUT** /artifactory/api/security/keypair | Update Key Pair
[**verify_key_pair**](GPGKeyPairsApi.md#verify_key_pair) | **POST** /artifactory/api/security/keypair/verify | Verify Key Pair


# **create_key_pair**
> object create_key_pair(create_key_pair_request)

Create Key Pair

Creates a new key pair in Artifactory or replaces an existing pair.

Since: 7.6.0

Notes: Requires Artifactory Pro

You need to add the --data-binary flag to the call when the keys are provided as part of the JSON payload.

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.create_key_pair_request import CreateKeyPairRequest
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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    create_key_pair_request = jfrog_client.CreateKeyPairRequest() # CreateKeyPairRequest | 

    try:
        # Create Key Pair
        api_response = api_instance.create_key_pair(create_key_pair_request)
        print("The response of GPGKeyPairsApi->create_key_pair:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->create_key_pair: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_key_pair_request** | [**CreateKeyPairRequest**](CreateKeyPairRequest.md)|  | 

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
**201** | Created |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_key_pair**
> str delete_key_pair(key_pair_name)

Delete Key Pair

Deletes a key pair.

Since: 7.6.0

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    key_pair_name = 'key_pair_name_example' # str | The name of the key pair

    try:
        # Delete Key Pair
        api_response = api_instance.delete_key_pair(key_pair_name)
        print("The response of GPGKeyPairsApi->delete_key_pair:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->delete_key_pair: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_pair_name** | **str**| The name of the key pair | 

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

# **delete_primary_key**
> str delete_primary_key(repo_name)

Delete Primary Key

Deletes the primary key from the repository.

Since: 7.19

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name

    try:
        # Delete Primary Key
        api_response = api_instance.delete_primary_key(repo_name)
        print("The response of GPGKeyPairsApi->delete_primary_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->delete_primary_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 

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

# **delete_repository_key**
> str delete_repository_key(repo_name, key_name)

Delete Key from Repository

Removes the key pair from the repository.

Since: 7.19

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name
    key_name = 'key_name_example' # str | The key name

    try:
        # Delete Key from Repository
        api_response = api_instance.delete_repository_key(repo_name, key_name)
        print("The response of GPGKeyPairsApi->delete_repository_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->delete_repository_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 
 **key_name** | **str**| The key name | 

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

# **delete_secondary_key**
> str delete_secondary_key(repo_name)

Delete Secondary Key

Deletes the secondary key from the repository.

Since: 7.19

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name

    try:
        # Delete Secondary Key
        api_response = api_instance.delete_secondary_key(repo_name)
        print("The response of GPGKeyPairsApi->delete_secondary_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->delete_secondary_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 

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

# **download_primary_key**
> str download_primary_key(repo_name)

Download Primary Key

Downloads the primary key.

Since: 7.19

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name

    try:
        # Download Primary Key
        api_response = api_instance.download_primary_key(repo_name)
        print("The response of GPGKeyPairsApi->download_primary_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->download_primary_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 

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

# **download_secondary_public_key**
> str download_secondary_public_key(repo_name)

Download Secondary Public Key

Downloads the secondary key.

Since: 7.19

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name

    try:
        # Download Secondary Public Key
        api_response = api_instance.download_secondary_public_key(repo_name)
        print("The response of GPGKeyPairsApi->download_secondary_public_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->download_secondary_public_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 

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

# **get_all_key_pairs**
> List[GetAllKeyPairs200ResponseInner] get_all_key_pairs()

Get All Key Pairs

Returns details of all the key pairs.

Since: 7.19

Notes: Requires Artifactory Pro

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_all_key_pairs200_response_inner import GetAllKeyPairs200ResponseInner
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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)

    try:
        # Get All Key Pairs
        api_response = api_instance.get_all_key_pairs()
        print("The response of GPGKeyPairsApi->get_all_key_pairs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->get_all_key_pairs: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[GetAllKeyPairs200ResponseInner]**](GetAllKeyPairs200ResponseInner.md)

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

# **get_key_pair**
> GetKeyPair200Response get_key_pair(key_pair_name)

Get Key Pair

Returns the details of a key pair.

Since: 7.6.0

Notes: Requires Artifactory Pro

Security: Requires an authenticated user, or anonymous (if "Anonymous Access" is globally enabled).

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_key_pair200_response import GetKeyPair200Response
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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    key_pair_name = 'key_pair_name_example' # str | The name of the key pair

    try:
        # Get Key Pair
        api_response = api_instance.get_key_pair(key_pair_name)
        print("The response of GPGKeyPairsApi->get_key_pair:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->get_key_pair: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key_pair_name** | **str**| The name of the key pair | 

### Return type

[**GetKeyPair200Response**](GetKeyPair200Response.md)

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

# **get_key_pair_public_key_per_repository**
> str get_key_pair_public_key_per_repository(repo_key)

Get Key Pair Public Key Per Repository

Returns the public key assigned to a repository. 

Note - To retrieve the key with its appropriate filename, run cURL request with flags -O -J.

Since: 7.6.0

Notes: Requires Artifactory Pro

Security: Requires an authenticated user, or anonymous (if "Anonymous Access" is globally enabled).

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Get Key Pair Public Key Per Repository
        api_response = api_instance.get_key_pair_public_key_per_repository(repo_key)
        print("The response of GPGKeyPairsApi->get_key_pair_public_key_per_repository:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->get_key_pair_public_key_per_repository: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **promote_secondary_key**
> str promote_secondary_key(repo_name)

Promote Secondary to Primary Key

Promotes the secondary key to be the primary key for the repository.

Since: 7.19

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name

    try:
        # Promote Secondary to Primary Key
        api_response = api_instance.promote_secondary_key(repo_name)
        print("The response of GPGKeyPairsApi->promote_secondary_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->promote_secondary_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 

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
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_primary_key**
> str set_primary_key(repo_name, body)

Set Primary Key

Sets the Primary Key for the repository.

Since: 7.19

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name
    body = 'body_example' # str | 

    try:
        # Set Primary Key
        api_response = api_instance.set_primary_key(repo_name, body)
        print("The response of GPGKeyPairsApi->set_primary_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->set_primary_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 
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

# **set_repository_key**
> str set_repository_key(repo_name, body)

Set Key for Repository

Sets the GPG keys for the repository.

Since: 7.19

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name
    body = 'body_example' # str | 

    try:
        # Set Key for Repository
        api_response = api_instance.set_repository_key(repo_name, body)
        print("The response of GPGKeyPairsApi->set_repository_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->set_repository_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 
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

# **set_secondary_key**
> str set_secondary_key(repo_name, body)

Set Secondary Key

Sets the secondary key for the repository that will be used as a backup key, in case the primary key has been removed.

Since: 7.19

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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    repo_name = 'repo_name_example' # str | The repository name
    body = 'body_example' # str | 

    try:
        # Set Secondary Key
        api_response = api_instance.set_secondary_key(repo_name, body)
        print("The response of GPGKeyPairsApi->set_secondary_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->set_secondary_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_name** | **str**| The repository name | 
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

# **update_key_pair**
> object update_key_pair(update_key_pair_request)

Update Key Pair

Updates a key pair with new key pairs.

Since: 7.19

Notes: Requires Artifactory Pro

Security: Requires a valid admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.update_key_pair_request import UpdateKeyPairRequest
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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    update_key_pair_request = jfrog_client.UpdateKeyPairRequest() # UpdateKeyPairRequest | 

    try:
        # Update Key Pair
        api_response = api_instance.update_key_pair(update_key_pair_request)
        print("The response of GPGKeyPairsApi->update_key_pair:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->update_key_pair: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_key_pair_request** | [**UpdateKeyPairRequest**](UpdateKeyPairRequest.md)|  | 

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

# **verify_key_pair**
> str verify_key_pair(verify_key_pair_request)

Verify Key Pair

Verifies the validity of the key pair.

Since: 7.19

Notes: Requires Artifactory Pro

Security: Requires a valid admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.verify_key_pair_request import VerifyKeyPairRequest
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
    api_instance = jfrog_client.GPGKeyPairsApi(api_client)
    verify_key_pair_request = jfrog_client.VerifyKeyPairRequest() # VerifyKeyPairRequest | 

    try:
        # Verify Key Pair
        api_response = api_instance.verify_key_pair(verify_key_pair_request)
        print("The response of GPGKeyPairsApi->verify_key_pair:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGKeyPairsApi->verify_key_pair: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_key_pair_request** | [**VerifyKeyPairRequest**](VerifyKeyPairRequest.md)|  | 

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

