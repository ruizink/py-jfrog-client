# JiraIntegrationCreateRequest

Create Jira integration (PDF §21.1 — JSON body; query parameters none).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connection_name** | **str** | A unique identifier for the connection. | 
**auth_type** | **str** | Authentication method. Valid values — basic. | 
**username** | **str** | Username for authentication. | 
**password** | **str** | Password for authentication. | 
**installation_type** | **str** | cloud or server. | 
**jira_server_url** | **str** | URL of the Jira server where tickets will be created. | 
**skip_proxy** | **bool** | Whether to bypass proxy settings. Default false. | [optional] [default to False]

## Example

```python
from jfrog_client.models.jira_integration_create_request import JiraIntegrationCreateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of JiraIntegrationCreateRequest from a JSON string
jira_integration_create_request_instance = JiraIntegrationCreateRequest.from_json(json)
# print the JSON string representation of the object
print(JiraIntegrationCreateRequest.to_json())

# convert the object into a dict
jira_integration_create_request_dict = jira_integration_create_request_instance.to_dict()
# create an instance of JiraIntegrationCreateRequest from a dict
jira_integration_create_request_from_dict = JiraIntegrationCreateRequest.from_dict(jira_integration_create_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


