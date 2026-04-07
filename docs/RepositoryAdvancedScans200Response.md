# RepositoryAdvancedScans200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**info** | **str** | Status message. | [optional] 
**scan_id** | **int** | Unique scan identifier for tracking progress. | [optional] 

## Example

```python
from jfrog_client.models.repository_advanced_scans200_response import RepositoryAdvancedScans200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RepositoryAdvancedScans200Response from a JSON string
repository_advanced_scans200_response_instance = RepositoryAdvancedScans200Response.from_json(json)
# print the JSON string representation of the object
print(RepositoryAdvancedScans200Response.to_json())

# convert the object into a dict
repository_advanced_scans200_response_dict = repository_advanced_scans200_response_instance.to_dict()
# create an instance of RepositoryAdvancedScans200Response from a dict
repository_advanced_scans200_response_from_dict = RepositoryAdvancedScans200Response.from_dict(repository_advanced_scans200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


