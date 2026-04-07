# jfrog_client.ArtifactorySystemApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**artifactory_ping**](ArtifactorySystemApi.md#artifactory_ping) | **GET** /artifactory/api/system/ping | Artifactory Ping
[**delete_ha_license**](ArtifactorySystemApi.md#delete_ha_license) | **DELETE** /artifactory/api/system/licenses | Delete HA Cluster License
[**get_artifactory_version**](ArtifactorySystemApi.md#get_artifactory_version) | **GET** /artifactory/api/system/version | Get Artifactory Version
[**get_ha_license_info**](ArtifactorySystemApi.md#get_ha_license_info) | **GET** /artifactory/api/system/licenses | Get HA License Information
[**get_license_info**](ArtifactorySystemApi.md#get_license_info) | **GET** /artifactory/api/system/license | Get License Information
[**get_liveness_probe**](ArtifactorySystemApi.md#get_liveness_probe) | **GET** /artifactory/api/v1/system/liveness | Liveness Probe
[**get_readiness_probe**](ArtifactorySystemApi.md#get_readiness_probe) | **GET** /artifactory/api/v1/system/readiness | Readiness Probe
[**get_reverse_proxy_configuration**](ArtifactorySystemApi.md#get_reverse_proxy_configuration) | **GET** /artifactory/api/system/configuration/webServer | Get Reverse Proxy Configuration
[**get_reverse_proxy_snippet**](ArtifactorySystemApi.md#get_reverse_proxy_snippet) | **GET** /artifactory/api/system/configuration/reverseProxy/nginx | Get Reverse Proxy Snippet
[**get_system_configuration**](ArtifactorySystemApi.md#get_system_configuration) | **GET** /artifactory/api/system/configuration | Get System Configuration
[**get_system_info**](ArtifactorySystemApi.md#get_system_info) | **GET** /artifactory/api/system | Get System Info
[**install_ha_licenses**](ArtifactorySystemApi.md#install_ha_licenses) | **POST** /artifactory/api/system/licenses | Install HA Cluster Licenses
[**install_license**](ArtifactorySystemApi.md#install_license) | **POST** /artifactory/api/system/license | Install License
[**patch_system_configuration**](ArtifactorySystemApi.md#patch_system_configuration) | **PATCH** /artifactory/api/system/configuration | Apply Artifactory YAML Configuration Changes
[**reindex_metadata_server**](ArtifactorySystemApi.md#reindex_metadata_server) | **POST** /artifactory/api/metadata_server/reindex | Re-index Paths on Metadata Server
[**save_system_configuration**](ArtifactorySystemApi.md#save_system_configuration) | **POST** /artifactory/api/system/configuration | Save General Configuration
[**start_sha256_migration**](ArtifactorySystemApi.md#start_sha256_migration) | **POST** /artifactory/api/system/migration/sha2/start | Start SHA256 Migration Task
[**stop_sha256_migration**](ArtifactorySystemApi.md#stop_sha256_migration) | **POST** /artifactory/api/system/migration/sha2/stop | Stop SHA256 Migration Task
[**update_custom_url_base**](ArtifactorySystemApi.md#update_custom_url_base) | **PUT** /artifactory/api/system/configuration/baseUrl | Update Custom URL Base
[**update_reverse_proxy_configuration**](ArtifactorySystemApi.md#update_reverse_proxy_configuration) | **POST** /artifactory/api/system/configuration/webServer | Update Reverse Proxy Configuration
[**verify_connection**](ArtifactorySystemApi.md#verify_connection) | **POST** /artifactory/api/system/verifyconnection | Verify Connection


# **artifactory_ping**
> str artifactory_ping()

Artifactory Ping

Check if Artifactory is alive.

**Security:** Requires a valid user (can be anonymous).


### Example


```python
import jfrog_client
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)


# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)

    try:
        # Artifactory Ping
        api_response = api_instance.artifactory_ping()
        print("The response of ArtifactorySystemApi->artifactory_ping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->artifactory_ping: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_ha_license**
> InstallHALicenses200Response delete_ha_license(license_hash)

Delete HA Cluster License

Deletes a license key from an HA cluster.

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires an admin user.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.install_ha_licenses200_response import InstallHALicenses200Response
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    license_hash = 'license_hash_example' # str | Comma-separated list of license hash codes to delete

    try:
        # Delete HA Cluster License
        api_response = api_instance.delete_ha_license(license_hash)
        print("The response of ArtifactorySystemApi->delete_ha_license:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->delete_ha_license: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **license_hash** | **str**| Comma-separated list of license hash codes to delete | 

### Return type

[**InstallHALicenses200Response**](InstallHALicenses200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | License(s) deleted successfully |  -  |
**400** | Bad Request - Invalid license hash |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_artifactory_version**
> GetArtifactoryVersion200Response get_artifactory_version()

Get Artifactory Version

Return information about the current Artifactory version, revision, and currently installed Add-ons.

**Security:** Requires a valid user (can be anonymous).


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_artifactory_version200_response import GetArtifactoryVersion200Response
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)

    try:
        # Get Artifactory Version
        api_response = api_instance.get_artifactory_version()
        print("The response of ArtifactorySystemApi->get_artifactory_version:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->get_artifactory_version: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetArtifactoryVersion200Response**](GetArtifactoryVersion200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ha_license_info**
> List[GetHALicenseInfo200ResponseInner] get_ha_license_info()

Get HA License Information

Return information about the currently installed licenses in an HA cluster.

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires authentication using Access Tokens, either as admin or using a scoped token with the system:info/licenses:r scope.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_ha_license_info200_response_inner import GetHALicenseInfo200ResponseInner
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)

    try:
        # Get HA License Information
        api_response = api_instance.get_ha_license_info()
        print("The response of ArtifactorySystemApi->get_ha_license_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->get_ha_license_info: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[GetHALicenseInfo200ResponseInner]**](GetHALicenseInfo200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Operation not supported in this environment (e.g., SaaS, AOL). |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_license_info**
> GetLicenseInfo200Response get_license_info()

Get License Information

Return information about the currently installed license.

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires a valid admin user.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_license_info200_response import GetLicenseInfo200Response
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)

    try:
        # Get License Information
        api_response = api_instance.get_license_info()
        print("The response of ArtifactorySystemApi->get_license_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->get_license_info: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetLicenseInfo200Response**](GetLicenseInfo200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Operation not supported in this environment (e.g., SaaS, AOL). |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_liveness_probe**
> GetReadinessProbe200Response get_liveness_probe()

Liveness Probe

Get a status response to know when a container is ready to start accepting traffic.

**Security:** Requires a valid user (can be anonymous).


### Example


```python
import jfrog_client
from jfrog_client.models.get_readiness_probe200_response import GetReadinessProbe200Response
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)


# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)

    try:
        # Liveness Probe
        api_response = api_instance.get_liveness_probe()
        print("The response of ArtifactorySystemApi->get_liveness_probe:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->get_liveness_probe: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetReadinessProbe200Response**](GetReadinessProbe200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful request - Working properly |  -  |
**500** | Error - Returns HTTP error code with reason if not working properly |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_readiness_probe**
> GetReadinessProbe200Response get_readiness_probe()

Readiness Probe

Get a status response about the state of Artifactory using Kubernetes style readiness probe.
The probe can be used to measure system latency and provides an important metric to monitor.

**Security:** Requires a valid user (can be anonymous).


### Example


```python
import jfrog_client
from jfrog_client.models.get_readiness_probe200_response import GetReadinessProbe200Response
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)


# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)

    try:
        # Readiness Probe
        api_response = api_instance.get_readiness_probe()
        print("The response of ArtifactorySystemApi->get_readiness_probe:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->get_readiness_probe: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetReadinessProbe200Response**](GetReadinessProbe200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successful request - Artifactory is working properly |  -  |
**500** | Error - Returns HTTP error code with reason if not working properly |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_reverse_proxy_configuration**
> GetReverseProxyConfiguration200Response get_reverse_proxy_configuration()

Get Reverse Proxy Configuration

Returns the reverse proxy configuration.

**Note:** Applicable to a Self-Hosted JFrog Platform only.

**Security:** Requires a valid admin user and supported for users with the relevant permissions.
Non-admin users will get the proxy method and ports and the list of repositories based on their user permissions.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_reverse_proxy_configuration200_response import GetReverseProxyConfiguration200Response
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)

    try:
        # Get Reverse Proxy Configuration
        api_response = api_instance.get_reverse_proxy_configuration()
        print("The response of ArtifactorySystemApi->get_reverse_proxy_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->get_reverse_proxy_configuration: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**GetReverseProxyConfiguration200Response**](GetReverseProxyConfiguration200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_reverse_proxy_snippet**
> str get_reverse_proxy_snippet()

Get Reverse Proxy Snippet

Returns the reverse proxy configuration snippet in text format.

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires a valid admin user.


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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)

    try:
        # Get Reverse Proxy Snippet
        api_response = api_instance.get_reverse_proxy_snippet()
        print("The response of ArtifactorySystemApi->get_reverse_proxy_snippet:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->get_reverse_proxy_snippet: %s\n" % e)
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
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_system_configuration**
> str get_system_configuration()

Get System Configuration

Get the general configuration (artifactory.config.xml).

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires a valid admin user.


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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)

    try:
        # Get System Configuration
        api_response = api_instance.get_system_configuration()
        print("The response of ArtifactorySystemApi->get_system_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->get_system_configuration: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_system_info**
> str get_system_info()

Get System Info

Get general system information.

**Security:** Requires a valid admin user.


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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)

    try:
        # Get System Info
        api_response = api_instance.get_system_info()
        print("The response of ArtifactorySystemApi->get_system_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->get_system_info: %s\n" % e)
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
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **install_ha_licenses**
> InstallHALicenses200Response install_ha_licenses(install_license_request)

Install HA Cluster Licenses

Install new license key(s) on an HA cluster.

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires an admin user.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.install_ha_licenses200_response import InstallHALicenses200Response
from jfrog_client.models.install_license_request import InstallLicenseRequest
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    install_license_request = [jfrog_client.InstallLicenseRequest()] # List[InstallLicenseRequest] | 

    try:
        # Install HA Cluster Licenses
        api_response = api_instance.install_ha_licenses(install_license_request)
        print("The response of ArtifactorySystemApi->install_ha_licenses:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->install_ha_licenses: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **install_license_request** | [**List[InstallLicenseRequest]**](InstallLicenseRequest.md)|  | 

### Return type

[**InstallHALicenses200Response**](InstallHALicenses200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | License(s) installed successfully |  -  |
**400** | Bad Request - Invalid license |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **install_license**
> DeleteCertificate200Response install_license(install_license_request)

Install License

Install new license key or change the current one.

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires a valid admin user.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.delete_certificate200_response import DeleteCertificate200Response
from jfrog_client.models.install_license_request import InstallLicenseRequest
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    install_license_request = jfrog_client.InstallLicenseRequest() # InstallLicenseRequest | 

    try:
        # Install License
        api_response = api_instance.install_license(install_license_request)
        print("The response of ArtifactorySystemApi->install_license:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->install_license: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **install_license_request** | [**InstallLicenseRequest**](InstallLicenseRequest.md)|  | 

### Return type

[**DeleteCertificate200Response**](DeleteCertificate200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | License installed successfully |  -  |
**400** | Bad Request - Invalid license |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_system_configuration**
> str patch_system_configuration(body)

Apply Artifactory YAML Configuration Changes

Configure an existing Artifactory instance using a simple YAML configuration file.
Make single or multiple configuration changes as needed, to create, update, and delete any elements in Artifactory.

**⚠️ Take care when modifying Artifactory configurations:**
Modifying the Artifactory configurations is an advanced feature, and if done incorrectly may render Artifactory
in an undefined and unusable state. Since it is easy to overwrite configurations, such as a repository's package type,
we strongly recommend backing up the configuration before making any direct changes, and taking great care when doing so.

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires an admin user.


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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    body = 'body_example' # str | 

    try:
        # Apply Artifactory YAML Configuration Changes
        api_response = api_instance.patch_system_configuration(body)
        print("The response of ArtifactorySystemApi->patch_system_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->patch_system_configuration: %s\n" % e)
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

 - **Content-Type**: application/yaml
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Configuration updated successfully |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reindex_metadata_server**
> str reindex_metadata_server(reindex_metadata_server_request, var_async=var_async, delete_first=delete_first)

Re-index Paths on Metadata Server

If needed, Artifactory can re-send Metadata events to the Metadata Server in case of an inconsistent state.
The API will recursively re-index artifacts under the given repository or path if a repository key or a directory path is specified.
Asynchronous by default. Does not delete data associated with the given paths on the Metadata Server before re-indexing by default.

**Security:** Requires an admin user.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.reindex_metadata_server_request import ReindexMetadataServerRequest
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    reindex_metadata_server_request = jfrog_client.ReindexMetadataServerRequest() # ReindexMetadataServerRequest | 
    var_async = True # bool | Execute asynchronously (optional) (default to True)
    delete_first = False # bool | Delete data before re-indexing (optional) (default to False)

    try:
        # Re-index Paths on Metadata Server
        api_response = api_instance.reindex_metadata_server(reindex_metadata_server_request, var_async=var_async, delete_first=delete_first)
        print("The response of ArtifactorySystemApi->reindex_metadata_server:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->reindex_metadata_server: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reindex_metadata_server_request** | [**ReindexMetadataServerRequest**](ReindexMetadataServerRequest.md)|  | 
 **var_async** | **bool**| Execute asynchronously | [optional] [default to True]
 **delete_first** | **bool**| Delete data before re-indexing | [optional] [default to False]

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
**200** | Re-indexing started successfully |  -  |
**202** | Accepted - Reindex operation accepted asynchronously. |  -  |
**400** | Bad Request - Invalid paths |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **save_system_configuration**
> save_system_configuration(body)

Save General Configuration

Save the general configuration (artifactory.config.xml).

**Note:** This API is available only in Self-hosted instances.
This is an advanced feature - make sure the new configuration is really what you wanted before saving.

**Security:** Requires a valid admin user.


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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    body = 'body_example' # str | 

    try:
        # Save General Configuration
        api_instance.save_system_configuration(body)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->save_system_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **str**|  | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/xml
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Configuration saved successfully |  -  |
**400** | Bad Request - Invalid configuration XML |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **start_sha256_migration**
> str start_sha256_migration(start_sha256_migration_request=start_sha256_migration_request)

Start SHA256 Migration Task

Starts the SHA-256 migration process.

**Note:** This API is available only in Self-hosted instances.
Migration can also be configured using a set of properties in Artifactory's artifactory.system.properties file.

**Security:** Administrator permissions.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.start_sha256_migration_request import StartSha256MigrationRequest
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    start_sha256_migration_request = jfrog_client.StartSha256MigrationRequest() # StartSha256MigrationRequest |  (optional)

    try:
        # Start SHA256 Migration Task
        api_response = api_instance.start_sha256_migration(start_sha256_migration_request=start_sha256_migration_request)
        print("The response of ArtifactorySystemApi->start_sha256_migration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->start_sha256_migration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_sha256_migration_request** | [**StartSha256MigrationRequest**](StartSha256MigrationRequest.md)|  | [optional] 

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
**200** | Migration task started successfully |  -  |
**400** | Bad Request - Operation not supported in this environment (e.g., SaaS, AOL). |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop_sha256_migration**
> str stop_sha256_migration(sleep_interval_millis=sleep_interval_millis)

Stop SHA256 Migration Task

Stops the SHA-256 migration process.

**Note:** This API is available only in Self-hosted instances.
The sleepIntervalMillis should match what was defined in the Start SHA256 Migration Task.

**Security:** Administrator permissions.


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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    sleep_interval_millis = 5000 # int | Sleep interval in milliseconds (should match the value used when starting migration) (optional) (default to 5000)

    try:
        # Stop SHA256 Migration Task
        api_response = api_instance.stop_sha256_migration(sleep_interval_millis=sleep_interval_millis)
        print("The response of ArtifactorySystemApi->stop_sha256_migration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->stop_sha256_migration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sleep_interval_millis** | **int**| Sleep interval in milliseconds (should match the value used when starting migration) | [optional] [default to 5000]

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
**200** | Migration task stopped successfully |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_custom_url_base**
> str update_custom_url_base(body)

Update Custom URL Base

Changes the Custom URL base.

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires a valid admin user.


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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    body = 'body_example' # str | 

    try:
        # Update Custom URL Base
        api_response = api_instance.update_custom_url_base(body)
        print("The response of ArtifactorySystemApi->update_custom_url_base:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->update_custom_url_base: %s\n" % e)
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
 - **Accept**: text/plain

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | URL base successfully updated |  -  |
**400** | Bad Request - Invalid URL |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_reverse_proxy_configuration**
> update_reverse_proxy_configuration(update_reverse_proxy_configuration_request)

Update Reverse Proxy Configuration

Updates the reverse proxy configuration.

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires an admin user.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.update_reverse_proxy_configuration_request import UpdateReverseProxyConfigurationRequest
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    update_reverse_proxy_configuration_request = jfrog_client.UpdateReverseProxyConfigurationRequest() # UpdateReverseProxyConfigurationRequest | 

    try:
        # Update Reverse Proxy Configuration
        api_instance.update_reverse_proxy_configuration(update_reverse_proxy_configuration_request)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->update_reverse_proxy_configuration: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **update_reverse_proxy_configuration_request** | [**UpdateReverseProxyConfigurationRequest**](UpdateReverseProxyConfigurationRequest.md)|  | 

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
**200** | Reverse proxy configuration updated successfully |  -  |
**400** | Bad Request - Invalid configuration |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_connection**
> str verify_connection(verify_connection_request)

Verify Connection

Verifies a two-way connection between Artifactory and another product.
Returns Success (200) if Artifactory receives a similar success code (200) from the provided endpoint.

**Note:** This API is available only in Self-hosted instances.

**Security:** Requires an admin user.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.verify_connection_request import VerifyConnectionRequest
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
    api_instance = jfrog_client.ArtifactorySystemApi(api_client)
    verify_connection_request = jfrog_client.VerifyConnectionRequest() # VerifyConnectionRequest | 

    try:
        # Verify Connection
        api_response = api_instance.verify_connection(verify_connection_request)
        print("The response of ArtifactorySystemApi->verify_connection:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ArtifactorySystemApi->verify_connection: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verify_connection_request** | [**VerifyConnectionRequest**](VerifyConnectionRequest.md)|  | 

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
**200** | Successfully connected to endpoint |  -  |
**400** | Error connecting to endpoint |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

