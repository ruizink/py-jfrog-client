# jfrog_client.ComponentsV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_component_details_v1_deprecated_components_v2_openapi**](ComponentsV2Api.md#export_component_details_v1_deprecated_components_v2_openapi) | **POST** /xray/api/v2/component/exportDetails | Export Component Details V2
[**get_all_the_packages_by_watch_name**](ComponentsV2Api.md#get_all_the_packages_by_watch_name) | **GET** /xray/api/v2/component/data/{name} | Get Component List Per Watch


# **export_component_details_v1_deprecated_components_v2_openapi**
> bytes export_component_details_v1_deprecated_components_v2_openapi(export_component_details_v1_deprecated_components_v2_openapi_request)

Export Component Details V2

Export component security details (vulnerabilities, violations, licenses, operational risks) to various formats. Returns a ZIP file containing the exported data. Requires Read permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.export_component_details_v1_deprecated_components_v2_openapi_request import ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest
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
    api_instance = jfrog_client.ComponentsV2Api(api_client)
    export_component_details_v1_deprecated_components_v2_openapi_request = jfrog_client.ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest() # ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest | 

    try:
        # Export Component Details V2
        api_response = api_instance.export_component_details_v1_deprecated_components_v2_openapi(export_component_details_v1_deprecated_components_v2_openapi_request)
        print("The response of ComponentsV2Api->export_component_details_v1_deprecated_components_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ComponentsV2Api->export_component_details_v1_deprecated_components_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **export_component_details_v1_deprecated_components_v2_openapi_request** | [**ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest**](ExportComponentDetailsV1DeprecatedComponentsV2OpenapiRequest.md)|  | 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | ZIP file containing the exported component details. |  -  |
**400** | Invalid request payload. |  -  |
**500** | Failed to export component details. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_all_the_packages_by_watch_name**
> List[GetAllThePackagesByWatchName200ResponseInner] get_all_the_packages_by_watch_name(name, limit=limit, offset=offset, var_from=var_from, to=to)

Get Component List Per Watch

Returns package details for all packages in repositories watched by the specified watch. Requires Reports Manager permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_all_the_packages_by_watch_name200_response_inner import GetAllThePackagesByWatchName200ResponseInner
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
    api_instance = jfrog_client.ComponentsV2Api(api_client)
    name = 'name_example' # str | The watch name to retrieve component data for.
    limit = 1000 # int | Maximum number of results to return (default 1000). (optional) (default to 1000)
    offset = 0 # int | Number of results to skip for pagination (default 0). (optional) (default to 0)
    var_from = 'var_from_example' # str | Start date-time for filtering components (ISO 8601 format). (optional)
    to = 'to_example' # str | End date-time for filtering components (ISO 8601 format). (optional)

    try:
        # Get Component List Per Watch
        api_response = api_instance.get_all_the_packages_by_watch_name(name, limit=limit, offset=offset, var_from=var_from, to=to)
        print("The response of ComponentsV2Api->get_all_the_packages_by_watch_name:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ComponentsV2Api->get_all_the_packages_by_watch_name: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The watch name to retrieve component data for. | 
 **limit** | **int**| Maximum number of results to return (default 1000). | [optional] [default to 1000]
 **offset** | **int**| Number of results to skip for pagination (default 0). | [optional] [default to 0]
 **var_from** | **str**| Start date-time for filtering components (ISO 8601 format). | [optional] 
 **to** | **str**| End date-time for filtering components (ISO 8601 format). | [optional] 

### Return type

[**List[GetAllThePackagesByWatchName200ResponseInner]**](GetAllThePackagesByWatchName200ResponseInner.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Streamed JSON array of package details. |  -  |
**400** | Invalid request parameters or watch does not include repository resources. |  -  |
**404** | Watch not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

