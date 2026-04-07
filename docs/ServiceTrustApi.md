# jfrog_client.ServiceTrustApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**exchange_pairing_token**](ServiceTrustApi.md#exchange_pairing_token) | **PUT** /artifactory/api/v1/service_trust/pairing/{usecase} | Exchange Pairing Token
[**generate_pairing_token**](ServiceTrustApi.md#generate_pairing_token) | **POST** /artifactory/api/v1/service_trust/pairing/{usecase} | Generate Pairing Token
[**unregister_pairing_token**](ServiceTrustApi.md#unregister_pairing_token) | **DELETE** /artifactory/api/v1/service_trust/pairing/{usecase} | Unregister Pairing Token


# **exchange_pairing_token**
> ExchangePairingToken200Response exchange_pairing_token(usecase, exchange_pairing_token_request)

Exchange Pairing Token

Exchanges a pairing token to establish trust between services.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.exchange_pairing_token200_response import ExchangePairingToken200Response
from jfrog_client.models.exchange_pairing_token_request import ExchangePairingTokenRequest
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
    api_instance = jfrog_client.ServiceTrustApi(api_client)
    usecase = 'usecase_example' # str | The use case path
    exchange_pairing_token_request = jfrog_client.ExchangePairingTokenRequest() # ExchangePairingTokenRequest | 

    try:
        # Exchange Pairing Token
        api_response = api_instance.exchange_pairing_token(usecase, exchange_pairing_token_request)
        print("The response of ServiceTrustApi->exchange_pairing_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceTrustApi->exchange_pairing_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usecase** | **str**| The use case path | 
 **exchange_pairing_token_request** | [**ExchangePairingTokenRequest**](ExchangePairingTokenRequest.md)|  | 

### Return type

[**ExchangePairingToken200Response**](ExchangePairingToken200Response.md)

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
**404** | Unknown use case |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_pairing_token**
> GeneratePairingToken200Response generate_pairing_token(usecase)

Generate Pairing Token

Creates a pairing token for the specified use case (e.g., federated-repo/r for read-only unidirectional sync).

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.generate_pairing_token200_response import GeneratePairingToken200Response
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
    api_instance = jfrog_client.ServiceTrustApi(api_client)
    usecase = 'usecase_example' # str | The use case path (e.g., federated-repo/r for read pairing token)

    try:
        # Generate Pairing Token
        api_response = api_instance.generate_pairing_token(usecase)
        print("The response of ServiceTrustApi->generate_pairing_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceTrustApi->generate_pairing_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usecase** | **str**| The use case path (e.g., federated-repo/r for read pairing token) | 

### Return type

[**GeneratePairingToken200Response**](GeneratePairingToken200Response.md)

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
**404** | Unknown use case |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unregister_pairing_token**
> ExchangePairingToken200Response unregister_pairing_token(usecase, unregister_pairing_token_request, force=force)

Unregister Pairing Token

Cancels the trust relationship with a specific service.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.exchange_pairing_token200_response import ExchangePairingToken200Response
from jfrog_client.models.unregister_pairing_token_request import UnregisterPairingTokenRequest
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
    api_instance = jfrog_client.ServiceTrustApi(api_client)
    usecase = 'usecase_example' # str | The use case path
    unregister_pairing_token_request = jfrog_client.UnregisterPairingTokenRequest() # UnregisterPairingTokenRequest | 
    force = False # bool | Force the unpairing operation (optional) (default to False)

    try:
        # Unregister Pairing Token
        api_response = api_instance.unregister_pairing_token(usecase, unregister_pairing_token_request, force=force)
        print("The response of ServiceTrustApi->unregister_pairing_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ServiceTrustApi->unregister_pairing_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usecase** | **str**| The use case path | 
 **unregister_pairing_token_request** | [**UnregisterPairingTokenRequest**](UnregisterPairingTokenRequest.md)|  | 
 **force** | **bool**| Force the unpairing operation | [optional] [default to False]

### Return type

[**ExchangePairingToken200Response**](ExchangePairingToken200Response.md)

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
**404** | Unknown use case |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

