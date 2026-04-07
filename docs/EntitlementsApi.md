# jfrog_client.EntitlementsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**post_offline_request_token**](EntitlementsApi.md#post_offline_request_token) | **POST** /api/v1/offline_register | Post Offline Request Token to JFrog Entitlements Service


# **post_offline_request_token**
> str post_offline_request_token(offline_token_request)

Post Offline Request Token to JFrog Entitlements Service

Posts the offline request token from the air-gapped JPD to the JFrog Entitlements Service and returns the entitlements in JSON format.

You must run this API from a machine that has connectivity to the Internet.

The `offline_response_token` needed for applying entitlements is returned as a response header.

**Example 1 - Save the entitlements to a file:**
```
curl -v -L 'https://jes.jfrog.io/api/v1/offline_register' \
  -H 'Content-Type: application/json' \
  --data '{"offline_request_token": "<offline_request_token>"}' \
  > entitlements.json

```
The `-v` flag prints the response headers (including `offline_response_token`) to stderr while saving the response body to `entitlements.json`.

**Example 2 - Extract only the `offline_response_token`:**
```
curl -s -L 'https://jes.jfrog.io/api/v1/offline_register' \
  -H 'Content-Type: application/json' \
  --data '{"offline_request_token": "<offline_request_token>"}' \
  -o /dev/null -D - | grep offline_response_token

```
This discards the response body and prints only the `offline_response_token` header value to the screen.

You need **both** the `entitlements.json` file and the `offline_response_token` header value to complete the next step: applying entitlements to the air-gapped JPD using the JFConnect Apply Entitlements API.

**Warning:** If you save the response manually instead of directing the response body to an `entitlements.json` file, ensure that there are no spaces or any modifications. Any change in the response fails checksum validation when you apply entitlements.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.offline_token_request import OfflineTokenRequest
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
    api_instance = jfrog_client.EntitlementsApi(api_client)
    offline_token_request = jfrog_client.OfflineTokenRequest() # OfflineTokenRequest | 

    try:
        # Post Offline Request Token to JFrog Entitlements Service
        api_response = api_instance.post_offline_request_token(offline_token_request)
        print("The response of EntitlementsApi->post_offline_request_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EntitlementsApi->post_offline_request_token: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offline_token_request** | [**OfflineTokenRequest**](OfflineTokenRequest.md)|  | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success - Token processed |  * offline_response_token - The offline response token to be used when applying entitlements to the air-gapped JPD <br>  |
**400** | Bad Request - Invalid token |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

