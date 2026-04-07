# AccessFederationListItem

One row from GET /federation. Matches Mission Control JSON where `AccessFederationConfiguration` is unwrapped together with `source` and optional `error`. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**source** | **str** | Source JPD id or display name | [optional] 
**error** | **str** | Error message when the configuration could not be retrieved from this JPD | [optional] 
**entities** | [**List[AccessFederationEntityType]**](AccessFederationEntityType.md) |  | [optional] 
**targets** | [**List[AccessFederationTarget]**](AccessFederationTarget.md) |  | [optional] 

## Example

```python
from jfrog_client.models.access_federation_list_item import AccessFederationListItem

# TODO update the JSON string below
json = "{}"
# create an instance of AccessFederationListItem from a JSON string
access_federation_list_item_instance = AccessFederationListItem.from_json(json)
# print the JSON string representation of the object
print(AccessFederationListItem.to_json())

# convert the object into a dict
access_federation_list_item_dict = access_federation_list_item_instance.to_dict()
# create an instance of AccessFederationListItem from a dict
access_federation_list_item_from_dict = AccessFederationListItem.from_dict(access_federation_list_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


