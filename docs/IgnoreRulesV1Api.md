# jfrog_client.IgnoreRulesV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_ignore_rule**](IgnoreRulesV1Api.md#create_ignore_rule) | **POST** /xray/api/v1/ignore_rules | Create Ignore Rule
[**delete_ignore_rule**](IgnoreRulesV1Api.md#delete_ignore_rule) | **DELETE** /xray/api/v1/ignore_rules/{id} | Delete Ignore Rule
[**get_ignore_rule**](IgnoreRulesV1Api.md#get_ignore_rule) | **GET** /xray/api/v1/ignore_rules/{id} | Get Ignore Rule
[**get_ignore_rules**](IgnoreRulesV1Api.md#get_ignore_rules) | **GET** /xray/api/v1/ignore_rules | Get Ignore Rules


# **create_ignore_rule**
> CreateIgnoreRule201Response create_ignore_rule(ignore_rules_create_request, project_key=project_key)

Create Ignore Rule

Creates an Ignore Rule that suppresses violations matching the specified filters. Ignore rules apply only to future scans. To apply to past scans, you must manually trigger Apply on Existing Content on the relevant watch or watches.

The `ignore_filters` object defines what to ignore. You must specify at least one objective filter (vulnerabilities, licenses, cves, operational_risk, or exposures) and can optionally scope it with source filters (components, artifacts, builds, etc.).

Requires the "Manage Watches" permission. Since Xray 3.11.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.create_ignore_rule201_response import CreateIgnoreRule201Response
from jfrog_client.models.ignore_rules_create_request import IgnoreRulesCreateRequest
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
    api_instance = jfrog_client.IgnoreRulesV1Api(api_client)
    ignore_rules_create_request = jfrog_client.IgnoreRulesCreateRequest() # IgnoreRulesCreateRequest | 
    project_key = 'project_key_example' # str | When provided, the ignore rule is created in the scope of the specified project.  (optional)

    try:
        # Create Ignore Rule
        api_response = api_instance.create_ignore_rule(ignore_rules_create_request, project_key=project_key)
        print("The response of IgnoreRulesV1Api->create_ignore_rule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IgnoreRulesV1Api->create_ignore_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ignore_rules_create_request** | [**IgnoreRulesCreateRequest**](IgnoreRulesCreateRequest.md)|  | 
 **project_key** | **str**| When provided, the ignore rule is created in the scope of the specified project.  | [optional] 

### Return type

[**CreateIgnoreRule201Response**](CreateIgnoreRule201Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Ignore rule created successfully. |  -  |
**400** | Parsing or validation error. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_ignore_rule**
> delete_ignore_rule(id, project_key=project_key)

Delete Ignore Rule

Deletes an Ignore Rule by its ID. The rule is soft-deleted and a background job is triggered to reactivate any violations that were previously suppressed by this rule.

Requires the "Manage Watches" permission. Since Xray 3.11.


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
    api_instance = jfrog_client.IgnoreRulesV1Api(api_client)
    id = 'id_example' # str | The external ID of the ignore rule to delete.
    project_key = 'project_key_example' # str | Scope to the specified project. (optional)

    try:
        # Delete Ignore Rule
        api_instance.delete_ignore_rule(id, project_key=project_key)
    except Exception as e:
        print("Exception when calling IgnoreRulesV1Api->delete_ignore_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The external ID of the ignore rule to delete. | 
 **project_key** | **str**| Scope to the specified project. | [optional] 

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
**204** | Ignore rule deleted successfully. No content returned. |  -  |
**400** | Empty ignore rule ID. |  -  |
**404** | Ignore rule not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ignore_rule**
> IgnoreRuleApiResponse get_ignore_rule(id, project_key=project_key)

Get Ignore Rule

Returns a single Ignore Rule by its ID, including its filters and metadata.

Requires the "Manage Watches" permission. Since Xray 3.11.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.ignore_rule_api_response import IgnoreRuleApiResponse
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
    api_instance = jfrog_client.IgnoreRulesV1Api(api_client)
    id = 'id_example' # str | The external ID of the ignore rule.
    project_key = 'project_key_example' # str | Scope to the specified project. (optional)

    try:
        # Get Ignore Rule
        api_response = api_instance.get_ignore_rule(id, project_key=project_key)
        print("The response of IgnoreRulesV1Api->get_ignore_rule:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IgnoreRulesV1Api->get_ignore_rule: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **str**| The external ID of the ignore rule. | 
 **project_key** | **str**| Scope to the specified project. | [optional] 

### Return type

[**IgnoreRuleApiResponse**](IgnoreRuleApiResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved the ignore rule. |  -  |
**400** | Empty ignore rule ID. |  -  |
**404** | Ignore rule not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_ignore_rules**
> GetIgnoreRules200Response get_ignore_rules(vulnerability=vulnerability, cve=cve, license=license, policy=policy, watch=watch, component_name=component_name, component_version=component_version, artifact_name=artifact_name, artifact_version=artifact_version, artifact_path=artifact_path, build_name=build_name, build_version=build_version, release_bundle_name=release_bundle_name, release_bundle_version=release_bundle_version, docker_layer=docker_layer, exposures_scanner=exposures_scanner, exposures_category=exposures_category, exposures_file_path=exposures_file_path, exposures_fingerprint=exposures_fingerprint, git_repository=git_repository, expires_before=expires_before, expires_after=expires_after, order_by=order_by, direction=direction, page_num=page_num, num_of_rows=num_of_rows, project_key=project_key)

Get Ignore Rules

Returns all Ignore Rules matching the specified query filters. All filter parameters are optional. Use pagination parameters to control result size.

Requires the "Manage Watches" permission. Since Xray 3.11.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.get_ignore_rules200_response import GetIgnoreRules200Response
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
    api_instance = jfrog_client.IgnoreRulesV1Api(api_client)
    vulnerability = 'vulnerability_example' # str | Filter by vulnerability ID (XRAY-nnnnn). (optional)
    cve = 'cve_example' # str | Filter by CVE ID. (optional)
    license = 'license_example' # str | Filter by license name. (optional)
    policy = 'policy_example' # str | Filter by policy name. (optional)
    watch = 'watch_example' # str | Filter by watch name. (optional)
    component_name = 'component_name_example' # str | Filter by component name. (optional)
    component_version = 'component_version_example' # str | Filter by component version. (optional)
    artifact_name = 'artifact_name_example' # str | Filter by artifact name. (optional)
    artifact_version = 'artifact_version_example' # str | Filter by artifact version. (optional)
    artifact_path = 'artifact_path_example' # str | Filter by artifact path. (optional)
    build_name = 'build_name_example' # str | Filter by build name. (optional)
    build_version = 'build_version_example' # str | Filter by build version. (optional)
    release_bundle_name = 'release_bundle_name_example' # str | Filter by release bundle name. (optional)
    release_bundle_version = 'release_bundle_version_example' # str | Filter by release bundle version. (optional)
    docker_layer = 'docker_layer_example' # str | Filter by Docker layer SHA. (optional)
    exposures_scanner = 'exposures_scanner_example' # str | Filter by exposure scanner ID. (optional)
    exposures_category = 'exposures_category_example' # str | Filter by exposure category. (optional)
    exposures_file_path = 'exposures_file_path_example' # str | Filter by exposure file path. (optional)
    exposures_fingerprint = 'exposures_fingerprint_example' # str | Filter by exposure fingerprint. (optional)
    git_repository = 'git_repository_example' # str | Filter by git repository name. (optional)
    expires_before = '2013-10-20T19:20:30+01:00' # datetime | Filter rules expiring before this date (RFC 3339). (optional)
    expires_after = '2013-10-20T19:20:30+01:00' # datetime | Filter rules expiring after this date (RFC 3339). (optional)
    order_by = 'order_by_example' # str | Sort field. Valid values: external_id, author, created, expires_at, project_key. Default: created.  (optional)
    direction = 'direction_example' # str | Sort direction. Default: asc. (optional)
    page_num = 56 # int | Page number (1-based). (optional)
    num_of_rows = 56 # int | Number of rows per page. (optional)
    project_key = 'project_key_example' # str | Scope results to the specified project. (optional)

    try:
        # Get Ignore Rules
        api_response = api_instance.get_ignore_rules(vulnerability=vulnerability, cve=cve, license=license, policy=policy, watch=watch, component_name=component_name, component_version=component_version, artifact_name=artifact_name, artifact_version=artifact_version, artifact_path=artifact_path, build_name=build_name, build_version=build_version, release_bundle_name=release_bundle_name, release_bundle_version=release_bundle_version, docker_layer=docker_layer, exposures_scanner=exposures_scanner, exposures_category=exposures_category, exposures_file_path=exposures_file_path, exposures_fingerprint=exposures_fingerprint, git_repository=git_repository, expires_before=expires_before, expires_after=expires_after, order_by=order_by, direction=direction, page_num=page_num, num_of_rows=num_of_rows, project_key=project_key)
        print("The response of IgnoreRulesV1Api->get_ignore_rules:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IgnoreRulesV1Api->get_ignore_rules: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vulnerability** | **str**| Filter by vulnerability ID (XRAY-nnnnn). | [optional] 
 **cve** | **str**| Filter by CVE ID. | [optional] 
 **license** | **str**| Filter by license name. | [optional] 
 **policy** | **str**| Filter by policy name. | [optional] 
 **watch** | **str**| Filter by watch name. | [optional] 
 **component_name** | **str**| Filter by component name. | [optional] 
 **component_version** | **str**| Filter by component version. | [optional] 
 **artifact_name** | **str**| Filter by artifact name. | [optional] 
 **artifact_version** | **str**| Filter by artifact version. | [optional] 
 **artifact_path** | **str**| Filter by artifact path. | [optional] 
 **build_name** | **str**| Filter by build name. | [optional] 
 **build_version** | **str**| Filter by build version. | [optional] 
 **release_bundle_name** | **str**| Filter by release bundle name. | [optional] 
 **release_bundle_version** | **str**| Filter by release bundle version. | [optional] 
 **docker_layer** | **str**| Filter by Docker layer SHA. | [optional] 
 **exposures_scanner** | **str**| Filter by exposure scanner ID. | [optional] 
 **exposures_category** | **str**| Filter by exposure category. | [optional] 
 **exposures_file_path** | **str**| Filter by exposure file path. | [optional] 
 **exposures_fingerprint** | **str**| Filter by exposure fingerprint. | [optional] 
 **git_repository** | **str**| Filter by git repository name. | [optional] 
 **expires_before** | **datetime**| Filter rules expiring before this date (RFC 3339). | [optional] 
 **expires_after** | **datetime**| Filter rules expiring after this date (RFC 3339). | [optional] 
 **order_by** | **str**| Sort field. Valid values: external_id, author, created, expires_at, project_key. Default: created.  | [optional] 
 **direction** | **str**| Sort direction. Default: asc. | [optional] 
 **page_num** | **int**| Page number (1-based). | [optional] 
 **num_of_rows** | **int**| Number of rows per page. | [optional] 
 **project_key** | **str**| Scope results to the specified project. | [optional] 

### Return type

[**GetIgnoreRules200Response**](GetIgnoreRules200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved ignore rules. |  -  |
**400** | Invalid query parameters. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

