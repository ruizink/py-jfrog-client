# jfrog_client.ReportsV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**abort**](ReportsV1Api.md#abort) | **POST** /xray/api/v1/reports/abort/{id} | Abort Report Generation
[**delete**](ReportsV1Api.md#delete) | **DELETE** /xray/api/v1/reports/{id} | Delete Report
[**export**](ReportsV1Api.md#export) | **GET** /xray/api/v1/reports/export/{id} | Export Report
[**generate_cve_search_report**](ReportsV1Api.md#generate_cve_search_report) | **POST** /xray/api/v1/reports/cveSearch | Generate CVE Search Report
[**generate_due_diligence_report**](ReportsV1Api.md#generate_due_diligence_report) | **POST** /xray/api/v1/reports/licenses | Generate Due Diligence Report
[**generate_exposures_report**](ReportsV1Api.md#generate_exposures_report) | **POST** /xray/api/v1/reports/exposures | Generate Exposures Report
[**generate_exposures_report_by_id**](ReportsV1Api.md#generate_exposures_report_by_id) | **POST** /xray/api/v1/reports/exposures/{id} | Get Exposures Report Content
[**generate_operational_risk_report**](ReportsV1Api.md#generate_operational_risk_report) | **POST** /xray/api/v1/reports/operationalRisks | Generate Operational Risk Report
[**generate_violations_report**](ReportsV1Api.md#generate_violations_report) | **POST** /xray/api/v1/reports/violations | Generate Violations Report
[**generate_vulnerabilities_report**](ReportsV1Api.md#generate_vulnerabilities_report) | **POST** /xray/api/v1/reports/vulnerabilities | Generate Vulnerabilities Report
[**get_cve_search_report_details_by_id**](ReportsV1Api.md#get_cve_search_report_details_by_id) | **POST** /xray/api/v1/reports/cveSearch/{id} | Get CVE Search Report Details by ID
[**get_cve_search_reports_list**](ReportsV1Api.md#get_cve_search_reports_list) | **POST** /xray/api/v1/reports/cveSearchList | Get CVE Search Reports List
[**get_due_diligence_report_content**](ReportsV1Api.md#get_due_diligence_report_content) | **POST** /xray/api/v1/reports/licenses/{id} | Get Due Diligence Report Content
[**get_operational_risk_report_content**](ReportsV1Api.md#get_operational_risk_report_content) | **POST** /xray/api/v1/reports/operationalRisks/{id} | Get Operational Risk Report Content
[**get_report_details_by_id**](ReportsV1Api.md#get_report_details_by_id) | **GET** /xray/api/v1/reports/{id} | Get Report Details By ID
[**get_reports_list**](ReportsV1Api.md#get_reports_list) | **POST** /xray/api/v1/reports | Get Reports List
[**get_violations_report_content**](ReportsV1Api.md#get_violations_report_content) | **POST** /xray/api/v1/reports/violations/{id} | Get Violations Report Content
[**get_vulnerabilities_report_content**](ReportsV1Api.md#get_vulnerabilities_report_content) | **POST** /xray/api/v1/reports/vulnerabilities/{id} | Get Vulnerabilities Report Content


# **abort**
> object abort(id, project_key=project_key, request_body=request_body)

Abort Report Generation

Aborts a report that is currently being generated. Use the report ID returned from a generate report request.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can abort a report in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.8.


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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    id = 'id_example' # str | The unique identifier of the report to abort.
    project_key = 'project_key_example' # str | Project scope (when Projects are enabled). (optional)
    request_body = None # Dict[str, object] |  (optional)

    try:
        # Abort Report Generation
        api_response = api_instance.abort(id, project_key=project_key, request_body=request_body)
        print("The response of ReportsV1Api->abort:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->abort: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the report to abort. | 
 **project_key** | **str**| Project scope (when Projects are enabled). | [optional] 
 **request_body** | [**Dict[str, object]**](object.md)|  | [optional] 

### Return type

**object**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Report generation aborted successfully |  -  |
**404** | Report not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete**
> str delete(id, project_key=project_key)

Delete Report

Deletes a report by its unique ID. Once deleted, the report and its data are permanently removed.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can delete a report in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.8.


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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    id = 'id_example' # str | The unique identifier of the report to delete.
    project_key = 'project_key_example' # str | Project scope (when Projects are enabled). (optional)

    try:
        # Delete Report
        api_response = api_instance.delete(id, project_key=project_key)
        print("The response of ReportsV1Api->delete:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->delete: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the report to delete. | 
 **project_key** | **str**| Project scope (when Projects are enabled). | [optional] 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Report deleted successfully |  -  |
**404** | Report not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **export**
> bytes export(id, file_name, format, project_key=project_key)

Export Report

Exports a report and its data to a PDF, JSON, or CSV file. The response is a ZIP file stream containing the exported file with the naming convention `<file_name>.pdf|json|csv`. The report ID can be retrieved using the Get Reports List endpoint.

Two mandatory query parameters must be provided: `file_name` (desired file name without suffix) and `format` (pdf, json, or csv).

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can export a report in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.8.


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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    id = 'id_example' # str | The unique identifier of the report to export.
    file_name = 'file_name_example' # str | The desired file name for download (without a suffix).
    format = 'format_example' # str | Export format: pdf, json, or csv.
    project_key = 'project_key_example' # str | Project scope (when Projects are enabled). (optional)

    try:
        # Export Report
        api_response = api_instance.export(id, file_name, format, project_key=project_key)
        print("The response of ReportsV1Api->export:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->export: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the report to export. | 
 **file_name** | **str**| The desired file name for download (without a suffix). | 
 **format** | **str**| Export format: pdf, json, or csv. | 
 **project_key** | **str**| Project scope (when Projects are enabled). | [optional] 

### Return type

**bytes**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/zip, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | A ZIP file stream containing the exported report. |  -  |
**404** | Report not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_cve_search_report**
> ReportsReportIdStatusResponse generate_cve_search_report(reports_cve_search_report_request)

Generate CVE Search Report

Generates a CVE Search Report with data defined by scope and filters. This request starts the report generation process which runs in the background. The search only works on indexed resources. The report limit is up to 5 reports; any new reports beyond the limit will delete previously generated reports.

The request must have exactly one resource type (repositories, builds, release bundles, or projects).

Requires a user with the Manage Reports role. Since Xray 3.73.x.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.reports_cve_search_report_request import ReportsCveSearchReportRequest
from jfrog_client.models.reports_report_id_status_response import ReportsReportIdStatusResponse
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    reports_cve_search_report_request = jfrog_client.ReportsCveSearchReportRequest() # ReportsCveSearchReportRequest | 

    try:
        # Generate CVE Search Report
        api_response = api_instance.generate_cve_search_report(reports_cve_search_report_request)
        print("The response of ReportsV1Api->generate_cve_search_report:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->generate_cve_search_report: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reports_cve_search_report_request** | [**ReportsCveSearchReportRequest**](ReportsCveSearchReportRequest.md)|  | 

### Return type

[**ReportsReportIdStatusResponse**](ReportsReportIdStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Report generation started. Use the returned report_id to check status or retrieve content.  |  -  |
**201** | Report created (oldest report was overridden due to limit). |  -  |
**400** | Bad request - missing or invalid parameters |  -  |
**404** | Version not found. |  -  |
**412** | Report feature is disabled. |  -  |
**429** | Too many reports (limit exceeded). |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_due_diligence_report**
> ReportsReportIdStatusResponse generate_due_diligence_report(reports_generate_due_diligence_request, project_key=project_key)

Generate Due Diligence Report

Generates a Due Diligence report with data defined by scope and filters. This request starts the report generation process which runs in the background. The returned report ID is used in other requests such as Get Report Content, Export, Delete Report, etc.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can generate a Due Diligence report in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.9.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.reports_generate_due_diligence_request import ReportsGenerateDueDiligenceRequest
from jfrog_client.models.reports_report_id_status_response import ReportsReportIdStatusResponse
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    reports_generate_due_diligence_request = jfrog_client.ReportsGenerateDueDiligenceRequest() # ReportsGenerateDueDiligenceRequest | 
    project_key = 'project_key_example' # str | Generate the report in the scope of the specified project. (optional)

    try:
        # Generate Due Diligence Report
        api_response = api_instance.generate_due_diligence_report(reports_generate_due_diligence_request, project_key=project_key)
        print("The response of ReportsV1Api->generate_due_diligence_report:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->generate_due_diligence_report: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reports_generate_due_diligence_request** | [**ReportsGenerateDueDiligenceRequest**](ReportsGenerateDueDiligenceRequest.md)|  | 
 **project_key** | **str**| Generate the report in the scope of the specified project. | [optional] 

### Return type

[**ReportsReportIdStatusResponse**](ReportsReportIdStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Report generation started. Use the returned report_id to check status, retrieve content, or export the report.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_exposures_report**
> ReportsReportIdStatusResponse generate_exposures_report(reports_generate_exposures_request)

Generate Exposures Report

Generates an Exposures report with data defined by scope and filters. This request starts the report generation process which runs in the background. The returned report ID is used in other requests such as Get Report Content, Export, Delete Report, etc.

Requires a user with the Manage Reports role.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.reports_generate_exposures_request import ReportsGenerateExposuresRequest
from jfrog_client.models.reports_report_id_status_response import ReportsReportIdStatusResponse
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    reports_generate_exposures_request = jfrog_client.ReportsGenerateExposuresRequest() # ReportsGenerateExposuresRequest | 

    try:
        # Generate Exposures Report
        api_response = api_instance.generate_exposures_report(reports_generate_exposures_request)
        print("The response of ReportsV1Api->generate_exposures_report:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->generate_exposures_report: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reports_generate_exposures_request** | [**ReportsGenerateExposuresRequest**](ReportsGenerateExposuresRequest.md)|  | 

### Return type

[**ReportsReportIdStatusResponse**](ReportsReportIdStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Report generation started. Use the returned report_id to check status, retrieve content, or export the report.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_exposures_report_by_id**
> GenerateExposuresReportById200Response generate_exposures_report_by_id(id, direction=direction, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by, request_body=request_body)

Get Exposures Report Content

Retrieves the content of a previously generated Exposures report by its ID. Results are paginated; all pagination query parameters are mandatory.

Requires a user with the Manage Reports role.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.generate_exposures_report_by_id200_response import GenerateExposuresReportById200Response
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    id = 'id_example' # str | The unique identifier of the Exposures report.
    direction = 'direction_example' # str | Sort direction: asc or desc. (optional)
    page_num = 56 # int | Page number (starting at 1). (optional)
    num_of_rows = 56 # int | Number of rows per page. (optional)
    order_by = 'order_by_example' # str | Field to sort by. (optional)
    request_body = None # Dict[str, object] |  (optional)

    try:
        # Get Exposures Report Content
        api_response = api_instance.generate_exposures_report_by_id(id, direction=direction, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by, request_body=request_body)
        print("The response of ReportsV1Api->generate_exposures_report_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->generate_exposures_report_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the Exposures report. | 
 **direction** | **str**| Sort direction: asc or desc. | [optional] 
 **page_num** | **int**| Page number (starting at 1). | [optional] 
 **num_of_rows** | **int**| Number of rows per page. | [optional] 
 **order_by** | **str**| Field to sort by. | [optional] 
 **request_body** | [**Dict[str, object]**](object.md)|  | [optional] 

### Return type

[**GenerateExposuresReportById200Response**](GenerateExposuresReportById200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - Exposures report content retrieved successfully |  -  |
**400** | Bad request - Required fields are missing |  -  |
**403** | Permission denied |  -  |
**404** | Report not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_operational_risk_report**
> ReportsReportIdStatusResponse generate_operational_risk_report(reports_generate_operational_risk_request, project_key=project_key)

Generate Operational Risk Report

Generates an Operational Risk report with data defined by scope and filters. This request starts the report generation process which runs in the background. The returned report ID is used in other requests such as Get Report Content, Export, Delete Report, etc.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can generate an Operational Risk report in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.49.0.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.reports_generate_operational_risk_request import ReportsGenerateOperationalRiskRequest
from jfrog_client.models.reports_report_id_status_response import ReportsReportIdStatusResponse
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    reports_generate_operational_risk_request = jfrog_client.ReportsGenerateOperationalRiskRequest() # ReportsGenerateOperationalRiskRequest | 
    project_key = 'project_key_example' # str | Generate the report in the scope of the specified project. (optional)

    try:
        # Generate Operational Risk Report
        api_response = api_instance.generate_operational_risk_report(reports_generate_operational_risk_request, project_key=project_key)
        print("The response of ReportsV1Api->generate_operational_risk_report:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->generate_operational_risk_report: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reports_generate_operational_risk_request** | [**ReportsGenerateOperationalRiskRequest**](ReportsGenerateOperationalRiskRequest.md)|  | 
 **project_key** | **str**| Generate the report in the scope of the specified project. | [optional] 

### Return type

[**ReportsReportIdStatusResponse**](ReportsReportIdStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Report generation started. Use the returned report_id to check status, retrieve content, or export the report.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_violations_report**
> ReportsReportIdStatusResponse generate_violations_report(reports_generate_violations_request, project_key=project_key)

Generate Violations Report

Generates a Violations report with data defined by scope and filters. This request starts the report generation process which runs in the background. The returned report ID is used in other requests such as Get Report Content, Export, Delete Report, etc.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can generate a Violations report in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.11.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.reports_generate_violations_request import ReportsGenerateViolationsRequest
from jfrog_client.models.reports_report_id_status_response import ReportsReportIdStatusResponse
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    reports_generate_violations_request = jfrog_client.ReportsGenerateViolationsRequest() # ReportsGenerateViolationsRequest | 
    project_key = 'project_key_example' # str | Generate the report in the scope of the specified project. (optional)

    try:
        # Generate Violations Report
        api_response = api_instance.generate_violations_report(reports_generate_violations_request, project_key=project_key)
        print("The response of ReportsV1Api->generate_violations_report:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->generate_violations_report: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reports_generate_violations_request** | [**ReportsGenerateViolationsRequest**](ReportsGenerateViolationsRequest.md)|  | 
 **project_key** | **str**| Generate the report in the scope of the specified project. | [optional] 

### Return type

[**ReportsReportIdStatusResponse**](ReportsReportIdStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Report generation started. Use the returned report_id to check status, retrieve content, or export the report.  |  -  |
**400** | Bad request. |  -  |
**404** | Not found. |  -  |
**412** | Report feature is disabled. |  -  |
**429** | Too many reports. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_vulnerabilities_report**
> ReportsReportIdStatusResponse generate_vulnerabilities_report(reports_generate_vulnerabilities_request, project_key=project_key)

Generate Vulnerabilities Report

Generates a Vulnerabilities report with data defined by scope and filters. This request starts the report generation process which runs in the background. The returned report ID is used in other requests such as Get Report Content, Export, Delete Report, etc.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can generate a report in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.8.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.reports_generate_vulnerabilities_request import ReportsGenerateVulnerabilitiesRequest
from jfrog_client.models.reports_report_id_status_response import ReportsReportIdStatusResponse
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    reports_generate_vulnerabilities_request = jfrog_client.ReportsGenerateVulnerabilitiesRequest() # ReportsGenerateVulnerabilitiesRequest | 
    project_key = 'project_key_example' # str | Generate the report in the scope of the specified project. (optional)

    try:
        # Generate Vulnerabilities Report
        api_response = api_instance.generate_vulnerabilities_report(reports_generate_vulnerabilities_request, project_key=project_key)
        print("The response of ReportsV1Api->generate_vulnerabilities_report:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->generate_vulnerabilities_report: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reports_generate_vulnerabilities_request** | [**ReportsGenerateVulnerabilitiesRequest**](ReportsGenerateVulnerabilitiesRequest.md)|  | 
 **project_key** | **str**| Generate the report in the scope of the specified project. | [optional] 

### Return type

[**ReportsReportIdStatusResponse**](ReportsReportIdStatusResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Report generation started. Use the returned report_id to check status, retrieve content, or export the report.  |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_cve_search_report_details_by_id**
> GetCveSearchReportDetailsById200Response get_cve_search_report_details_by_id(id, direction, page_num, num_of_rows, order_by, get_cve_search_report_details_by_id_request=get_cve_search_report_details_by_id_request)

Get CVE Search Report Details by ID

Retrieves the content of a previously generated CVE Search report by its ID. Results are paginated; use the pagination query parameters to control page size and ordering. An optional request body may be provided with filters (impacted_artifact, scan_date, vulnerable_component).

Requires a user with the Manage Reports role. Since Xray 3.73.x.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_cve_search_report_details_by_id200_response import GetCveSearchReportDetailsById200Response
from jfrog_client.models.get_cve_search_report_details_by_id_request import GetCveSearchReportDetailsByIdRequest
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    id = 'id_example' # str | The unique identifier of the CVE Search report.
    direction = 'direction_example' # str | Sort direction: asc or desc.
    page_num = 56 # int | Page number (starting at 1).
    num_of_rows = 56 # int | Number of rows per page.
    order_by = 'order_by_example' # str | Field to sort by.
    get_cve_search_report_details_by_id_request = jfrog_client.GetCveSearchReportDetailsByIdRequest() # GetCveSearchReportDetailsByIdRequest |  (optional)

    try:
        # Get CVE Search Report Details by ID
        api_response = api_instance.get_cve_search_report_details_by_id(id, direction, page_num, num_of_rows, order_by, get_cve_search_report_details_by_id_request=get_cve_search_report_details_by_id_request)
        print("The response of ReportsV1Api->get_cve_search_report_details_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->get_cve_search_report_details_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the CVE Search report. | 
 **direction** | **str**| Sort direction: asc or desc. | 
 **page_num** | **int**| Page number (starting at 1). | 
 **num_of_rows** | **int**| Number of rows per page. | 
 **order_by** | **str**| Field to sort by. | 
 **get_cve_search_report_details_by_id_request** | [**GetCveSearchReportDetailsByIdRequest**](GetCveSearchReportDetailsByIdRequest.md)|  | [optional] 

### Return type

[**GetCveSearchReportDetailsById200Response**](GetCveSearchReportDetailsById200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**400** | Bad request |  -  |
**404** | Report ID not found |  -  |
**500** | server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_cve_search_reports_list**
> GetCveSearchReportsList200Response get_cve_search_reports_list(reports_get_list_request_body, direction=direction, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by)

Get CVE Search Reports List

Returns a paginated list of CVE Search reports that have been generated. Use pagination query parameters (direction, page_num, num_of_rows, order_by) to control the listing. An optional request body may be provided with filters for name, time range, status, and author.

Requires a user with the Manage Reports role. Since Xray 3.73.x.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_cve_search_reports_list200_response import GetCveSearchReportsList200Response
from jfrog_client.models.reports_get_list_request_body import ReportsGetListRequestBody
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    reports_get_list_request_body = jfrog_client.ReportsGetListRequestBody() # ReportsGetListRequestBody | 
    direction = 'direction_example' # str | Sort direction: asc or desc. (optional)
    page_num = 56 # int | Page number (starting at 1). (optional)
    num_of_rows = 56 # int | Number of rows per page. (optional)
    order_by = 'order_by_example' # str | Field to sort by. (optional)

    try:
        # Get CVE Search Reports List
        api_response = api_instance.get_cve_search_reports_list(reports_get_list_request_body, direction=direction, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by)
        print("The response of ReportsV1Api->get_cve_search_reports_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->get_cve_search_reports_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reports_get_list_request_body** | [**ReportsGetListRequestBody**](ReportsGetListRequestBody.md)|  | 
 **direction** | **str**| Sort direction: asc or desc. | [optional] 
 **page_num** | **int**| Page number (starting at 1). | [optional] 
 **num_of_rows** | **int**| Number of rows per page. | [optional] 
 **order_by** | **str**| Field to sort by. | [optional] 

### Return type

[**GetCveSearchReportsList200Response**](GetCveSearchReportsList200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK |  -  |
**339** | format: &lt;YYYY-MM-DDTHH-MM-SSZ&gt; |  -  |
**400** | Bad request |  -  |
**500** | Server error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_due_diligence_report_content**
> GetDueDiligenceReportContent200Response get_due_diligence_report_content(id, direction=direction, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by, project_key=project_key)

Get Due Diligence Report Content

Retrieves the content of a previously generated Due Diligence (license) report by its ID. Results are paginated; all pagination query parameters are mandatory.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can access report content in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.9.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_due_diligence_report_content200_response import GetDueDiligenceReportContent200Response
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    id = 'id_example' # str | The unique identifier of the Due Diligence report.
    direction = 'direction_example' # str | Sort direction: asc or desc. (optional)
    page_num = 56 # int | Page number (starting at 1). (optional)
    num_of_rows = 56 # int | Number of rows per page. (optional)
    order_by = 'order_by_example' # str | Field to sort by. One of: license, artifact, component, unknown_license, path, unrecognized, artifact_scan_time, custom, license_name. (optional)
    project_key = 'project_key_example' # str | Project scope (when Projects are enabled). (optional)

    try:
        # Get Due Diligence Report Content
        api_response = api_instance.get_due_diligence_report_content(id, direction=direction, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by, project_key=project_key)
        print("The response of ReportsV1Api->get_due_diligence_report_content:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->get_due_diligence_report_content: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the Due Diligence report. | 
 **direction** | **str**| Sort direction: asc or desc. | [optional] 
 **page_num** | **int**| Page number (starting at 1). | [optional] 
 **num_of_rows** | **int**| Number of rows per page. | [optional] 
 **order_by** | **str**| Field to sort by. One of: license, artifact, component, unknown_license, path, unrecognized, artifact_scan_time, custom, license_name. | [optional] 
 **project_key** | **str**| Project scope (when Projects are enabled). | [optional] 

### Return type

[**GetDueDiligenceReportContent200Response**](GetDueDiligenceReportContent200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - Due Diligence report content retrieved successfully |  -  |
**400** | Bad request. |  -  |
**404** | Report not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_operational_risk_report_content**
> GetOperationalRiskReportContent200Response get_operational_risk_report_content(id, direction=direction, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by, project_key=project_key)

Get Operational Risk Report Content

Retrieves the content of a previously generated Operational Risk report by its ID. Results are paginated; all pagination query parameters are mandatory.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can access report content in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.49.0.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_operational_risk_report_content200_response import GetOperationalRiskReportContent200Response
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    id = 'id_example' # str | The unique identifier of the Operational Risk report.
    direction = 'direction_example' # str | Sort direction: asc or desc. (optional)
    page_num = 56 # int | Page number (starting at 1). (optional)
    num_of_rows = 56 # int | Number of rows per page. (optional)
    order_by = 'order_by_example' # str | Field to sort by. One of: risk, artifact, component, released, is_eol, cadence, commits, committers. (optional)
    project_key = 'project_key_example' # str | Project scope (when Projects are enabled). (optional)

    try:
        # Get Operational Risk Report Content
        api_response = api_instance.get_operational_risk_report_content(id, direction=direction, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by, project_key=project_key)
        print("The response of ReportsV1Api->get_operational_risk_report_content:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->get_operational_risk_report_content: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the Operational Risk report. | 
 **direction** | **str**| Sort direction: asc or desc. | [optional] 
 **page_num** | **int**| Page number (starting at 1). | [optional] 
 **num_of_rows** | **int**| Number of rows per page. | [optional] 
 **order_by** | **str**| Field to sort by. One of: risk, artifact, component, released, is_eol, cadence, commits, committers. | [optional] 
 **project_key** | **str**| Project scope (when Projects are enabled). | [optional] 

### Return type

[**GetOperationalRiskReportContent200Response**](GetOperationalRiskReportContent200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - Operational Risk report content retrieved successfully |  -  |
**400** | Bad request. |  -  |
**404** | Report not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_report_details_by_id**
> GetReportDetailsById200Response get_report_details_by_id(id, project_key=project_key)

Get Report Details By ID

Returns the metadata and status of a report by its unique ID, including progress, row count, start/end times, and report type.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can get report details in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.8.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_report_details_by_id200_response import GetReportDetailsById200Response
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    id = 'id_example' # str | The unique identifier of the report.
    project_key = 'project_key_example' # str | Project scope (when Projects are enabled). (optional)

    try:
        # Get Report Details By ID
        api_response = api_instance.get_report_details_by_id(id, project_key=project_key)
        print("The response of ReportsV1Api->get_report_details_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->get_report_details_by_id: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the report. | 
 **project_key** | **str**| Project scope (when Projects are enabled). | [optional] 

### Return type

[**GetReportDetailsById200Response**](GetReportDetailsById200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - Report details retrieved successfully |  -  |
**404** | Report not found |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_reports_list**
> ReportsReportListResponse get_reports_list(direction, page_num, num_of_rows, order_by, project_key=project_key, reports_get_list_request_body=reports_get_list_request_body)

Get Reports List

Returns a paginated list of reports that have been generated. All pagination query parameters are mandatory (direction, page_num, num_of_rows, order_by).

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can get a list of reports in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.8.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.reports_get_list_request_body import ReportsGetListRequestBody
from jfrog_client.models.reports_report_list_response import ReportsReportListResponse
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    direction = 'direction_example' # str | Sort direction: asc or desc
    page_num = 56 # int | Page number (starting at 1)
    num_of_rows = 56 # int | Rows per page
    order_by = 'order_by_example' # str | One of: name, type, author, start_time, status
    project_key = 'project_key_example' # str | Project scope (when Projects are enabled) (optional)
    reports_get_list_request_body = jfrog_client.ReportsGetListRequestBody() # ReportsGetListRequestBody |  (optional)

    try:
        # Get Reports List
        api_response = api_instance.get_reports_list(direction, page_num, num_of_rows, order_by, project_key=project_key, reports_get_list_request_body=reports_get_list_request_body)
        print("The response of ReportsV1Api->get_reports_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->get_reports_list: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **direction** | **str**| Sort direction: asc or desc | 
 **page_num** | **int**| Page number (starting at 1) | 
 **num_of_rows** | **int**| Rows per page | 
 **order_by** | **str**| One of: name, type, author, start_time, status | 
 **project_key** | **str**| Project scope (when Projects are enabled) | [optional] 
 **reports_get_list_request_body** | [**ReportsGetListRequestBody**](ReportsGetListRequestBody.md)|  | [optional] 

### Return type

[**ReportsReportListResponse**](ReportsReportListResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - Reports list retrieved successfully |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_violations_report_content**
> GetViolationsReportContent200Response get_violations_report_content(id, direction=direction, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by, project_key=project_key)

Get Violations Report Content

Retrieves the content of a previously generated Violations report by its ID. Results are paginated; all pagination query parameters are mandatory.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can access report content in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.11.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_violations_report_content200_response import GetViolationsReportContent200Response
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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    id = 'id_example' # str | The unique identifier of the violations report.
    direction = 'direction_example' # str | Sort direction: asc or desc. (optional)
    page_num = 56 # int | Page number (starting at 1). (optional)
    num_of_rows = 56 # int | Number of rows per page. (optional)
    order_by = 'order_by_example' # str | Field to sort by. One of: type, summary, severity, updated, impacted_artifact, path, vulnerable_component, cves, cvss2_max_score, cvss3_max_score. (optional)
    project_key = 'project_key_example' # str | Project scope (when Projects are enabled). (optional)

    try:
        # Get Violations Report Content
        api_response = api_instance.get_violations_report_content(id, direction=direction, page_num=page_num, num_of_rows=num_of_rows, order_by=order_by, project_key=project_key)
        print("The response of ReportsV1Api->get_violations_report_content:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->get_violations_report_content: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The unique identifier of the violations report. | 
 **direction** | **str**| Sort direction: asc or desc. | [optional] 
 **page_num** | **int**| Page number (starting at 1). | [optional] 
 **num_of_rows** | **int**| Number of rows per page. | [optional] 
 **order_by** | **str**| Field to sort by. One of: type, summary, severity, updated, impacted_artifact, path, vulnerable_component, cves, cvss2_max_score, cvss3_max_score. | [optional] 
 **project_key** | **str**| Project scope (when Projects are enabled). | [optional] 

### Return type

[**GetViolationsReportContent200Response**](GetViolationsReportContent200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | OK - Violations report content retrieved successfully |  -  |
**400** | Bad request. |  -  |
**404** | Report not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_vulnerabilities_report_content**
> ReportsVulnerabilityContentResponse get_vulnerabilities_report_content(id, num_of_rows, page_num, search=search, direction=direction, order_by=order_by, project_key=project_key, reports_vulnerability_content_request_body=reports_vulnerability_content_request_body)

Get Vulnerabilities Report Content

Retrieves the content of a previously generated Vulnerabilities report by its ID. Results are paginated; all pagination query parameters are mandatory. An optional request body may be provided to apply advanced filters.

For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can access report content in the scope of a project by using the additional query parameter `projectKey`.

Requires a user with the Manage Reports role. Since Xray 3.8.


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
    api_instance = jfrog_client.ReportsV1Api(api_client)
    id = 'id_example' # str | The unique identifier of the vulnerability report.
    num_of_rows = 56 # int | Number of rows per page.
    page_num = 56 # int | Page number (1-based).
    search = 'search_example' # str | Search term to filter results across CVEs, impacted artifacts, vulnerable components, paths, and project keys. (optional)
    direction = 'direction_example' # str | Sort direction: asc or desc. Default: asc. (optional)
    order_by = 'order_by_example' # str | Field to sort by. (optional)
    project_key = 'project_key_example' # str | Project scope (when Projects are enabled). (optional)
    reports_vulnerability_content_request_body = jfrog_client.ReportsVulnerabilityContentRequestBody() # ReportsVulnerabilityContentRequestBody |  (optional)

    try:
        # Get Vulnerabilities Report Content
        api_response = api_instance.get_vulnerabilities_report_content(id, num_of_rows, page_num, search=search, direction=direction, order_by=order_by, project_key=project_key, reports_vulnerability_content_request_body=reports_vulnerability_content_request_body)
        print("The response of ReportsV1Api->get_vulnerabilities_report_content:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ReportsV1Api->get_vulnerabilities_report_content: %s\n" % e)
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
 **project_key** | **str**| Project scope (when Projects are enabled). | [optional] 
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

