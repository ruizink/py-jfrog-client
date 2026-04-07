# ReportsCvssScoreRange


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**min_score** | **float** | Minimum CVSS score | [optional] 
**max_score** | **float** | Maximum CVSS score | [optional] 

## Example

```python
from jfrog_client.models.reports_cvss_score_range import ReportsCvssScoreRange

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsCvssScoreRange from a JSON string
reports_cvss_score_range_instance = ReportsCvssScoreRange.from_json(json)
# print the JSON string representation of the object
print(ReportsCvssScoreRange.to_json())

# convert the object into a dict
reports_cvss_score_range_dict = reports_cvss_score_range_instance.to_dict()
# create an instance of ReportsCvssScoreRange from a dict
reports_cvss_score_range_from_dict = ReportsCvssScoreRange.from_dict(reports_cvss_score_range_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


