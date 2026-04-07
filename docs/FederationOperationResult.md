# FederationOperationResult

Result entry from configure-federation operations (snake_case JSON)

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**label** | **str** | Operation or step label | [optional] 
**status** | **str** | Result severity | [optional] 
**status_message** | **str** | Detail message when status is WARNING or ERROR | [optional] 

## Example

```python
from jfrog_client.models.federation_operation_result import FederationOperationResult

# TODO update the JSON string below
json = "{}"
# create an instance of FederationOperationResult from a JSON string
federation_operation_result_instance = FederationOperationResult.from_json(json)
# print the JSON string representation of the object
print(FederationOperationResult.to_json())

# convert the object into a dict
federation_operation_result_dict = federation_operation_result_instance.to_dict()
# create an instance of FederationOperationResult from a dict
federation_operation_result_from_dict = FederationOperationResult.from_dict(federation_operation_result_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


