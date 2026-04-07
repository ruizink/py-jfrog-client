# jfrog_client.SearchV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**search_resources_by_vulnerability_and_package**](SearchV2Api.md#search_resources_by_vulnerability_and_package) | **GET** /xray/api/v2/search/impactedResources | Search Resources by Vulnerability and Package


# **search_resources_by_vulnerability_and_package**
> SearchResourcesByVulnerabilityAndPackage200Response search_resources_by_vulnerability_and_package(request_body, limit=limit, last_key=last_key, vulnerability=vulnerability, name=name, type=type, version=version, namespace=namespace, ecosystem=ecosystem)

Search Resources by Vulnerability and Package

Search all resources (Artifacts, Builds, Release Bundles, etc.) that include a specific package or are impacted by a specific vulnerability (CVE or XRAY ID). Supports three search modes:

- **Mode 1 - By Vulnerability**: `vulnerability` is required.
- **Mode 2 - By Package Version**: `name` and `type` are required; `version` is optional.
- **Mode 3 - By Package (all versions)**: `name` and `type` are required; omit `version`.

**SBOM Requirement**: This capability depends on the SBOM Service. Self-Hosted users must enable the SBOM feature and complete the SBOM migration. If SBOM is disabled, the API returns 403.

**Pagination**: Use `last_key` from the response to fetch subsequent pages; an empty `last_key` indicates no further results. Limit defaults to 1000, maximum 10000.

Requires the Reports Manager permission. Since Xray 3.131.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.search_resources_by_vulnerability_and_package200_response import SearchResourcesByVulnerabilityAndPackage200Response
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
    api_instance = jfrog_client.SearchV2Api(api_client)
    request_body = None # Dict[str, object] | 
    limit = 56 # int | Maximum number of resources to return. Default: 1000. Maximum: 10000. (optional)
    last_key = 'last_key_example' # str | Pagination cursor from the previous response. Include this value to retrieve the next page. (optional)
    vulnerability = 'vulnerability_example' # str | Vulnerability ID in CVE format (CVE-YYYY-NNNNN) or XRAY format (XRAY-N). Required for Mode 1. (optional)
    name = 'name_example' # str | Package name. Required for Mode 2 and Mode 3. (optional)
    type = 'type_example' # str | Package type (e.g., npm, maven, pypi). Required for Mode 2 and Mode 3. (optional)
    version = 'version_example' # str | Package version. When provided with name and type, searches for a specific version. (optional)
    namespace = 'namespace_example' # str | Package namespace. Default: public. (optional)
    ecosystem = 'ecosystem_example' # str | Package ecosystem. Default: generic. (optional)

    try:
        # Search Resources by Vulnerability and Package
        api_response = api_instance.search_resources_by_vulnerability_and_package(request_body, limit=limit, last_key=last_key, vulnerability=vulnerability, name=name, type=type, version=version, namespace=namespace, ecosystem=ecosystem)
        print("The response of SearchV2Api->search_resources_by_vulnerability_and_package:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SearchV2Api->search_resources_by_vulnerability_and_package: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **request_body** | [**Dict[str, object]**](object.md)|  | 
 **limit** | **int**| Maximum number of resources to return. Default: 1000. Maximum: 10000. | [optional] 
 **last_key** | **str**| Pagination cursor from the previous response. Include this value to retrieve the next page. | [optional] 
 **vulnerability** | **str**| Vulnerability ID in CVE format (CVE-YYYY-NNNNN) or XRAY format (XRAY-N). Required for Mode 1. | [optional] 
 **name** | **str**| Package name. Required for Mode 2 and Mode 3. | [optional] 
 **type** | **str**| Package type (e.g., npm, maven, pypi). Required for Mode 2 and Mode 3. | [optional] 
 **version** | **str**| Package version. When provided with name and type, searches for a specific version. | [optional] 
 **namespace** | **str**| Package namespace. Default: public. | [optional] 
 **ecosystem** | **str**| Package ecosystem. Default: generic. | [optional] 

### Return type

[**SearchResourcesByVulnerabilityAndPackage200Response**](SearchResourcesByVulnerabilityAndPackage200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Search completed successfully. |  -  |
**400** | Missing required parameters or invalid values. |  -  |
**403** | Permission denied or SBOM feature is disabled. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

