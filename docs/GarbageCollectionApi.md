# jfrog_client.GarbageCollectionApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**run_garbage_collection**](GarbageCollectionApi.md#run_garbage_collection) | **POST** /artifactory/api/system/storage/gc | Run Garbage Collection


# **run_garbage_collection**
> run_garbage_collection()

Run Garbage Collection

Deletes from the Trash Can artifacts with a retention time that has expired and deletes orphan binaries when the full garbage collection cycle runs. The full garbage collection runs after a certain number of iterations and this number can be changed by the user. The default value is 20.

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
    api_instance = jfrog_client.GarbageCollectionApi(api_client)

    try:
        # Run Garbage Collection
        api_instance.run_garbage_collection()
    except Exception as e:
        print("Exception when calling GarbageCollectionApi->run_garbage_collection: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

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
**200** | Garbage collection executed successfully |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have admin permissions. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

