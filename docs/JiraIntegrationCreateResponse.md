# JiraIntegrationCreateResponse

Create/update success or error wrapper (PDF).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**info** | **str** | Present on success. | [optional] 
**error** | **str** | Present on failure responses. | [optional] 

## Example

```python
from jfrog_client.models.jira_integration_create_response import JiraIntegrationCreateResponse

# TODO update the JSON string below
json = "{}"
# create an instance of JiraIntegrationCreateResponse from a JSON string
jira_integration_create_response_instance = JiraIntegrationCreateResponse.from_json(json)
# print the JSON string representation of the object
print(JiraIntegrationCreateResponse.to_json())

# convert the object into a dict
jira_integration_create_response_dict = jira_integration_create_response_instance.to_dict()
# create an instance of JiraIntegrationCreateResponse from a dict
jira_integration_create_response_from_dict = JiraIntegrationCreateResponse.from_dict(jira_integration_create_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


