# jfrog_client.LegalV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_custom_license**](LegalV1Api.md#add_custom_license) | **POST** /xray/api/v1/licenses/assign | Add Custom License
[**create_custom_license**](LegalV1Api.md#create_custom_license) | **POST** /xray/api/v1/licensesNames/customLicense | Create Custom License
[**get_licenses**](LegalV1Api.md#get_licenses) | **GET** /xray/api/v1/licensesNames | Get Licenses
[**set_license_priority**](LegalV1Api.md#set_license_priority) | **POST** /xray/api/v1/licensesNames/priorities | Set License Priority


# **add_custom_license**
> AddCustomLicense200Response add_custom_license(legal_assign_custom_license_request)

Add Custom License

Assigns a license to a single component in Xray. The license must be a known license (already existing in the system). The request body contains a `component` object identifying the target and a `license` object specifying which license to assign.

Requires a valid user with MANAGE_DATA permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.add_custom_license200_response import AddCustomLicense200Response
from jfrog_client.models.legal_assign_custom_license_request import LegalAssignCustomLicenseRequest
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
    api_instance = jfrog_client.LegalV1Api(api_client)
    legal_assign_custom_license_request = jfrog_client.LegalAssignCustomLicenseRequest() # LegalAssignCustomLicenseRequest | 

    try:
        # Add Custom License
        api_response = api_instance.add_custom_license(legal_assign_custom_license_request)
        print("The response of LegalV1Api->add_custom_license:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LegalV1Api->add_custom_license: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **legal_assign_custom_license_request** | [**LegalAssignCustomLicenseRequest**](LegalAssignCustomLicenseRequest.md)|  | 

### Return type

[**AddCustomLicense200Response**](AddCustomLicense200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | License successfully added to the component. |  -  |
**415** | Failed to parse request, or the license name is not a known license.  |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_custom_license**
> CreateCustomLicense200Response create_custom_license(legal_create_custom_license_request)

Create Custom License

Creates a custom license for license compliance management. Custom licenses are user-defined and can be assigned to components for tracking and compliance purposes. The license name must be unique and cannot exceed 128 characters. Aliases also have a 128 character limit each.

Requires Admin permission. Since Xray 3.132.0.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.create_custom_license200_response import CreateCustomLicense200Response
from jfrog_client.models.legal_create_custom_license_request import LegalCreateCustomLicenseRequest
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
    api_instance = jfrog_client.LegalV1Api(api_client)
    legal_create_custom_license_request = jfrog_client.LegalCreateCustomLicenseRequest() # LegalCreateCustomLicenseRequest | 

    try:
        # Create Custom License
        api_response = api_instance.create_custom_license(legal_create_custom_license_request)
        print("The response of LegalV1Api->create_custom_license:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LegalV1Api->create_custom_license: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **legal_create_custom_license_request** | [**LegalCreateCustomLicenseRequest**](LegalCreateCustomLicenseRequest.md)|  | 

### Return type

[**CreateCustomLicense200Response**](CreateCustomLicense200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Custom license created successfully. Returns the created license. |  -  |
**400** | License name already exists, or validation failed (name or alias exceeds 128 characters).  |  -  |
**415** | Failed to parse the request body. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_licenses**
> List[GetLicenses200ResponseInner] get_licenses()

Get Licenses

Get Licenses.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_licenses200_response_inner import GetLicenses200ResponseInner
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
    api_instance = jfrog_client.LegalV1Api(api_client)

    try:
        # Get Licenses
        api_response = api_instance.get_licenses()
        print("The response of LegalV1Api->get_licenses:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LegalV1Api->get_licenses: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[GetLicenses200ResponseInner]**](GetLicenses200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success - Licenses Data Returned |  -  |
**400** | Failed to retrieve Licenses |  -  |
**403** | Permission denied |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **set_license_priority**
> DeleteIssueEvent200Response set_license_priority(set_license_priority_request)

Set License Priority

Set License Priority.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.delete_issue_event200_response import DeleteIssueEvent200Response
from jfrog_client.models.set_license_priority_request import SetLicensePriorityRequest
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
    api_instance = jfrog_client.LegalV1Api(api_client)
    set_license_priority_request = jfrog_client.SetLicensePriorityRequest() # SetLicensePriorityRequest | 

    try:
        # Set License Priority
        api_response = api_instance.set_license_priority(set_license_priority_request)
        print("The response of LegalV1Api->set_license_priority:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LegalV1Api->set_license_priority: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **set_license_priority_request** | [**SetLicensePriorityRequest**](SetLicensePriorityRequest.md)|  | 

### Return type

[**DeleteIssueEvent200Response**](DeleteIssueEvent200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success - Set license priority |  -  |
**400** | Failed to set priority to license |  -  |
**403** | Permission denied |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

