# Checksums


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**md5** | **str** |  | [optional] 
**sha1** | **str** |  | [optional] 
**sha256** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.checksums import Checksums

# TODO update the JSON string below
json = "{}"
# create an instance of Checksums from a JSON string
checksums_instance = Checksums.from_json(json)
# print the JSON string representation of the object
print(Checksums.to_json())

# convert the object into a dict
checksums_dict = checksums_instance.to_dict()
# create an instance of Checksums from a dict
checksums_from_dict = Checksums.from_dict(checksums_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


