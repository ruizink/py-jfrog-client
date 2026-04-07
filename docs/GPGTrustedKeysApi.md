# jfrog_client.GPGTrustedKeysApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**set_distribution_public_gpg_key**](GPGTrustedKeysApi.md#set_distribution_public_gpg_key) | **POST** /artifactory/api/gpg/keys/trusted | Set Distribution Public GPG Key


# **set_distribution_public_gpg_key**
> SetDistributionPublicGpgKey200Response set_distribution_public_gpg_key(set_distribution_public_gpg_key_request)

Set Distribution Public GPG Key

Sets the public preconfigured GPG key of a JFrog Distribution service that needs to upload Release Bundles to a source Artifactory and Edge node. The GPG public key will be uploaded under Trusted Keys in the source Artifactory and Edge node.

Since: 6.0

Notes: Requires Artifactory Pro

Note that when the public GPG key is provided as part of the JSON payload and not in the request header, you need to add the --data-binary flag to the call.

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.set_distribution_public_gpg_key200_response import SetDistributionPublicGpgKey200Response
from jfrog_client.models.set_distribution_public_gpg_key_request import SetDistributionPublicGpgKeyRequest
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
    api_instance = jfrog_client.GPGTrustedKeysApi(api_client)
    set_distribution_public_gpg_key_request = jfrog_client.SetDistributionPublicGpgKeyRequest() # SetDistributionPublicGpgKeyRequest | 

    try:
        # Set Distribution Public GPG Key
        api_response = api_instance.set_distribution_public_gpg_key(set_distribution_public_gpg_key_request)
        print("The response of GPGTrustedKeysApi->set_distribution_public_gpg_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GPGTrustedKeysApi->set_distribution_public_gpg_key: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_distribution_public_gpg_key_request** | [**SetDistributionPublicGpgKeyRequest**](SetDistributionPublicGpgKeyRequest.md)|  | 

### Return type

[**SetDistributionPublicGpgKey200Response**](SetDistributionPublicGpgKey200Response.md)

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

