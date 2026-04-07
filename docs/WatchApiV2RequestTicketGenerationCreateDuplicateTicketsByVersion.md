# WatchApiV2RequestTicketGenerationCreateDuplicateTicketsByVersion

Settings for creating duplicate tickets by version.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**build** | **bool** | Create duplicate tickets for builds. | [optional] 
**package** | **bool** | Create duplicate tickets for packages. | [optional] 
**release_bundle** | **bool** | Create duplicate tickets for release bundles. | [optional] 

## Example

```python
from jfrog_client.models.watch_api_v2_request_ticket_generation_create_duplicate_tickets_by_version import WatchApiV2RequestTicketGenerationCreateDuplicateTicketsByVersion

# TODO update the JSON string below
json = "{}"
# create an instance of WatchApiV2RequestTicketGenerationCreateDuplicateTicketsByVersion from a JSON string
watch_api_v2_request_ticket_generation_create_duplicate_tickets_by_version_instance = WatchApiV2RequestTicketGenerationCreateDuplicateTicketsByVersion.from_json(json)
# print the JSON string representation of the object
print(WatchApiV2RequestTicketGenerationCreateDuplicateTicketsByVersion.to_json())

# convert the object into a dict
watch_api_v2_request_ticket_generation_create_duplicate_tickets_by_version_dict = watch_api_v2_request_ticket_generation_create_duplicate_tickets_by_version_instance.to_dict()
# create an instance of WatchApiV2RequestTicketGenerationCreateDuplicateTicketsByVersion from a dict
watch_api_v2_request_ticket_generation_create_duplicate_tickets_by_version_from_dict = WatchApiV2RequestTicketGenerationCreateDuplicateTicketsByVersion.from_dict(watch_api_v2_request_ticket_generation_create_duplicate_tickets_by_version_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


