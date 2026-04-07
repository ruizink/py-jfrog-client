# ListIgnoredViolationsRequestComponentsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**version** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.list_ignored_violations_request_components_inner import ListIgnoredViolationsRequestComponentsInner

# TODO update the JSON string below
json = "{}"
# create an instance of ListIgnoredViolationsRequestComponentsInner from a JSON string
list_ignored_violations_request_components_inner_instance = ListIgnoredViolationsRequestComponentsInner.from_json(json)
# print the JSON string representation of the object
print(ListIgnoredViolationsRequestComponentsInner.to_json())

# convert the object into a dict
list_ignored_violations_request_components_inner_dict = list_ignored_violations_request_components_inner_instance.to_dict()
# create an instance of ListIgnoredViolationsRequestComponentsInner from a dict
list_ignored_violations_request_components_inner_from_dict = ListIgnoredViolationsRequestComponentsInner.from_dict(list_ignored_violations_request_components_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


