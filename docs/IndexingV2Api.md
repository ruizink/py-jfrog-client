# jfrog_client.IndexingV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scan_now_indexing_v2_openapi**](IndexingV2Api.md#scan_now_indexing_v2_openapi) | **POST** /xray/api/v2/index | Scan Now


# **scan_now_indexing_v2_openapi**
> ScanNowIndexingV2Openapi200Response scan_now_indexing_v2_openapi(scan_now_indexing_v2_openapi_request)

Scan Now

Enables you to index resources on-demand.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.scan_now_indexing_v2_openapi200_response import ScanNowIndexingV2Openapi200Response
from jfrog_client.models.scan_now_indexing_v2_openapi_request import ScanNowIndexingV2OpenapiRequest
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
    api_instance = jfrog_client.IndexingV2Api(api_client)
    scan_now_indexing_v2_openapi_request = jfrog_client.ScanNowIndexingV2OpenapiRequest() # ScanNowIndexingV2OpenapiRequest | 

    try:
        # Scan Now
        api_response = api_instance.scan_now_indexing_v2_openapi(scan_now_indexing_v2_openapi_request)
        print("The response of IndexingV2Api->scan_now_indexing_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IndexingV2Api->scan_now_indexing_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scan_now_indexing_v2_openapi_request** | [**ScanNowIndexingV2OpenapiRequest**](ScanNowIndexingV2OpenapiRequest.md)|  | 

### Return type

[**ScanNowIndexingV2Openapi200Response**](ScanNowIndexingV2Openapi200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

