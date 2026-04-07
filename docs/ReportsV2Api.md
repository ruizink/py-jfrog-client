# jfrog_client.ReportsV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_vulnerabilities_report_content_reports_v2_openapi**](ReportsV2Api.md#get_vulnerabilities_report_content_reports_v2_openapi) | **POST** /xray/api/v2/reports/vulnerabilities/{id} | Get Vulnerabilities Report Content (V2)


# **get_vulnerabilities_report_content_reports_v2_openapi**
> ReportsVulnerabilityContentResponse get_vulnerabilities_report_content_reports_v2_openapi(id, num_of_rows, page_num, search=search, direction=direction, order_by=order_by, reports_vulnerability_content_request_body=reports_vulnerability_content_request_body)

Get Vulnerabilities Report Content (V2)

Retrieves vulnerability report data by report ID using the enhanced V2 format. This version includes additional fields such as applicability analysis results, JFrog severity ratings, CWE identifiers, and multi-CVE support per vulnerability row.

Results are paginated; `num_of_rows` and `page_num` are required. Use the optional `search` query parameter to filter results across CVEs, impacted artifacts, vulnerable components, paths, and project keys. An optional request body may include advanced filters (e.g. severity, applicability_result).

Requires a valid user with Reports Manager permission.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.reports_vulnerability_content_request_body import ReportsVulnerabilityContentRequestBody
from jfrog_client.models.reports_vulnerability_content_response import ReportsVulnerabilityContentResponse
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
    api_instance = jfrog_client.ReportsV2Api(api_client)
    id = 'id_example' # str | The unique identifier of the vulnerability report.
    num_of_rows = 56 # int | Number of rows per page.
    page_num = 56 # int | Page number (1-based).
    search = 'search_example' # str | Search term to filter results across CVEs, impacted artifacts, vulnerable components, paths, and project keys. (optional)
    direction = 'direction_example' # str | Sort direction: asc or desc. Default: asc. (optional)
    order_by = 'order_by_example' # str | Field to sort by. (optional)
    reports_vulnerability_content_request_body = jfrog_client.ReportsVulnerabilityContentRequestBody() # ReportsVulnerabilityContentRequestBody |  (optional)

    try:
        # Get Vulnerabilities Report Content (V2)
        api_response = api_instance.get_vulnerabilities_report_content_reports_v2_openapi(id, num_of_rows, page_num, search=search, direction=direction, order_by=order_by, reports_vulnerability_content_request_body=reports_vulnerability_content_request_body)
        print("The response of ReportsV2Api->get_vulnerabilities_report_content_reports_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV2Api->get_vulnerabilities_report_content_reports_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the vulnerability report. | 
 **num_of_rows** | **int**| Number of rows per page. | 
 **page_num** | **int**| Page number (1-based). | 
 **search** | **str**| Search term to filter results across CVEs, impacted artifacts, vulnerable components, paths, and project keys. | [optional] 
 **direction** | **str**| Sort direction: asc or desc. Default: asc. | [optional] 
 **order_by** | **str**| Field to sort by. | [optional] 
 **reports_vulnerability_content_request_body** | [**ReportsVulnerabilityContentRequestBody**](ReportsVulnerabilityContentRequestBody.md)|  | [optional] 

### Return type

[**ReportsVulnerabilityContentResponse**](ReportsVulnerabilityContentResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - Report data retrieved successfully |  -  |
**400** | Bad request - Invalid parameters or filters |  -  |
**403** | Permission denied - Insufficient permissions |  -  |
**404** | Not found - Report not found or not accessible |  -  |
**500** | Internal server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

