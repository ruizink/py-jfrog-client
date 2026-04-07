# CreateSupportBundle200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | [optional] 
**artifactory** | [**CreateSupportBundle200ResponseArtifactory**](CreateSupportBundle200ResponseArtifactory.md) |  | [optional] 

## Example

```python
from jfrog_client.models.create_support_bundle200_response import CreateSupportBundle200Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateSupportBundle200Response from a JSON string
create_support_bundle200_response_instance = CreateSupportBundle200Response.from_json(json)
# print the JSON string representation of the object
print(CreateSupportBundle200Response.to_json())

# convert the object into a dict
create_support_bundle200_response_dict = create_support_bundle200_response_instance.to_dict()
# create an instance of CreateSupportBundle200Response from a dict
create_support_bundle200_response_from_dict = CreateSupportBundle200Response.from_dict(create_support_bundle200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


