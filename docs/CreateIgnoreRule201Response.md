# CreateIgnoreRule201Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**info** | **str** | Success message including the new rule ID. | [optional] 

## Example

```python
from jfrog_client.models.create_ignore_rule201_response import CreateIgnoreRule201Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateIgnoreRule201Response from a JSON string
create_ignore_rule201_response_instance = CreateIgnoreRule201Response.from_json(json)
# print the JSON string representation of the object
print(CreateIgnoreRule201Response.to_json())

# convert the object into a dict
create_ignore_rule201_response_dict = create_ignore_rule201_response_instance.to_dict()
# create an instance of CreateIgnoreRule201Response from a dict
create_ignore_rule201_response_from_dict = CreateIgnoreRule201Response.from_dict(create_ignore_rule201_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


