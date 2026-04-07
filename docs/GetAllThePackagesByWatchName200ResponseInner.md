# GetAllThePackagesByWatchName200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Package name. | [optional] 
**version** | **str** | Package version. | [optional] 
**type** | **str** | Package type (e.g., npm, maven). | [optional] 

## Example

```python
from jfrog_client.models.get_all_the_packages_by_watch_name200_response_inner import GetAllThePackagesByWatchName200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetAllThePackagesByWatchName200ResponseInner from a JSON string
get_all_the_packages_by_watch_name200_response_inner_instance = GetAllThePackagesByWatchName200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(GetAllThePackagesByWatchName200ResponseInner.to_json())

# convert the object into a dict
get_all_the_packages_by_watch_name200_response_inner_dict = get_all_the_packages_by_watch_name200_response_inner_instance.to_dict()
# create an instance of GetAllThePackagesByWatchName200ResponseInner from a dict
get_all_the_packages_by_watch_name200_response_inner_from_dict = GetAllThePackagesByWatchName200ResponseInner.from_dict(get_all_the_packages_by_watch_name200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


