# jfrog_client.ComponentsV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_component_by_name**](ComponentsV1Api.md#get_component_by_name) | **GET** /xray/api/v1/component/{name} | Find Component by Name


# **get_component_by_name**
> GetComponentByName200Response get_component_by_name(name)

Find Component by Name

Search for a component by name. This API is applicable only for components synced from the JFrog Global database to Xray. Requires Read permission.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_component_by_name200_response import GetComponentByName200Response
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
    api_instance = jfrog_client.ComponentsV1Api(api_client)
    name = 'name_example' # str | The component name to search for.

    try:
        # Find Component by Name
        api_response = api_instance.get_component_by_name(name)
        print("The response of ComponentsV1Api->get_component_by_name:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ComponentsV1Api->get_component_by_name: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The component name to search for. | 

### Return type

[**GetComponentByName200Response**](GetComponentByName200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Component details returned successfully. |  -  |
**400** | Missing component name parameter. |  -  |
**404** | Component not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

