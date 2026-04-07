# GetIgnoreRules200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[IgnoreRuleApiResponse]**](IgnoreRuleApiResponse.md) |  | [optional] 
**total_count** | **int** | Total number of matching ignore rules. | [optional] 

## Example

```python
from jfrog_client.models.get_ignore_rules200_response import GetIgnoreRules200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetIgnoreRules200Response from a JSON string
get_ignore_rules200_response_instance = GetIgnoreRules200Response.from_json(json)
# print the JSON string representation of the object
print(GetIgnoreRules200Response.to_json())

# convert the object into a dict
get_ignore_rules200_response_dict = get_ignore_rules200_response_instance.to_dict()
# create an instance of GetIgnoreRules200Response from a dict
get_ignore_rules200_response_from_dict = GetIgnoreRules200Response.from_dict(get_ignore_rules200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


