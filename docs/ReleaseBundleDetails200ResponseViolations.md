# ReleaseBundleDetails200ResponseViolations

Violation details (when include_violations is true).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**license** | **List[object]** |  | [optional] 
**security** | **List[object]** |  | [optional] 
**op_risk** | **List[object]** |  | [optional] 

## Example

```python
from jfrog_client.models.release_bundle_details200_response_violations import ReleaseBundleDetails200ResponseViolations

# TODO update the JSON string below
json = "{}"
# create an instance of ReleaseBundleDetails200ResponseViolations from a JSON string
release_bundle_details200_response_violations_instance = ReleaseBundleDetails200ResponseViolations.from_json(json)
# print the JSON string representation of the object
print(ReleaseBundleDetails200ResponseViolations.to_json())

# convert the object into a dict
release_bundle_details200_response_violations_dict = release_bundle_details200_response_violations_instance.to_dict()
# create an instance of ReleaseBundleDetails200ResponseViolations from a dict
release_bundle_details200_response_violations_from_dict = ReleaseBundleDetails200ResponseViolations.from_dict(release_bundle_details200_response_violations_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


