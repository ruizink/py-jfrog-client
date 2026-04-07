# jfrog_client.PasswordPolicyApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_password_policy**](PasswordPolicyApi.md#create_password_policy) | **PUT** /access/api/v1/config/security/password_policy | Create Password Policy
[**update_password_policy**](PasswordPolicyApi.md#update_password_policy) | **PATCH** /access/api/v1/config/security/password_policy | Update Password Policy


# **create_password_policy**
> create_password_policy(password_policy)

Create Password Policy

Creates a new password policy. This REST API overwrites all existing
field values:
if a value is not specified, its default value will be set.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.password_policy import PasswordPolicy
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
    api_instance = jfrog_client.PasswordPolicyApi(api_client)
    password_policy = jfrog_client.PasswordPolicy() # PasswordPolicy | 

    try:
        # Create Password Policy
        api_instance.create_password_policy(password_policy)
    except Exception as e:
        print("Exception when calling PasswordPolicyApi->create_password_policy: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_policy** | [**PasswordPolicy**](PasswordPolicy.md)|  | 

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
**204** | Password policy updated successfully (no response body) |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_password_policy**
> update_password_policy(password_policy)

Update Password Policy

Updates the password policy (partial update).


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.password_policy import PasswordPolicy
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
    api_instance = jfrog_client.PasswordPolicyApi(api_client)
    password_policy = jfrog_client.PasswordPolicy() # PasswordPolicy | 

    try:
        # Update Password Policy
        api_instance.update_password_policy(password_policy)
    except Exception as e:
        print("Exception when calling PasswordPolicyApi->update_password_policy: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **password_policy** | [**PasswordPolicy**](PasswordPolicy.md)|  | 

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
**204** | Password policy updated successfully (no response body) |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

