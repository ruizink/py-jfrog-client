# jfrog_client.MissionControlApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**acquire_license**](MissionControlApi.md#acquire_license) | **POST** /mc/api/v1/buckets/{name}/acquire | Acquire License
[**add_jpd**](MissionControlApi.md#add_jpd) | **POST** /mc/api/v1/jpds | Add JPD
[**attach_license**](MissionControlApi.md#attach_license) | **POST** /mc/api/v1/buckets/{name}/deploy | Attach License
[**configure_mc_federation**](MissionControlApi.md#configure_mc_federation) | **PUT** /mc/api/v1/federation/{jpdId} | Configure Access Federation on a JPD
[**delete_jpd**](MissionControlApi.md#delete_jpd) | **DELETE** /mc/api/v1/jpds/{id} | Delete JPD
[**delete_license_bucket**](MissionControlApi.md#delete_license_bucket) | **DELETE** /mc/api/v1/buckets/{name} | Delete Bucket
[**export_mc_configuration**](MissionControlApi.md#export_mc_configuration) | **PUT** /mc/api/v1/system/backup/export | Export Mission Control Configuration
[**get_all_mc_federation_configs**](MissionControlApi.md#get_all_mc_federation_configs) | **GET** /mc/api/v1/federation | Get Access Federation Configuration for All JPDs
[**get_jpd_by_id**](MissionControlApi.md#get_jpd_by_id) | **GET** /mc/api/v1/jpds/{id} | Get JPD by id
[**get_jpd_list**](MissionControlApi.md#get_jpd_list) | **GET** /mc/api/v1/jpds | Get JPD List
[**get_license_bucket_status**](MissionControlApi.md#get_license_bucket_status) | **GET** /mc/api/v1/buckets/{name}/report | Get Bucket Status
[**get_license_buckets**](MissionControlApi.md#get_license_buckets) | **GET** /mc/api/v1/buckets | Get Buckets
[**get_mc_federation_candidates**](MissionControlApi.md#get_mc_federation_candidates) | **GET** /mc/api/v1/federation/candidates | Get Access Federation Candidates
[**get_mc_federation_config**](MissionControlApi.md#get_mc_federation_config) | **GET** /mc/api/v1/federation/{jpdId} | Get Access Federation Configuration for a Single JPD
[**import_mc_data**](MissionControlApi.md#import_mc_data) | **PUT** /mc/api/v1/system/backup/import | Import Mission Control Data
[**mc_system_ping**](MissionControlApi.md#mc_system_ping) | **GET** /mc/api/v1/system/ping | System Health Check
[**release_license**](MissionControlApi.md#release_license) | **POST** /mc/api/v1/buckets/{name}/release | Release License
[**update_jpd**](MissionControlApi.md#update_jpd) | **PUT** /mc/api/v1/jpds/{id} | Update JPD
[**upload_license_bucket**](MissionControlApi.md#upload_license_bucket) | **POST** /mc/api/v1/buckets | Upload Bucket


# **acquire_license**
> AcquireLicenseResponse acquire_license(name, acquire_license_request, remove_new_line=remove_new_line)

Acquire License

Acquires one or several license(s) from a bucket and returns them.
Those licenses are marked as used in the bucket report under the "Unknown usage" section.

**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.acquire_license_request import AcquireLicenseRequest
from jfrog_client.models.acquire_license_response import AcquireLicenseResponse
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    name = 'name_example' # str | The bucket name
    acquire_license_request = jfrog_client.AcquireLicenseRequest() # AcquireLicenseRequest | 
    remove_new_line = True # bool | If set to true, automatically removes line breaks from the provided license contents. (optional)

    try:
        # Acquire License
        api_response = api_instance.acquire_license(name, acquire_license_request, remove_new_line=remove_new_line)
        print("The response of MissionControlApi->acquire_license:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->acquire_license: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The bucket name | 
 **acquire_license_request** | [**AcquireLicenseRequest**](AcquireLicenseRequest.md)|  | 
 **remove_new_line** | **bool**| If set to true, automatically removes line breaks from the provided license contents. | [optional] 

### Return type

[**AcquireLicenseResponse**](AcquireLicenseResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | License acquired successfully |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Bucket not found (e.g., \&quot;The entity &#39;LicenseBucket&#39; with identifier &#39;&lt;name&gt;&#39; was not found\&quot;) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **add_jpd**
> Jpd add_jpd(jpd_create)

Add JPD

Add a new JPD to Mission Control.

**Prerequisites:**

Before adding a JPD, you must generate a pairing token on the target JPD.

**Steps to add a JPD:**

1. On the **target JPD** (the JPD you want to register), create a pairing token:
   ```
   POST https://{target-jpd-url}/access/api/v1/service_trust/pairing/mission-control
   ```
   See [Create Pairing Token](https://docs.jfrog.com/administration/update/reference/createpairingtoken) for details.

2. Use the returned `pairing_token` in the `token` field of this request.

3. Mission Control will validate the pairing token by connecting to the target JPD.

**Note:** The `token` field accepts either a pairing token (JWT) or a join key.

**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.jpd import Jpd
from jfrog_client.models.jpd_create import JpdCreate
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    jpd_create = jfrog_client.JpdCreate() # JpdCreate | 

    try:
        # Add JPD
        api_response = api_instance.add_jpd(jpd_create)
        print("The response of MissionControlApi->add_jpd:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->add_jpd: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jpd_create** | [**JpdCreate**](JpdCreate.md)|  | 

### Return type

[**Jpd**](Jpd.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | JPD added |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attach_license**
> AttachLicenseResponse attach_license(name, attach_license_request)

Attach License

Attaches a license from a bucket to the specified JPD.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.attach_license_request import AttachLicenseRequest
from jfrog_client.models.attach_license_response import AttachLicenseResponse
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    name = 'name_example' # str | The bucket name
    attach_license_request = jfrog_client.AttachLicenseRequest() # AttachLicenseRequest | 

    try:
        # Attach License
        api_response = api_instance.attach_license(name, attach_license_request)
        print("The response of MissionControlApi->attach_license:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->attach_license: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The bucket name | 
 **attach_license_request** | [**AttachLicenseRequest**](AttachLicenseRequest.md)|  | 

### Return type

[**AttachLicenseResponse**](AttachLicenseResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | License attached successfully |  -  |
**400** | JPD not found (e.g., \&quot;JPD with id &lt;jpd_id&gt; was not found.\&quot;) |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Bucket not found (e.g., \&quot;The entity &#39;LicenseBucket&#39; with identifier &#39;&lt;name&gt;&#39; was not found\&quot;) |  -  |
**500** | Cannot deploy licenses from bucket (e.g., \&quot;Cannot deploy licenses from bucket &lt;bucket_name&gt; to &lt;jpd_id&gt;\&quot;) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **configure_mc_federation**
> List[FederationOperationResult] configure_mc_federation(jpd_id, access_federation_configuration)

Configure Access Federation on a JPD

Configure access federation on a JPD.


**Note:** Mission Control acts as a centralized orchestrator, and is the recommended way to manage Access Federation configuration across multiple JPDs from a single control plane. To manage federation settings directly on an individual JPD, you can also use the [Access Federation APIs](https://docs.jfrog.com/administration/reference/registeraccessfederation).


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.access_federation_configuration import AccessFederationConfiguration
from jfrog_client.models.federation_operation_result import FederationOperationResult
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    jpd_id = 'jpd_id_example' # str | The JPD ID
    access_federation_configuration = jfrog_client.AccessFederationConfiguration() # AccessFederationConfiguration | 

    try:
        # Configure Access Federation on a JPD
        api_response = api_instance.configure_mc_federation(jpd_id, access_federation_configuration)
        print("The response of MissionControlApi->configure_mc_federation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->configure_mc_federation: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jpd_id** | **str**| The JPD ID | 
 **access_federation_configuration** | [**AccessFederationConfiguration**](AccessFederationConfiguration.md)|  | 

### Return type

[**List[FederationOperationResult]**](FederationOperationResult.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Federation configured (response is a list of per-operation results) |  -  |
**400** | Bad Request - Invalid input or federation setup errors reported in the response body |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - JPD not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_jpd**
> delete_jpd(id)

Delete JPD

Delete a JPD.


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
    api_instance = jfrog_client.MissionControlApi(api_client)
    id = 'id_example' # str | The JPD ID

    try:
        # Delete JPD
        api_instance.delete_jpd(id)
    except Exception as e:
        print("Exception when calling MissionControlApi->delete_jpd: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The JPD ID | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | JPD deleted |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - JPD not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_license_bucket**
> delete_license_bucket(name)

Delete Bucket

Delete a license bucket.


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
    api_instance = jfrog_client.MissionControlApi(api_client)
    name = 'name_example' # str | The bucket name

    try:
        # Delete Bucket
        api_instance.delete_license_bucket(name)
    except Exception as e:
        print("Exception when calling MissionControlApi->delete_license_bucket: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The bucket name | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Bucket deleted |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Bucket not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **export_mc_configuration**
> bytes export_mc_configuration()

Export Mission Control Configuration

Export Mission Control configuration.


**Note:** This API is available only in Self-hosted instances.


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
    api_instance = jfrog_client.MissionControlApi(api_client)

    try:
        # Export Mission Control Configuration
        api_response = api_instance.export_mc_configuration()
        print("The response of MissionControlApi->export_mc_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->export_mc_configuration: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Configuration exported |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_mc_federation_configs**
> List[AccessFederationListItem] get_all_mc_federation_configs(include_non_configured=include_non_configured)

Get Access Federation Configuration for All JPDs

Get access federation configuration for all JPDs.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.access_federation_list_item import AccessFederationListItem
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    include_non_configured = False # bool | When true, include JPDs with no (or default) federation configuration. Query parameter name matches the Mission Control API (`include_non_configured`).  (optional) (default to False)

    try:
        # Get Access Federation Configuration for All JPDs
        api_response = api_instance.get_all_mc_federation_configs(include_non_configured=include_non_configured)
        print("The response of MissionControlApi->get_all_mc_federation_configs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->get_all_mc_federation_configs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **include_non_configured** | **bool**| When true, include JPDs with no (or default) federation configuration. Query parameter name matches the Mission Control API (&#x60;include_non_configured&#x60;).  | [optional] [default to False]

### Return type

[**List[AccessFederationListItem]**](AccessFederationListItem.md)

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

# **get_jpd_by_id**
> Jpd get_jpd_by_id(id)

Get JPD by id

Get a JPD by ID.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.jpd import Jpd
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    id = 'id_example' # str | The JPD ID

    try:
        # Get JPD by id
        api_response = api_instance.get_jpd_by_id(id)
        print("The response of MissionControlApi->get_jpd_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->get_jpd_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The JPD ID | 

### Return type

[**Jpd**](Jpd.md)

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
**404** | Not Found - JPD not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jpd_list**
> List[Jpd] get_jpd_list(name=name, tag=tag, url=url, status=status)

Get JPD List

Get all JPDs.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.jpd import Jpd
from jfrog_client.models.jpd_status_code import JpdStatusCode
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    name = 'name_example' # str | Filter by name (optional)
    tag = 'tag_example' # str | Filter by tag (optional)
    url = 'url_example' # str | Filter by URL (optional)
    status = jfrog_client.JpdStatusCode() # JpdStatusCode | Filter by status (optional)

    try:
        # Get JPD List
        api_response = api_instance.get_jpd_list(name=name, tag=tag, url=url, status=status)
        print("The response of MissionControlApi->get_jpd_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->get_jpd_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| Filter by name | [optional] 
 **tag** | **str**| Filter by tag | [optional] 
 **url** | **str**| Filter by URL | [optional] 
 **status** | [**JpdStatusCode**](.md)| Filter by status | [optional] 

### Return type

[**List[Jpd]**](Jpd.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**400** | Bad Request - Invalid status query value |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_license_bucket_status**
> object get_license_bucket_status(name)

Get Bucket Status

Get bucket status report.


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
    api_instance = jfrog_client.MissionControlApi(api_client)
    name = 'name_example' # str | The bucket name

    try:
        # Get Bucket Status
        api_response = api_instance.get_license_bucket_status(name)
        print("The response of MissionControlApi->get_license_bucket_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->get_license_bucket_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The bucket name | 

### Return type

**object**

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
**404** | Not Found - Bucket not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_license_buckets**
> List[LicenseBucket] get_license_buckets()

Get Buckets

Retrieves all the license buckets in the system.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.license_bucket import LicenseBucket
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
    api_instance = jfrog_client.MissionControlApi(api_client)

    try:
        # Get Buckets
        api_response = api_instance.get_license_buckets()
        print("The response of MissionControlApi->get_license_buckets:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->get_license_buckets: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[LicenseBucket]**](LicenseBucket.md)

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

# **get_mc_federation_candidates**
> List[object] get_mc_federation_candidates()

Get Access Federation Candidates

Get access federation candidates.


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
    api_instance = jfrog_client.MissionControlApi(api_client)

    try:
        # Get Access Federation Candidates
        api_response = api_instance.get_mc_federation_candidates()
        print("The response of MissionControlApi->get_mc_federation_candidates:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->get_mc_federation_candidates: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

**List[object]**

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

# **get_mc_federation_config**
> AccessFederationConfiguration get_mc_federation_config(jpd_id)

Get Access Federation Configuration for a Single JPD

Get access federation configuration for a specific JPD.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.access_federation_configuration import AccessFederationConfiguration
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    jpd_id = 'jpd_id_example' # str | The JPD ID

    try:
        # Get Access Federation Configuration for a Single JPD
        api_response = api_instance.get_mc_federation_config(jpd_id)
        print("The response of MissionControlApi->get_mc_federation_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->get_mc_federation_config: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **jpd_id** | **str**| The JPD ID | 

### Return type

[**AccessFederationConfiguration**](AccessFederationConfiguration.md)

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
**404** | Not Found - JPD not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_mc_data**
> import_mc_data()

Import Mission Control Data

Import Mission Control data from a JSON file encrypted with the master
key.


**Note:**
- This API is available only in Self-hosted instances.
- Before importing, you must rename the export.json file to import.json.


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
    api_instance = jfrog_client.MissionControlApi(api_client)

    try:
        # Import Mission Control Data
        api_instance.import_mc_data()
    except Exception as e:
        print("Exception when calling MissionControlApi->import_mc_data: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**204** | Successfully imported JSON file into the database |  -  |
**400** | JSON file is not in the correct format |  -  |
**500** | Error during import |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mc_system_ping**
> str mc_system_ping()

System Health Check

Mission Control system health check.

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
    api_instance = jfrog_client.MissionControlApi(api_client)

    try:
        # System Health Check
        api_response = api_instance.mc_system_ping()
        print("The response of MissionControlApi->mc_system_ping:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->mc_system_ping: %s\n" % e)
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
**200** | System is healthy |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **release_license**
> release_license(name, release_license_request)

Release License

Releases a license from a bucket given the JPD id or label previously used by an "acquire" call.

**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.release_license_request import ReleaseLicenseRequest
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    name = 'name_example' # str | The bucket name
    release_license_request = jfrog_client.ReleaseLicenseRequest() # ReleaseLicenseRequest | 

    try:
        # Release License
        api_instance.release_license(name, release_license_request)
    except Exception as e:
        print("Exception when calling MissionControlApi->release_license: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The bucket name | 
 **release_license_request** | [**ReleaseLicenseRequest**](ReleaseLicenseRequest.md)|  | 

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
**204** | License released successfully (No Content) |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - Bucket not found (e.g., \&quot;The entity &#39;LicenseBucket&#39; with identifier &#39;&lt;name&gt;&#39; was not found\&quot;) |  -  |
**409** | Conflict. Possible messages: - \&quot;The Jpd must be offline before you can detach its license\&quot; - \&quot;No licenses to release for bucket: &lt;bucket_id&gt;, instance name: &lt;jpd_id or label&gt;\&quot;  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_jpd**
> update_jpd(id, jpd_create)

Update JPD

Update a JPD.


**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.jpd_create import JpdCreate
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    id = 'id_example' # str | The JPD ID
    jpd_create = jfrog_client.JpdCreate() # JpdCreate | 

    try:
        # Update JPD
        api_instance.update_jpd(id, jpd_create)
    except Exception as e:
        print("Exception when calling MissionControlApi->update_jpd: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The JPD ID | 
 **jpd_create** | [**JpdCreate**](JpdCreate.md)|  | 

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
**204** | JPD updated successfully |  -  |
**400** | Bad Request - Invalid input |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**404** | Not Found - JPD not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **upload_license_bucket**
> LicenseBucketUploadResponse upload_license_bucket(license_bucket_create)

Upload Bucket

Creates a new License Bucket. Supports two modes:

**JSON mode** (`Content-Type: application/json`): Provide a URL from which Mission Control
will download the encrypted bucket file, along with the decryption key.

**Multipart mode** (`Content-Type: multipart/form-data`): Upload the encrypted bucket file
directly from your environment, along with the decryption key.

Both modes return the same response.

**Multipart mode example:**
```
curl -X POST 'https://<server>/mc/api/v1/buckets' \
  -H 'Authorization: Bearer <token>' \
  -H 'Content-Type: multipart/form-data' \
  -F 'file=@/path/to/bucket-file.json;type=application/octet-stream' \
  -F 'key=<decryption-key>' \
  -F 'name=mybucket'
```

**Security:** Requires admin privileges.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.license_bucket_create import LicenseBucketCreate
from jfrog_client.models.license_bucket_upload_response import LicenseBucketUploadResponse
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
    api_instance = jfrog_client.MissionControlApi(api_client)
    license_bucket_create = jfrog_client.LicenseBucketCreate() # LicenseBucketCreate | 

    try:
        # Upload Bucket
        api_response = api_instance.upload_license_bucket(license_bucket_create)
        print("The response of MissionControlApi->upload_license_bucket:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MissionControlApi->upload_license_bucket: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **license_bucket_create** | [**LicenseBucketCreate**](LicenseBucketCreate.md)|  | 

### Return type

[**LicenseBucketUploadResponse**](LicenseBucketUploadResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Bucket created |  -  |
**400** | Your bucket file could not be used. Please verify that the file is correct and that the key is valid. |  -  |
**401** | Bad Credentials - Invalid credentials |  -  |
**403** | Permission Denied - Insufficient permissions |  -  |
**409** | Conflict. Possible messages: - \&quot;Name &#39;&lt;bucket_name&gt;&#39; already exists\&quot; - \&quot;Url &#39;&lt;bucket_url&gt;&#39; already exists\&quot;  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

