# jfrog_client.DistributionApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**distribute_artifact**](DistributionApi.md#distribute_artifact) | **POST** /artifactory/api/distribute | Distribute Artifact


# **distribute_artifact**
> distribute_artifact(distribute_artifact_request)

Distribute Artifact

Deploys artifacts from Artifactory to Bintray, and creates an entry in the corresponding Artifactory distribution repository specified. Requires Artifactory Pro.

### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.distribute_artifact_request import DistributeArtifactRequest
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
    api_instance = jfrog_client.DistributionApi(api_client)
    distribute_artifact_request = jfrog_client.DistributeArtifactRequest() # DistributeArtifactRequest | Distribution request

    try:
        # Distribute Artifact
        api_instance.distribute_artifact(distribute_artifact_request)
    except Exception as e:
        print("Exception when calling DistributionApi->distribute_artifact: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **distribute_artifact_request** | [**DistributeArtifactRequest**](DistributeArtifactRequest.md)| Distribution request | 

### Return type

void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Artifact distributed successfully |  -  |
**400** | Bad Request - The request body is malformed or invalid. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have the necessary permissions. |  -  |
**404** | Not Found - The specified artifact or distribution repository does not exist. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

