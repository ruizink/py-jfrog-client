# jfrog_client.LegalV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**license_attribution_report**](LegalV2Api.md#license_attribution_report) | **POST** /xray/api/v2/component/attribution | License Attribution Report


# **license_attribution_report**
> object license_attribution_report(license_attribution_report_request)

License Attribution Report

Generates a license attribution report for a specific resource in the platform. The report can be output in PDF, JSON, CSV, or TXT format. Requires the Catalog service to be available.

Requires the "Manage Data" role. Supported from Xray Version 3.118.0 and above.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.license_attribution_report_request import LicenseAttributionReportRequest
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
    api_instance = jfrog_client.LegalV2Api(api_client)
    license_attribution_report_request = jfrog_client.LicenseAttributionReportRequest() # LicenseAttributionReportRequest | 

    try:
        # License Attribution Report
        api_response = api_instance.license_attribution_report(license_attribution_report_request)
        print("The response of LegalV2Api->license_attribution_report:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling LegalV2Api->license_attribution_report: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **license_attribution_report_request** | [**LicenseAttributionReportRequest**](LicenseAttributionReportRequest.md)|  | 

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
**200** | Attribution report generated successfully. |  -  |
**400** | Failed to parse input arguments or Catalog is not available. |  -  |
**403** | Permission denied. |  -  |
**500** | Failed to generate the attribution report. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

