# ReportsCveObject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cve** | **str** |  | [optional] 
**cvss_v2_score** | **float** |  | [optional] 
**cvss_v2_vector** | **str** |  | [optional] 
**cvss_v3_score** | **float** |  | [optional] 
**cvss_v3_vector** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.reports_cve_object import ReportsCveObject

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsCveObject from a JSON string
reports_cve_object_instance = ReportsCveObject.from_json(json)
# print the JSON string representation of the object
print(ReportsCveObject.to_json())

# convert the object into a dict
reports_cve_object_dict = reports_cve_object_instance.to_dict()
# create an instance of ReportsCveObject from a dict
reports_cve_object_from_dict = ReportsCveObject.from_dict(reports_cve_object_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


