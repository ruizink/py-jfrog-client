# JpdCreateLocation

Geographic location of the JPD

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**city_name** | **str** | City name | 
**country_code** | **str** | Two-letter country code (ISO 3166-1 alpha-2) | 
**latitude** | **float** | Latitude coordinate | 
**longitude** | **float** | Longitude coordinate | 

## Example

```python
from jfrog_client.models.jpd_create_location import JpdCreateLocation

# TODO update the JSON string below
json = "{}"
# create an instance of JpdCreateLocation from a JSON string
jpd_create_location_instance = JpdCreateLocation.from_json(json)
# print the JSON string representation of the object
print(JpdCreateLocation.to_json())

# convert the object into a dict
jpd_create_location_dict = jpd_create_location_instance.to_dict()
# create an instance of JpdCreateLocation from a dict
jpd_create_location_from_dict = JpdCreateLocation.from_dict(jpd_create_location_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


