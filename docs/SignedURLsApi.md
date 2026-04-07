# jfrog_client.SignedURLsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_signed_url**](SignedURLsApi.md#create_signed_url) | **POST** /artifactory/api/signed/url | Create Signed URL
[**replace_signed_url_key**](SignedURLsApi.md#replace_signed_url_key) | **POST** /artifactory/api/signed/url/key | Replace Signed URL Key


# **create_signed_url**
> str create_signed_url(create_signed_url_request)

Create Signed URL

Generates a signed url for the provided repository path, providing temporary access to download artifacts. User may provide expiry or valid_for_secs optional parameter. With a maximum timeframe of one year (365 days). Default expiry is 24 hours. Note - This API is available only to Artifactory Cloud Enterprise and Cloud Enterprise+ users. The JSON included in the request URL cannot include %20.

Since: Artifactory 7.5.0

Security: Requires a privileged user (admin or manage permission type)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.create_signed_url_request import CreateSignedUrlRequest
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
    api_instance = jfrog_client.SignedURLsApi(api_client)
    create_signed_url_request = jfrog_client.CreateSignedUrlRequest() # CreateSignedUrlRequest | Signed URL request

    try:
        # Create Signed URL
        api_response = api_instance.create_signed_url(create_signed_url_request)
        print("The response of SignedURLsApi->create_signed_url:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SignedURLsApi->create_signed_url: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_signed_url_request** | [**CreateSignedUrlRequest**](CreateSignedUrlRequest.md)| Signed URL request | 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Signed URL created successfully |  -  |
**400** | Bad Request - The request body is malformed or invalid. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin or manage permission type. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replace_signed_url_key**
> replace_signed_url_key()

Replace Signed URL Key

Replaces the key for signing and validating signed URLs. This will invalidate any signed URLs previously created. Note - This feature is available only for Artifactory Cloud Enterprise and Enterprise+ users.

Note: This feature is available only for Artifactory Cloud Enterprise and Enterprise+ users.

Since: Artifactory 7.5.0

Security: Requires a privileged user (admin)


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
    api_instance = jfrog_client.SignedURLsApi(api_client)

    try:
        # Replace Signed URL Key
        api_instance.replace_signed_url_key()
    except Exception as e:
        print("Exception when calling SignedURLsApi->replace_signed_url_key: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Signed URL key replaced successfully |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

