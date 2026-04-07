# WatchApiV2RequestTicketGeneration

Ticket generation settings for the Watch.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**create_duplicate_tickets** | [**WatchApiV2RequestTicketGenerationCreateDuplicateTickets**](WatchApiV2RequestTicketGenerationCreateDuplicateTickets.md) |  | [optional] 
**impact_path_profiles_mapping** | [**WatchApiV2RequestTicketGenerationImpactPathProfilesMapping**](WatchApiV2RequestTicketGenerationImpactPathProfilesMapping.md) |  | [optional] 
**create_tickets_for_ignored_violation** | **bool** | Whether to create Jira tickets for policy violations that have been marked as ignored. | [optional] 

## Example

```python
from jfrog_client.models.watch_api_v2_request_ticket_generation import WatchApiV2RequestTicketGeneration

# TODO update the JSON string below
json = "{}"
# create an instance of WatchApiV2RequestTicketGeneration from a JSON string
watch_api_v2_request_ticket_generation_instance = WatchApiV2RequestTicketGeneration.from_json(json)
# print the JSON string representation of the object
print(WatchApiV2RequestTicketGeneration.to_json())

# convert the object into a dict
watch_api_v2_request_ticket_generation_dict = watch_api_v2_request_ticket_generation_instance.to_dict()
# create an instance of WatchApiV2RequestTicketGeneration from a dict
watch_api_v2_request_ticket_generation_from_dict = WatchApiV2RequestTicketGeneration.from_dict(watch_api_v2_request_ticket_generation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


