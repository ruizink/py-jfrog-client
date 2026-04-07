# RubyGemVersion


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authors** | **str** |  | [optional] 
**built_at** | **datetime** |  | [optional] 
**created_at** | **datetime** |  | [optional] 
**description** | **str** |  | [optional] 
**downloads_count** | **int** |  | [optional] 
**metadata** | **Dict[str, object]** |  | [optional] 
**number** | **str** |  | [optional] 
**summary** | **str** |  | [optional] 
**platform** | **str** |  | [optional] 
**ruby_version** | **str** |  | [optional] 
**prerelease** | **bool** |  | [optional] 
**licenses** | **List[str]** |  | [optional] 
**requirements** | **List[str]** |  | [optional] 
**sha** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.ruby_gem_version import RubyGemVersion

# TODO update the JSON string below
json = "{}"
# create an instance of RubyGemVersion from a JSON string
ruby_gem_version_instance = RubyGemVersion.from_json(json)
# print the JSON string representation of the object
print(RubyGemVersion.to_json())

# convert the object into a dict
ruby_gem_version_dict = ruby_gem_version_instance.to_dict()
# create an instance of RubyGemVersion from a dict
ruby_gem_version_from_dict = RubyGemVersion.from_dict(ruby_gem_version_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


