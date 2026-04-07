# jfrog_client.PoliciesV2Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_policy_policies_v2_openapi**](PoliciesV2Api.md#create_policy_policies_v2_openapi) | **POST** /xray/api/v2/policies | Create Policy
[**delete_policy_policies_v2_openapi**](PoliciesV2Api.md#delete_policy_policies_v2_openapi) | **DELETE** /xray/api/v2/policies/{name} | Delete Policy
[**get_policies_policies_v2_openapi**](PoliciesV2Api.md#get_policies_policies_v2_openapi) | **GET** /xray/api/v2/policies | Get Policies
[**get_policy_by_name_policies_v2_openapi**](PoliciesV2Api.md#get_policy_by_name_policies_v2_openapi) | **GET** /xray/api/v2/policies/{name} | Get Policy
[**update_policy_policies_v2_openapi**](PoliciesV2Api.md#update_policy_policies_v2_openapi) | **PUT** /xray/api/v2/policies/{name} | Update Policy


# **create_policy_policies_v2_openapi**
> AddCustomLicense200Response create_policy_policies_v2_openapi(policies_policy_mutation_request, project_key=project_key)

Create Policy

Creates a new security, license, or operational risk policy (v2 API). The v2 API supports additional action fields compared to v1, including `build_failure_grace_period_in_days`, `block_release_bundle_distribution`, `block_release_bundle_promotion`, and `create_ticket_enabled`.

Requires the "Manage Policies" role to be set on the User or Group level.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.add_custom_license200_response import AddCustomLicense200Response
from jfrog_client.models.policies_policy_mutation_request import PoliciesPolicyMutationRequest
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
    api_instance = jfrog_client.PoliciesV2Api(api_client)
    policies_policy_mutation_request = jfrog_client.PoliciesPolicyMutationRequest() # PoliciesPolicyMutationRequest | 
    project_key = 'project_key_example' # str | When provided, the policy is created in the scope of the specified project. Requires Xray 3.21.2+ with Projects enabled.  (optional)

    try:
        # Create Policy
        api_response = api_instance.create_policy_policies_v2_openapi(policies_policy_mutation_request, project_key=project_key)
        print("The response of PoliciesV2Api->create_policy_policies_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV2Api->create_policy_policies_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **policies_policy_mutation_request** | [**PoliciesPolicyMutationRequest**](PoliciesPolicyMutationRequest.md)|  | 
 **project_key** | **str**| When provided, the policy is created in the scope of the specified project. Requires Xray 3.21.2+ with Projects enabled.  | [optional] 

### Return type

[**AddCustomLicense200Response**](AddCustomLicense200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Policy created successfully. |  -  |
**400** | Policy is not valid. Check mandatory fields. |  -  |
**403** | Permission denied or unsupported policy type for current license. |  -  |
**409** | A policy with the given name already exists. |  -  |
**415** | Failed to parse the request body. |  -  |
**500** | Internal server error while creating the policy. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_policy_policies_v2_openapi**
> AddCustomLicense200Response delete_policy_policies_v2_openapi(name)

Delete Policy

Deletes an existing policy by name. A policy cannot be deleted if it is currently assigned to one or more watches — you must unassign it first.

Requires the "Manage Policies" role to be set on the User or Group level.

Note: This endpoint does not support the `projectKey` query parameter.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.add_custom_license200_response import AddCustomLicense200Response
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
    api_instance = jfrog_client.PoliciesV2Api(api_client)
    name = 'name_example' # str | The name of the policy to delete.

    try:
        # Delete Policy
        api_response = api_instance.delete_policy_policies_v2_openapi(name)
        print("The response of PoliciesV2Api->delete_policy_policies_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV2Api->delete_policy_policies_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The name of the policy to delete. | 

### Return type

[**AddCustomLicense200Response**](AddCustomLicense200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Policy deleted successfully. |  -  |
**400** | Policy name is empty, or the policy is still assigned to watches.  |  -  |
**404** | Policy not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_policies_policies_v2_openapi**
> List[PolicyApiV2Response] get_policies_policies_v2_openapi(project_key=project_key)

Get Policies

Returns a list of all policies in the system (v2 format). The v2 response includes additional action fields compared to v1. When `projectKey` is provided, returns both Global and Project-scoped policies for that project.

Requires the Read Policies role to be set on the User or Group level.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.policy_api_v2_response import PolicyApiV2Response
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
    api_instance = jfrog_client.PoliciesV2Api(api_client)
    project_key = 'project_key_example' # str | When provided, returns policies scoped to the specified project in addition to global policies. Requires Xray 3.21.2+ with Projects enabled.  (optional)

    try:
        # Get Policies
        api_response = api_instance.get_policies_policies_v2_openapi(project_key=project_key)
        print("The response of PoliciesV2Api->get_policies_policies_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV2Api->get_policies_policies_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| When provided, returns policies scoped to the specified project in addition to global policies. Requires Xray 3.21.2+ with Projects enabled.  | [optional] 

### Return type

[**List[PolicyApiV2Response]**](PolicyApiV2Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved all policies. |  -  |
**403** | Permission denied. |  -  |
**500** | Internal server error while retrieving policies. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_policy_by_name_policies_v2_openapi**
> PolicyApiV2Response get_policy_by_name_policies_v2_openapi(name, project_key=project_key)

Get Policy

Returns the details of a specific policy by name (v2 format). The v2 response includes additional action fields compared to v1.

Requires the Read Policies role to be set on the User or Group level.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.policy_api_v2_response import PolicyApiV2Response
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
    api_instance = jfrog_client.PoliciesV2Api(api_client)
    name = 'name_example' # str | The name of the policy to retrieve.
    project_key = 'project_key_example' # str | When provided, looks up the policy in the scope of the specified project as well as globally.  (optional)

    try:
        # Get Policy
        api_response = api_instance.get_policy_by_name_policies_v2_openapi(name, project_key=project_key)
        print("The response of PoliciesV2Api->get_policy_by_name_policies_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV2Api->get_policy_by_name_policies_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The name of the policy to retrieve. | 
 **project_key** | **str**| When provided, looks up the policy in the scope of the specified project as well as globally.  | [optional] 

### Return type

[**PolicyApiV2Response**](PolicyApiV2Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved the policy. |  -  |
**400** | Empty policy name. |  -  |
**404** | Policy not found or not accessible in the current scope. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_policy_policies_v2_openapi**
> AddCustomLicense200Response update_policy_policies_v2_openapi(name, policies_policy_mutation_request, project_key=project_key)

Update Policy

Updates an existing policy (v2 API). The policy name in the URL path is authoritative — it overrides any `name` field in the request body. The full policy definition must be provided (full replacement, not partial update).

Requires the "Manage Policies" role to be set on the User or Group level.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.add_custom_license200_response import AddCustomLicense200Response
from jfrog_client.models.policies_policy_mutation_request import PoliciesPolicyMutationRequest
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
    api_instance = jfrog_client.PoliciesV2Api(api_client)
    name = 'name_example' # str | The name of the policy to update. This value takes precedence over any name in the request body. 
    policies_policy_mutation_request = jfrog_client.PoliciesPolicyMutationRequest() # PoliciesPolicyMutationRequest | 
    project_key = 'project_key_example' # str | When provided, the update is scoped to the specified project.  (optional)

    try:
        # Update Policy
        api_response = api_instance.update_policy_policies_v2_openapi(name, policies_policy_mutation_request, project_key=project_key)
        print("The response of PoliciesV2Api->update_policy_policies_v2_openapi:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV2Api->update_policy_policies_v2_openapi: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The name of the policy to update. This value takes precedence over any name in the request body.  | 
 **policies_policy_mutation_request** | [**PoliciesPolicyMutationRequest**](PoliciesPolicyMutationRequest.md)|  | 
 **project_key** | **str**| When provided, the update is scoped to the specified project.  | [optional] 

### Return type

[**AddCustomLicense200Response**](AddCustomLicense200Response.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Policy updated successfully. |  -  |
**400** | Policy name is empty or the policy is not valid. |  -  |
**403** | Permission denied or unsupported policy type for current license. |  -  |
**404** | Policy not found. |  -  |
**500** | Internal server error while updating the policy. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

