# jfrog_client.CertificatesApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_certificate**](CertificatesApi.md#add_certificate) | **POST** /artifactory/api/system/security/certificates/{certificateAlias} | Add Certificate
[**delete_certificate**](CertificatesApi.md#delete_certificate) | **DELETE** /artifactory/api/system/security/certificates/{certificateAlias} | Delete Certificate
[**get_ca_certificate**](CertificatesApi.md#get_ca_certificate) | **GET** /access/api/v1/cert/ca | Get CA Public Certificate
[**get_certificates**](CertificatesApi.md#get_certificates) | **GET** /artifactory/api/system/security/certificates | Get Certificates
[**get_root_certificate**](CertificatesApi.md#get_root_certificate) | **GET** /access/api/v1/cert/root | Get Root Certificate


# **add_certificate**
> AddCertificate200Response add_certificate(certificate_alias, body)

Add Certificate

Adds an SSL certificate.

Since: 5.4.0

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.add_certificate200_response import AddCertificate200Response
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
    api_instance = jfrog_client.CertificatesApi(api_client)
    certificate_alias = 'certificate_alias_example' # str | The certificate alias
    body = None # bytes | 

    try:
        # Add Certificate
        api_response = api_instance.add_certificate(certificate_alias, body)
        print("The response of CertificatesApi->add_certificate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CertificatesApi->add_certificate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_alias** | **str**| The certificate alias | 
 **body** | **bytes**|  | 

### Return type

[**AddCertificate200Response**](AddCertificate200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/text
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

# **delete_certificate**
> DeleteCertificate200Response delete_certificate(certificate_alias)

Delete Certificate

Deletes an SSL certificate.

Since: 5.4.0

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.delete_certificate200_response import DeleteCertificate200Response
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
    api_instance = jfrog_client.CertificatesApi(api_client)
    certificate_alias = 'certificate_alias_example' # str | The certificate alias

    try:
        # Delete Certificate
        api_response = api_instance.delete_certificate(certificate_alias)
        print("The response of CertificatesApi->delete_certificate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CertificatesApi->delete_certificate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **certificate_alias** | **str**| The certificate alias | 

### Return type

[**DeleteCertificate200Response**](DeleteCertificate200Response.md)

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

# **get_ca_certificate**
> str get_ca_certificate()

Get CA Public Certificate

Returns the CA public certificate.


**Security:** Requires admin privileges.


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
    api_instance = jfrog_client.CertificatesApi(api_client)

    try:
        # Get CA Public Certificate
        api_response = api_instance.get_ca_certificate()
        print("The response of CertificatesApi->get_ca_certificate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CertificatesApi->get_ca_certificate: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_certificates**
> List[GetCertificates200ResponseInner] get_certificates()

Get Certificates

Returns a list of installed SSL certificates.

Since: 5.4.0

Security: Requires an admin user

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_certificates200_response_inner import GetCertificates200ResponseInner
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
    api_instance = jfrog_client.CertificatesApi(api_client)

    try:
        # Get Certificates
        api_response = api_instance.get_certificates()
        print("The response of CertificatesApi->get_certificates:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CertificatesApi->get_certificates: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[GetCertificates200ResponseInner]**](GetCertificates200ResponseInner.md)

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

# **get_root_certificate**
> str get_root_certificate(formatted=formatted)

Get Root Certificate

Returns the root certificate.

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
    api_instance = jfrog_client.CertificatesApi(api_client)
    formatted = False # bool | When true, returns the certificate in PEM format with header/footer and line breaks. (optional) (default to False)

    try:
        # Get Root Certificate
        api_response = api_instance.get_root_certificate(formatted=formatted)
        print("The response of CertificatesApi->get_root_certificate:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CertificatesApi->get_root_certificate: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **formatted** | **bool**| When true, returns the certificate in PEM format with header/footer and line breaks. | [optional] [default to False]

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

