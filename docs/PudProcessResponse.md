# PudProcessResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**info** | **str** | Information message about the PUD process | [optional] 

## Example

```python
from jfrog_client.models.pud_process_response import PudProcessResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PudProcessResponse from a JSON string
pud_process_response_instance = PudProcessResponse.from_json(json)
# print the JSON string representation of the object
print(PudProcessResponse.to_json())

# convert the object into a dict
pud_process_response_dict = pud_process_response_instance.to_dict()
# create an instance of PudProcessResponse from a dict
pud_process_response_from_dict = PudProcessResponse.from_dict(pud_process_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


