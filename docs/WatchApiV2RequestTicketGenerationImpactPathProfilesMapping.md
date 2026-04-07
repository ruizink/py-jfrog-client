# WatchApiV2RequestTicketGenerationImpactPathProfilesMapping

Mapping of impact path profiles.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**include** | [**List[WatchApiV2RequestTicketGenerationImpactPathProfilesMappingIncludeInner]**](WatchApiV2RequestTicketGenerationImpactPathProfilesMappingIncludeInner.md) | Impact path to Jira profile mappings. | [optional] 

## Example

```python
from jfrog_client.models.watch_api_v2_request_ticket_generation_impact_path_profiles_mapping import WatchApiV2RequestTicketGenerationImpactPathProfilesMapping

# TODO update the JSON string below
json = "{}"
# create an instance of WatchApiV2RequestTicketGenerationImpactPathProfilesMapping from a JSON string
watch_api_v2_request_ticket_generation_impact_path_profiles_mapping_instance = WatchApiV2RequestTicketGenerationImpactPathProfilesMapping.from_json(json)
# print the JSON string representation of the object
print(WatchApiV2RequestTicketGenerationImpactPathProfilesMapping.to_json())

# convert the object into a dict
watch_api_v2_request_ticket_generation_impact_path_profiles_mapping_dict = watch_api_v2_request_ticket_generation_impact_path_profiles_mapping_instance.to_dict()
# create an instance of WatchApiV2RequestTicketGenerationImpactPathProfilesMapping from a dict
watch_api_v2_request_ticket_generation_impact_path_profiles_mapping_from_dict = WatchApiV2RequestTicketGenerationImpactPathProfilesMapping.from_dict(watch_api_v2_request_ticket_generation_impact_path_profiles_mapping_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


