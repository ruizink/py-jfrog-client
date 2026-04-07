# Jpd


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** | JPD ID | [optional] 
**name** | **str** | JPD name | [optional] 
**url** | **str** | JPD URL | [optional] 
**status** | [**JpdStatusCode**](JpdStatusCode.md) |  | [optional] 
**tags** | **List[str]** |  | [optional] 

## Example

```python
from jfrog_client.models.jpd import Jpd

# TODO update the JSON string below
json = "{}"
# create an instance of Jpd from a JSON string
jpd_instance = Jpd.from_json(json)
# print the JSON string representation of the object
print(Jpd.to_json())

# convert the object into a dict
jpd_dict = jpd_instance.to_dict()
# create an instance of Jpd from a dict
jpd_from_dict = Jpd.from_dict(jpd_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


