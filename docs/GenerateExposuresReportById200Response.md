# GenerateExposuresReportById200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_rows** | **int** | Total number of rows in the report. | [optional] 
**rows** | **List[object]** | List of exposure report rows. | [optional] 

## Example

```python
from jfrog_client.models.generate_exposures_report_by_id200_response import GenerateExposuresReportById200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GenerateExposuresReportById200Response from a JSON string
generate_exposures_report_by_id200_response_instance = GenerateExposuresReportById200Response.from_json(json)
# print the JSON string representation of the object
print(GenerateExposuresReportById200Response.to_json())

# convert the object into a dict
generate_exposures_report_by_id200_response_dict = generate_exposures_report_by_id200_response_instance.to_dict()
# create an instance of GenerateExposuresReportById200Response from a dict
generate_exposures_report_by_id200_response_from_dict = GenerateExposuresReportById200Response.from_dict(generate_exposures_report_by_id200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


