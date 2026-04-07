# jfrog_client.PoliciesV1Api

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**assign_policy_to_watches**](PoliciesV1Api.md#assign_policy_to_watches) | **POST** /xray/api/v1/policies/{name}/assign | Assign Policy to Watches
[**create_policy**](PoliciesV1Api.md#create_policy) | **POST** /xray/api/v1/policies | Create Policy
[**delete_policy**](PoliciesV1Api.md#delete_policy) | **DELETE** /xray/api/v1/policies/{name} | Delete Policy
[**get_policies**](PoliciesV1Api.md#get_policies) | **GET** /xray/api/v1/policies | Get Policies
[**get_policy_by_name**](PoliciesV1Api.md#get_policy_by_name) | **GET** /xray/api/v1/policies/{name} | Get Policy
[**update_policy**](PoliciesV1Api.md#update_policy) | **PUT** /xray/api/v1/policies/{name} | Update Policy


# **assign_policy_to_watches**
> PolicyAssignToWatchesResponse assign_policy_to_watches(name, policy_assign_to_watches_request)

Assign Policy to Watches

Assigns an existing policy to one or more watches. Each watch name in the request is processed independently — the response reports the result for each watch separately. If a watch does not exist or the policy is already assigned, the response indicates the status per watch rather than failing the entire request.

Requires the "Manage Watches" role to be set on the User or Group level.

Note: This endpoint does not support the `projectKey` query parameter. The policy is looked up by name across all scopes.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.policy_assign_to_watches_request import PolicyAssignToWatchesRequest
from jfrog_client.models.policy_assign_to_watches_response import PolicyAssignToWatchesResponse
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
    api_instance = jfrog_client.PoliciesV1Api(api_client)
    name = 'name_example' # str | The name of the policy to assign.
    policy_assign_to_watches_request = jfrog_client.PolicyAssignToWatchesRequest() # PolicyAssignToWatchesRequest | 

    try:
        # Assign Policy to Watches
        api_response = api_instance.assign_policy_to_watches(name, policy_assign_to_watches_request)
        print("The response of PoliciesV1Api->assign_policy_to_watches:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV1Api->assign_policy_to_watches: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The name of the policy to assign. | 
 **policy_assign_to_watches_request** | [**PolicyAssignToWatchesRequest**](PolicyAssignToWatchesRequest.md)|  | 

### Return type

[**PolicyAssignToWatchesResponse**](PolicyAssignToWatchesResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Assignment processed. Check the &#x60;result&#x60; map for per-watch status — some watches may have succeeded while others failed.  |  -  |
**404** | The specified policy does not exist. |  -  |
**415** | Failed to parse the request body. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_policy**
> AddCustomLicense200Response create_policy(policies_policy_mutation_request, project_key=project_key)

Create Policy

Creates a new security, license, or operational risk policy. A policy contains rules that define criteria for matching issues and actions to take when issues are found (e.g., block downloads, fail builds, send notifications). Once created, assign the policy to one or more watches using the Assign Policy to Watches endpoint.

Requires the "Manage Policies" role to be set on the User or Group level. For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can create policies in the scope of a project by using the additional query parameter `projectKey`.


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
    api_instance = jfrog_client.PoliciesV1Api(api_client)
    policies_policy_mutation_request = jfrog_client.PoliciesPolicyMutationRequest() # PoliciesPolicyMutationRequest | 
    project_key = 'project_key_example' # str | When provided, the policy is created in the scope of the specified project. Requires Xray 3.21.2+ with Projects enabled.  (optional)

    try:
        # Create Policy
        api_response = api_instance.create_policy(policies_policy_mutation_request, project_key=project_key)
        print("The response of PoliciesV1Api->create_policy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV1Api->create_policy: %s\n" % e)
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
**400** | Policy is not valid. Check mandatory fields (name, type, rules).  |  -  |
**403** | Permission denied. User lacks the Manage Policies role. |  -  |
**409** | A policy with the given name already exists. |  -  |
**415** | Failed to parse the request body. |  -  |
**500** | Internal server error while creating the policy. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_policy**
> AddCustomLicense200Response delete_policy(name)

Delete Policy

Deletes an existing policy by name. A policy cannot be deleted if it is currently assigned to one or more watches — you must unassign it first. Upon successful deletion, any associated violations are updated asynchronously and related ignore rules are cleaned up.

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
    api_instance = jfrog_client.PoliciesV1Api(api_client)
    name = 'name_example' # str | The name of the policy to delete.

    try:
        # Delete Policy
        api_response = api_instance.delete_policy(name)
        print("The response of PoliciesV1Api->delete_policy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV1Api->delete_policy: %s\n" % e)
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
**400** | Policy name is empty, or the policy is still assigned to watches and cannot be deleted.  |  -  |
**404** | Policy not found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_policies**
> List[PolicyApiResponse] get_policies(project_key=project_key, include_notify=include_notify)

Get Policies

Returns a list of all policies in the system. When `projectKey` is provided, returns both Global and Project-scoped policies for that project.

Requires the Read Policies role to be set on the User or Group level. For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can get a list of Global and Project Policies by using the additional query parameter `projectKey`.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.policy_api_response import PolicyApiResponse
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
    api_instance = jfrog_client.PoliciesV1Api(api_client)
    project_key = 'project_key_example' # str | When provided, returns policies scoped to the specified project in addition to global policies. Requires Xray 3.21.2+ with Projects enabled.  (optional)
    include_notify = 'include_notify_example' # str | When set to true, includes notification-related action fields in the response.  (optional)

    try:
        # Get Policies
        api_response = api_instance.get_policies(project_key=project_key, include_notify=include_notify)
        print("The response of PoliciesV1Api->get_policies:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV1Api->get_policies: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **project_key** | **str**| When provided, returns policies scoped to the specified project in addition to global policies. Requires Xray 3.21.2+ with Projects enabled.  | [optional] 
 **include_notify** | **str**| When set to true, includes notification-related action fields in the response.  | [optional] 

### Return type

[**List[PolicyApiResponse]**](PolicyApiResponse.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved all policies. |  -  |
**403** | Permission denied. User lacks the Read Policies role. |  -  |
**500** | Internal server error while retrieving policies. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_policy_by_name**
> PolicyApiResponse get_policy_by_name(name, project_key=project_key, include_notify=include_notify)

Get Policy

Returns the details of a specific policy by name, including its rules, criteria, actions, and metadata (author, created/modified timestamps, assigned watches).

Requires the Read Policies role to be set on the User or Group level. For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can get a policy by using the additional query parameter `projectKey`. When `projectKey` is provided, the policy is looked up in both the project scope and globally.


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.policy_api_response import PolicyApiResponse
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
    api_instance = jfrog_client.PoliciesV1Api(api_client)
    name = 'name_example' # str | The name of the policy to retrieve.
    project_key = 'project_key_example' # str | When provided, looks up the policy in the scope of the specified project as well as globally. Requires Xray 3.21.2+ with Projects enabled.  (optional)
    include_notify = 'include_notify_example' # str | When set to true, includes notification-related action fields in the response.  (optional)

    try:
        # Get Policy
        api_response = api_instance.get_policy_by_name(name, project_key=project_key, include_notify=include_notify)
        print("The response of PoliciesV1Api->get_policy_by_name:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV1Api->get_policy_by_name: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The name of the policy to retrieve. | 
 **project_key** | **str**| When provided, looks up the policy in the scope of the specified project as well as globally. Requires Xray 3.21.2+ with Projects enabled.  | [optional] 
 **include_notify** | **str**| When set to true, includes notification-related action fields in the response.  | [optional] 

### Return type

[**PolicyApiResponse**](PolicyApiResponse.md)

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
**500** | Internal server error while retrieving the policy. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_policy**
> AddCustomLicense200Response update_policy(name, policies_policy_mutation_request, project_key=project_key)

Update Policy

Updates an existing policy. The policy name in the URL path is authoritative — it overrides any `name` field in the request body. The full policy definition must be provided (this is a full replacement, not a partial update).

Requires the "Manage Policies" role to be set on the User or Group level. For Xray version 3.21.2 and above with Projects, a Project Admin with Manage Security Assets privilege can update a policy in the scope of a project by using the additional query parameter `projectKey`.


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
    api_instance = jfrog_client.PoliciesV1Api(api_client)
    name = 'name_example' # str | The name of the policy to update. This value takes precedence over any name in the request body. 
    policies_policy_mutation_request = jfrog_client.PoliciesPolicyMutationRequest() # PoliciesPolicyMutationRequest | 
    project_key = 'project_key_example' # str | When provided, the update is scoped to the specified project. Requires Xray 3.21.2+ with Projects enabled.  (optional)

    try:
        # Update Policy
        api_response = api_instance.update_policy(name, policies_policy_mutation_request, project_key=project_key)
        print("The response of PoliciesV1Api->update_policy:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesV1Api->update_policy: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **str**| The name of the policy to update. This value takes precedence over any name in the request body.  | 
 **policies_policy_mutation_request** | [**PoliciesPolicyMutationRequest**](PoliciesPolicyMutationRequest.md)|  | 
 **project_key** | **str**| When provided, the update is scoped to the specified project. Requires Xray 3.21.2+ with Projects enabled.  | [optional] 

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
**400** | Policy name is empty or the policy is not valid.  |  -  |
**403** | Permission denied, or attempting to use a license-type policy without the required license entitlement.  |  -  |
**404** | Policy not found. |  -  |
**415** | Failed to parse the request body. |  -  |
**500** | Internal server error while updating the policy. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

