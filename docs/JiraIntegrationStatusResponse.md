# JiraIntegrationStatusResponse

Integration health check (PDF §21.3).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **str** | HEALTHY_INTEGRATION, INTEGRATION_NOT_FOUND, INTERNAL_SERVER_ERROR, FAULTY_CONFIGURATION. | 
**reason** | **str** |  | 
**time** | **str** | RFC 3339 timestamp. | 
**integration_name** | **str** |  | 

## Example

```python
from jfrog_client.models.jira_integration_status_response import JiraIntegrationStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of JiraIntegrationStatusResponse from a JSON string
jira_integration_status_response_instance = JiraIntegrationStatusResponse.from_json(json)
# print the JSON string representation of the object
print(JiraIntegrationStatusResponse.to_json())

# convert the object into a dict
jira_integration_status_response_dict = jira_integration_status_response_instance.to_dict()
# create an instance of JiraIntegrationStatusResponse from a dict
jira_integration_status_response_from_dict = JiraIntegrationStatusResponse.from_dict(jira_integration_status_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


