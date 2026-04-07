# jfrog_client.EncryptionApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate_artifactory_key_encryption**](EncryptionApi.md#activate_artifactory_key_encryption) | **POST** /artifactory/api/system/encrypt | Activate Artifactory Key Encryption
[**deactivate_artifactory_key_encryption**](EncryptionApi.md#deactivate_artifactory_key_encryption) | **POST** /artifactory/api/system/decrypt | Deactivate Artifactory Key Encryption


# **activate_artifactory_key_encryption**
> str activate_artifactory_key_encryption()

Activate Artifactory Key Encryption

Creates a new Artifactory encryption key and activates Artifactory key encryption. This is an advanced feature intended for administrators.

Since: 3.2.2

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
    api_instance = jfrog_client.EncryptionApi(api_client)

    try:
        # Activate Artifactory Key Encryption
        api_response = api_instance.activate_artifactory_key_encryption()
        print("The response of EncryptionApi->activate_artifactory_key_encryption:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EncryptionApi->activate_artifactory_key_encryption: %s\n" % e)
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

# **deactivate_artifactory_key_encryption**
> str deactivate_artifactory_key_encryption()

Deactivate Artifactory Key Encryption

Removes the current Artifactory encryption key and deactivates Artifactory key encryption. This is an advanced feature intended for administrators. The decrypted state is temporary and will be reactivated following config descriptor updates.

Since: 3.2.2

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
    api_instance = jfrog_client.EncryptionApi(api_client)

    try:
        # Deactivate Artifactory Key Encryption
        api_response = api_instance.deactivate_artifactory_key_encryption()
        print("The response of EncryptionApi->deactivate_artifactory_key_encryption:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling EncryptionApi->deactivate_artifactory_key_encryption: %s\n" % e)
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

