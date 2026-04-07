# jfrog_client.MetadataCalculationApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**calculate_alpine_repository_metadata**](MetadataCalculationApi.md#calculate_alpine_repository_metadata) | **POST** /artifactory/api/alpine/{repoKey}/reindex | Calculate Alpine Repository Metadata
[**calculate_bower_index**](MetadataCalculationApi.md#calculate_bower_index) | **POST** /artifactory/api/bower/{repoKey}/reindex | Calculate Bower Index
[**calculate_cached_remote_debian_repository_coordinates**](MetadataCalculationApi.md#calculate_cached_remote_debian_repository_coordinates) | **POST** /artifactory/api/deb/indexCached/{repoKey} | Calculate Cached Remote Debian Repository Coordinates
[**calculate_cargo_repository_metadata**](MetadataCalculationApi.md#calculate_cargo_repository_metadata) | **POST** /artifactory/api/cargo/{repoKey}/reindex | Calculate Cargo Repository Metadata
[**calculate_cocoa_pods_index**](MetadataCalculationApi.md#calculate_cocoa_pods_index) | **POST** /artifactory/api/cocoapods/{repoKey}/reindex | Calculate CocoaPods Index
[**calculate_conan_repository_metadata**](MetadataCalculationApi.md#calculate_conan_repository_metadata) | **POST** /artifactory/api/conan/{repoKey}/reindex | Calculate Conan Repository Metadata
[**calculate_conda_repository_metadata**](MetadataCalculationApi.md#calculate_conda_repository_metadata) | **POST** /artifactory/api/conda/{repoKey}/reindex | Calculate Conda Repository Metadata
[**calculate_cran_repository_metadata**](MetadataCalculationApi.md#calculate_cran_repository_metadata) | **POST** /artifactory/api/cran/reindex/{repoKey} | Calculate CRAN Repository Metadata
[**calculate_debian_repository_metadata**](MetadataCalculationApi.md#calculate_debian_repository_metadata) | **POST** /artifactory/api/deb/reindex/{repoKey} | Calculate Debian Repository Metadata
[**calculate_helm_chart_index**](MetadataCalculationApi.md#calculate_helm_chart_index) | **POST** /artifactory/api/helm/{repoKey}/reindex | Calculate Helm Chart Index
[**calculate_maven_index**](MetadataCalculationApi.md#calculate_maven_index) | **POST** /artifactory/api/maven | Calculate Maven Index
[**calculate_maven_metadata**](MetadataCalculationApi.md#calculate_maven_metadata) | **POST** /artifactory/api/maven/calculateMetadata/{repoKey}/{folderPath} | Calculate Maven Metadata
[**calculate_npm_repository_metadata**](MetadataCalculationApi.md#calculate_npm_repository_metadata) | **POST** /artifactory/api/npm/{repoKey}/reindex | Calculate Npm Repository Metadata
[**calculate_nu_get_repository_metadata**](MetadataCalculationApi.md#calculate_nu_get_repository_metadata) | **POST** /artifactory/api/nuget/{repoKey}/reindex | Calculate NuGet Repository Metadata
[**calculate_opkg_repository_metadata**](MetadataCalculationApi.md#calculate_opkg_repository_metadata) | **POST** /artifactory/api/opkg/reindex/{repoKey} | Calculate Opkg Repository Metadata
[**calculate_pub_repository_metadata**](MetadataCalculationApi.md#calculate_pub_repository_metadata) | **POST** /artifactory/api/pub/{repoKey}/reindex | Calculate Pub Repository Metadata
[**calculate_pypi_repository_metadata**](MetadataCalculationApi.md#calculate_pypi_repository_metadata) | **POST** /artifactory/api/pypi/{repoKey}/reindex | Calculate PyPI Repository Metadata
[**calculate_ruby_gems_index**](MetadataCalculationApi.md#calculate_ruby_gems_index) | **POST** /artifactory/api/gems/{repoKey}/reindex | Calculate RubyGems Index
[**calculate_swift_index**](MetadataCalculationApi.md#calculate_swift_index) | **POST** /artifactory/api/swift/{repoKey}/reindex | Calculate Swift Index
[**calculate_terraform_index**](MetadataCalculationApi.md#calculate_terraform_index) | **POST** /artifactory/api/terraform/{repoKey}/reindex | Calculate Terraform Index
[**calculate_yum_repository_metadata**](MetadataCalculationApi.md#calculate_yum_repository_metadata) | **POST** /artifactory/api/yum/{repoKey} | Calculate YUM Repository Metadata
[**create_debian_snapshot**](MetadataCalculationApi.md#create_debian_snapshot) | **POST** /artifactory/api/deb/{repoKey}/snapshot | Create Debian Snapshot
[**generate_maven_pom_file**](MetadataCalculationApi.md#generate_maven_pom_file) | **POST** /artifactory/api/maven/generatePom/{repoKey}/{jarFilePath} | Generate Maven POM File
[**get_pypi_latest_package_version_metadata_in_json**](MetadataCalculationApi.md#get_pypi_latest_package_version_metadata_in_json) | **GET** /artifactory/api/pypi/{repository}/pypi/{package}/json | Get PyPI Latest Package Version Metadata in JSON
[**get_pypi_package_version_metadata_in_json**](MetadataCalculationApi.md#get_pypi_package_version_metadata_in_json) | **GET** /artifactory/api/pypi/{repository}/pypi/{package}/{version}/json | Get PyPI Package Version Metadata in JSON
[**helm_charts_partial_re_indexing**](MetadataCalculationApi.md#helm_charts_partial_re_indexing) | **POST** /artifactory/api/helm/{repoKey}/{pathForPartialReindex}/reindex | Helm Charts Partial Re-Indexing
[**move_cran_archives**](MetadataCalculationApi.md#move_cran_archives) | **GET** /artifactory/api/cran/{repoKey}/move-archives | Move CRAN Archives


# **calculate_alpine_repository_metadata**
> str calculate_alpine_repository_metadata(repo_key)

Calculate Alpine Repository Metadata

Calculates/recalculates the metadata index for this repository, based on the Alpine packages in it. Calculation is asynchronous. Supported by local repositories only.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Calculate Alpine Repository Metadata
        api_response = api_instance.calculate_alpine_repository_metadata(repo_key)
        print("The response of MetadataCalculationApi->calculate_alpine_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_alpine_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **calculate_bower_index**
> str calculate_bower_index(repo_key)

Calculate Bower Index

Recalculates the index for a Bower repository.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Calculate Bower Index
        api_response = api_instance.calculate_bower_index(repo_key)
        print("The response of MetadataCalculationApi->calculate_bower_index:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_bower_index: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **calculate_cached_remote_debian_repository_coordinates**
> str calculate_cached_remote_debian_repository_coordinates(repo_key)

Calculate Cached Remote Debian Repository Coordinates

Calculates/recalculates the Debian packages coordinates. Supported by remote-cache repositories only.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Calculate Cached Remote Debian Repository Coordinates
        api_response = api_instance.calculate_cached_remote_debian_repository_coordinates(repo_key)
        print("The response of MetadataCalculationApi->calculate_cached_remote_debian_repository_coordinates:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_cached_remote_debian_repository_coordinates: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **calculate_cargo_repository_metadata**
> str calculate_cargo_repository_metadata(repo_key, var_async=var_async)

Calculate Cargo Repository Metadata

Calculates/recalculates the Cargo packages and release metadata for this repository. The calculation can be synchronous (the default) or asynchronous. Supported for local and remote repositories.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    var_async = True # bool | Whether to run asynchronously (optional)

    try:
        # Calculate Cargo Repository Metadata
        api_response = api_instance.calculate_cargo_repository_metadata(repo_key, var_async=var_async)
        print("The response of MetadataCalculationApi->calculate_cargo_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_cargo_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **var_async** | **bool**| Whether to run asynchronously | [optional] 

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

# **calculate_cocoa_pods_index**
> str calculate_cocoa_pods_index(repo_key)

Calculate CocoaPods Index

Calculates a CocoaPods index for the specified repository.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Calculate CocoaPods Index
        api_response = api_instance.calculate_cocoa_pods_index(repo_key)
        print("The response of MetadataCalculationApi->calculate_cocoa_pods_index:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_cocoa_pods_index: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **calculate_conan_repository_metadata**
> str calculate_conan_repository_metadata(repo_key, var_async=var_async)

Calculate Conan Repository Metadata

Calculates/recalculates the Conan packages and release metadata for this repository. The calculation can be synchronous (the default) or asynchronous. Supported for local repositories only.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    var_async = True # bool | Whether to run asynchronously (optional)

    try:
        # Calculate Conan Repository Metadata
        api_response = api_instance.calculate_conan_repository_metadata(repo_key, var_async=var_async)
        print("The response of MetadataCalculationApi->calculate_conan_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_conan_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **var_async** | **bool**| Whether to run asynchronously | [optional] 

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

# **calculate_conda_repository_metadata**
> str calculate_conda_repository_metadata(repo_key, var_async=var_async)

Calculate Conda Repository Metadata

Calculates/recalculates the Conda packages and release metadata for this repository. The calculation can be synchronous (the default) or asynchronous. Supported for local repositories only.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    var_async = True # bool | Whether to run asynchronously (optional)

    try:
        # Calculate Conda Repository Metadata
        api_response = api_instance.calculate_conda_repository_metadata(repo_key, var_async=var_async)
        print("The response of MetadataCalculationApi->calculate_conda_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_conda_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **var_async** | **bool**| Whether to run asynchronously | [optional] 

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

# **calculate_cran_repository_metadata**
> str calculate_cran_repository_metadata(repo_key, var_async=var_async)

Calculate CRAN Repository Metadata

Calculates/recalculates the Packages and Release metadata for this repository, based on the CRAN packages in it. The calculation can be synchronous (the default) or asynchronous. Supported by local repositories only.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    var_async = True # bool | Whether to run asynchronously (optional)

    try:
        # Calculate CRAN Repository Metadata
        api_response = api_instance.calculate_cran_repository_metadata(repo_key, var_async=var_async)
        print("The response of MetadataCalculationApi->calculate_cran_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_cran_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **var_async** | **bool**| Whether to run asynchronously | [optional] 

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

# **calculate_debian_repository_metadata**
> str calculate_debian_repository_metadata(repo_key, var_async=var_async, write_props=write_props)

Calculate Debian Repository Metadata

Calculates/recalculates the Packages and Release metadata for this repository, based on the Debian packages in it. Calculation can be synchronous (the default) or asynchronous. Supported by local repositories only.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    var_async = True # bool | Whether to run asynchronously (optional)
    write_props = 56 # int | Whether to write properties (0 or 1) (optional)

    try:
        # Calculate Debian Repository Metadata
        api_response = api_instance.calculate_debian_repository_metadata(repo_key, var_async=var_async, write_props=write_props)
        print("The response of MetadataCalculationApi->calculate_debian_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_debian_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **var_async** | **bool**| Whether to run asynchronously | [optional] 
 **write_props** | **int**| Whether to write properties (0 or 1) | [optional] 

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

# **calculate_helm_chart_index**
> str calculate_helm_chart_index(repo_key)

Calculate Helm Chart Index

Calculates Helm chart index on the specified path (local and Federated repositories only).

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Calculate Helm Chart Index
        api_response = api_instance.calculate_helm_chart_index(repo_key)
        print("The response of MetadataCalculationApi->calculate_helm_chart_index:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_helm_chart_index: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **calculate_maven_index**
> str calculate_maven_index(repos=repos, force=force)

Calculate Maven Index

Calculates/caches a Maven index for the specified repositories. For a virtual repository specify all underlying repositories that you want the aggregated index to include.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repos = 'repos_example' # str | Comma-separated list of repository names (optional)
    force = 56 # int | Force calculation (0 or 1) (optional)

    try:
        # Calculate Maven Index
        api_response = api_instance.calculate_maven_index(repos=repos, force=force)
        print("The response of MetadataCalculationApi->calculate_maven_index:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_maven_index: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repos** | **str**| Comma-separated list of repository names | [optional] 
 **force** | **int**| Force calculation (0 or 1) | [optional] 

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

# **calculate_maven_metadata**
> str calculate_maven_metadata(repo_key, folder_path, none_recursive=none_recursive)

Calculate Maven Metadata

Calculates Maven metadata on the specified path (for local repositories only). A POM file must exist in the repository for the calculation to succeed.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    folder_path = 'folder_path_example' # str | The folder path
    none_recursive = True # bool | Whether to calculate recursively (default false) (optional)

    try:
        # Calculate Maven Metadata
        api_response = api_instance.calculate_maven_metadata(repo_key, folder_path, none_recursive=none_recursive)
        print("The response of MetadataCalculationApi->calculate_maven_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_maven_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **folder_path** | **str**| The folder path | 
 **none_recursive** | **bool**| Whether to calculate recursively (default false) | [optional] 

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

# **calculate_npm_repository_metadata**
> str calculate_npm_repository_metadata(repo_key)

Calculate Npm Repository Metadata

Recalculates the npm packages indexes for this repository. Supported by local repositories.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Calculate Npm Repository Metadata
        api_response = api_instance.calculate_npm_repository_metadata(repo_key)
        print("The response of MetadataCalculationApi->calculate_npm_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_npm_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **calculate_nu_get_repository_metadata**
> str calculate_nu_get_repository_metadata(repo_key)

Calculate NuGet Repository Metadata

Recalculates all the NuGet packages for this repository (local/cache/virtual), and re-annotate the NuGet properties for each NuGet package according to its internal nuspec file. Supported by local, local-cache, remote and virtual repositories.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Calculate NuGet Repository Metadata
        api_response = api_instance.calculate_nu_get_repository_metadata(repo_key)
        print("The response of MetadataCalculationApi->calculate_nu_get_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_nu_get_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **calculate_opkg_repository_metadata**
> str calculate_opkg_repository_metadata(repo_key, var_async=var_async, write_props=write_props)

Calculate Opkg Repository Metadata

Calculates/recalculates the Packages and Release metadata for this repository, based on the ipk packages in it (in each feed location). Calculation can be synchronous (the default) or asynchronous. Supported by local repositories only.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    var_async = True # bool | Whether to run asynchronously (optional)
    write_props = 56 # int | Whether to write properties (0 or 1) (optional)

    try:
        # Calculate Opkg Repository Metadata
        api_response = api_instance.calculate_opkg_repository_metadata(repo_key, var_async=var_async, write_props=write_props)
        print("The response of MetadataCalculationApi->calculate_opkg_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_opkg_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **var_async** | **bool**| Whether to run asynchronously | [optional] 
 **write_props** | **int**| Whether to write properties (0 or 1) | [optional] 

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

# **calculate_pub_repository_metadata**
> str calculate_pub_repository_metadata(repo_key, var_async=var_async)

Calculate Pub Repository Metadata

Calculates/recalculates the Dart/Flutter packages and release metadata for this repository. The calculation is asynchronous. Supported for local and remote repositories.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    var_async = True # bool | Whether to run asynchronously (optional)

    try:
        # Calculate Pub Repository Metadata
        api_response = api_instance.calculate_pub_repository_metadata(repo_key, var_async=var_async)
        print("The response of MetadataCalculationApi->calculate_pub_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_pub_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **var_async** | **bool**| Whether to run asynchronously | [optional] 

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

# **calculate_pypi_repository_metadata**
> str calculate_pypi_repository_metadata(repo_key, var_async=var_async)

Calculate PyPI Repository Metadata

Calculates/recalculates the PyPI packages and repository indexes from the artifact metadata in this repository. The calculation can be synchronous (the default) or asynchronous. Supported for local repositories only.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    var_async = True # bool | Whether to run asynchronously (optional)

    try:
        # Calculate PyPI Repository Metadata
        api_response = api_instance.calculate_pypi_repository_metadata(repo_key, var_async=var_async)
        print("The response of MetadataCalculationApi->calculate_pypi_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_pypi_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **var_async** | **bool**| Whether to run asynchronously | [optional] 

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

# **calculate_ruby_gems_index**
> str calculate_ruby_gems_index(repo_key)

Calculate RubyGems Index

Calculates RubyGems index on the specified path.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Calculate RubyGems Index
        api_response = api_instance.calculate_ruby_gems_index(repo_key)
        print("The response of MetadataCalculationApi->calculate_ruby_gems_index:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_ruby_gems_index: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **calculate_swift_index**
> str calculate_swift_index(repo_key)

Calculate Swift Index

Calculates a Swift index for the specified repository.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Calculate Swift Index
        api_response = api_instance.calculate_swift_index(repo_key)
        print("The response of MetadataCalculationApi->calculate_swift_index:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_swift_index: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **calculate_terraform_index**
> str calculate_terraform_index(repo_key)

Calculate Terraform Index

Calculates Terraform Modules or Providers index for the specified repository.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Calculate Terraform Index
        api_response = api_instance.calculate_terraform_index(repo_key)
        print("The response of MetadataCalculationApi->calculate_terraform_index:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_terraform_index: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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

# **calculate_yum_repository_metadata**
> str calculate_yum_repository_metadata(repo_key, path=path, var_async=var_async)

Calculate YUM Repository Metadata

For Local repositories calculates/recalculates the YUM metadata for this repository, based on the RPM package currently hosted in the repository. Supported by local, virtual, and Federated repositories. Calculation can be synchronous (the default) or asynchronous.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    path = 'path_example' # str | Path to repodata dir (for virtual repositories) (optional)
    var_async = True # bool | Whether to run asynchronously (optional)

    try:
        # Calculate YUM Repository Metadata
        api_response = api_instance.calculate_yum_repository_metadata(repo_key, path=path, var_async=var_async)
        print("The response of MetadataCalculationApi->calculate_yum_repository_metadata:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->calculate_yum_repository_metadata: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **path** | **str**| Path to repodata dir (for virtual repositories) | [optional] 
 **var_async** | **bool**| Whether to run asynchronously | [optional] 

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

# **create_debian_snapshot**
> str create_debian_snapshot(repo_key, create_debian_snapshot_request, var_async=var_async)

Create Debian Snapshot

Creates Debian Snapshots in the Debian repository in Artifactory.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.create_debian_snapshot_request import CreateDebianSnapshotRequest
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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    create_debian_snapshot_request = jfrog_client.CreateDebianSnapshotRequest() # CreateDebianSnapshotRequest | 
    var_async = 56 # int | Whether to run asynchronously (0 or 1) (optional)

    try:
        # Create Debian Snapshot
        api_response = api_instance.create_debian_snapshot(repo_key, create_debian_snapshot_request, var_async=var_async)
        print("The response of MetadataCalculationApi->create_debian_snapshot:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->create_debian_snapshot: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **create_debian_snapshot_request** | [**CreateDebianSnapshotRequest**](CreateDebianSnapshotRequest.md)|  | 
 **var_async** | **int**| Whether to run asynchronously (0 or 1) | [optional] 

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
**200** | Success |  -  |
**400** | Bad Request |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_maven_pom_file**
> generate_maven_pom_file(repo_key, jar_file_path)

Generate Maven POM File

Generates a Maven POM file from an internal Jar or a default POM file.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    jar_file_path = 'jar_file_path_example' # str | The JAR file path

    try:
        # Generate Maven POM File
        api_instance.generate_maven_pom_file(repo_key, jar_file_path)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->generate_maven_pom_file: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **jar_file_path** | **str**| The JAR file path | 

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
**200** | Success |  -  |
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pypi_latest_package_version_metadata_in_json**
> object get_pypi_latest_package_version_metadata_in_json(repository, package)

Get PyPI Latest Package Version Metadata in JSON

Retrieves metadata in JSON format for the latest PyPI package version.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repository = 'repository_example' # str | The name of the repository
    package = 'package_example' # str | The name of the package

    try:
        # Get PyPI Latest Package Version Metadata in JSON
        api_response = api_instance.get_pypi_latest_package_version_metadata_in_json(repository, package)
        print("The response of MetadataCalculationApi->get_pypi_latest_package_version_metadata_in_json:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->get_pypi_latest_package_version_metadata_in_json: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository** | **str**| The name of the repository | 
 **package** | **str**| The name of the package | 

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
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pypi_package_version_metadata_in_json**
> object get_pypi_package_version_metadata_in_json(repository, package, version)

Get PyPI Package Version Metadata in JSON

Retrieves metadata in JSON format for a specific PyPI package version.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repository = 'repository_example' # str | The name of the repository
    package = 'package_example' # str | The name of the package
    version = 'version_example' # str | The version of the package

    try:
        # Get PyPI Package Version Metadata in JSON
        api_response = api_instance.get_pypi_package_version_metadata_in_json(repository, package, version)
        print("The response of MetadataCalculationApi->get_pypi_package_version_metadata_in_json:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->get_pypi_package_version_metadata_in_json: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repository** | **str**| The name of the repository | 
 **package** | **str**| The name of the package | 
 **version** | **str**| The version of the package | 

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
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**404** | Not Found - The specified resource was not found. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **helm_charts_partial_re_indexing**
> str helm_charts_partial_re_indexing(repo_key, path_for_partial_reindex)

Helm Charts Partial Re-Indexing

Recalculates partial indexing for the helm repository.

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key
    path_for_partial_reindex = 'path_for_partial_reindex_example' # str | The path for partial reindex

    try:
        # Helm Charts Partial Re-Indexing
        api_response = api_instance.helm_charts_partial_re_indexing(repo_key, path_for_partial_reindex)
        print("The response of MetadataCalculationApi->helm_charts_partial_re_indexing:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->helm_charts_partial_re_indexing: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 
 **path_for_partial_reindex** | **str**| The path for partial reindex | 

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

# **move_cran_archives**
> object move_cran_archives(repo_key)

Move CRAN Archives

Moves the existing archives from the wrong location to the correct location (if the system property is enabled).

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
    api_instance = jfrog_client.MetadataCalculationApi(api_client)
    repo_key = 'repo_key_example' # str | The repository key

    try:
        # Move CRAN Archives
        api_response = api_instance.move_cran_archives(repo_key)
        print("The response of MetadataCalculationApi->move_cran_archives:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataCalculationApi->move_cran_archives: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| The repository key | 

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
**401** | Bad Credentials - The provided authentication is invalid. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions to perform this action. |  -  |
**500** | Internal Server Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

