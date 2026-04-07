# ValidateFederationTargetRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**url** | **str** | The target server URL to validate | 

## Example

```python
from jfrog_client.models.validate_federation_target_request import ValidateFederationTargetRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ValidateFederationTargetRequest from a JSON string
validate_federation_target_request_instance = ValidateFederationTargetRequest.from_json(json)
# print the JSON string representation of the object
print(ValidateFederationTargetRequest.to_json())

# convert the object into a dict
validate_federation_target_request_dict = validate_federation_target_request_instance.to_dict()
# create an instance of ValidateFederationTargetRequest from a dict
validate_federation_target_request_from_dict = ValidateFederationTargetRequest.from_dict(validate_federation_target_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


