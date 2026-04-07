# JiraIntegrationUpdateRequest

Update Jira integration (PDF §21.4 — JSON body; path carries connection name; query parameters none).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**connection_name** | **str** | Name of the connection to update. | 
**auth_type** | **str** |  | [optional] 
**username** | **str** |  | [optional] 
**password** | **str** |  | [optional] 
**installation_type** | **str** |  | [optional] 
**jira_server_url** | **str** |  | [optional] 
**skip_proxy** | **bool** |  | [optional] [default to False]

## Example

```python
from jfrog_client.models.jira_integration_update_request import JiraIntegrationUpdateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of JiraIntegrationUpdateRequest from a JSON string
jira_integration_update_request_instance = JiraIntegrationUpdateRequest.from_json(json)
# print the JSON string representation of the object
print(JiraIntegrationUpdateRequest.to_json())

# convert the object into a dict
jira_integration_update_request_dict = jira_integration_update_request_instance.to_dict()
# create an instance of JiraIntegrationUpdateRequest from a dict
jira_integration_update_request_from_dict = JiraIntegrationUpdateRequest.from_dict(jira_integration_update_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


