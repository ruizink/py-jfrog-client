# jfrog_client.IndexingV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**force_reindex**](IndexingV1Api.md#force_reindex) | **POST** /xray/api/v1/forceReindex | Force Reindex


# **force_reindex**
> ForceReindex200Response force_reindex(indexing_force_reindex_request)

Force Reindex

Triggers a reindex of specified artifacts and/or builds. Use this to reindex existing resources that may have missing component data. The total number of entities (artifacts + builds) cannot exceed the configured maximum (default 1000).

Requires Admin permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.force_reindex200_response import ForceReindex200Response
from jfrog_client.models.indexing_force_reindex_request import IndexingForceReindexRequest
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
    api_instance = jfrog_client.IndexingV1Api(api_client)
    indexing_force_reindex_request = jfrog_client.IndexingForceReindexRequest() # IndexingForceReindexRequest | 

    try:
        # Force Reindex
        api_response = api_instance.force_reindex(indexing_force_reindex_request)
        print("The response of IndexingV1Api->force_reindex:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IndexingV1Api->force_reindex: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **indexing_force_reindex_request** | [**IndexingForceReindexRequest**](IndexingForceReindexRequest.md)|  | 

### Return type

[**ForceReindex200Response**](ForceReindex200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Reindex completed. Check sent_to_reindex for successfully queued items. If failed_send_to_reindex is present, some items could not be processed.  |  -  |
**400** | Too many entities to reindex, or failed to get artifactory data.  |  -  |
**415** | Failed to parse the request body. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

