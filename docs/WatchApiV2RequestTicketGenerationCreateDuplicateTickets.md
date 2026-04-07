# WatchApiV2RequestTicketGenerationCreateDuplicateTickets

Settings for creating duplicate tickets.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**by_version** | [**WatchApiV2RequestTicketGenerationCreateDuplicateTicketsByVersion**](WatchApiV2RequestTicketGenerationCreateDuplicateTicketsByVersion.md) |  | [optional] 

## Example

```python
from jfrog_client.models.watch_api_v2_request_ticket_generation_create_duplicate_tickets import WatchApiV2RequestTicketGenerationCreateDuplicateTickets

# TODO update the JSON string below
json = "{}"
# create an instance of WatchApiV2RequestTicketGenerationCreateDuplicateTickets from a JSON string
watch_api_v2_request_ticket_generation_create_duplicate_tickets_instance = WatchApiV2RequestTicketGenerationCreateDuplicateTickets.from_json(json)
# print the JSON string representation of the object
print(WatchApiV2RequestTicketGenerationCreateDuplicateTickets.to_json())

# convert the object into a dict
watch_api_v2_request_ticket_generation_create_duplicate_tickets_dict = watch_api_v2_request_ticket_generation_create_duplicate_tickets_instance.to_dict()
# create an instance of WatchApiV2RequestTicketGenerationCreateDuplicateTickets from a dict
watch_api_v2_request_ticket_generation_create_duplicate_tickets_from_dict = WatchApiV2RequestTicketGenerationCreateDuplicateTickets.from_dict(watch_api_v2_request_ticket_generation_create_duplicate_tickets_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


