# GetReportDetailsById200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** | Report identifier. | [optional] 
**name** | **str** | Report name. | [optional] 
**status** | **str** | Report status, e.g. pending, running, completed, failed. | [optional] 
**total_artifacts** | **int** | Total number of artifacts in the report scope. | [optional] 
**num_of_processed_artifacts** | **int** | Number of artifacts processed so far. | [optional] 
**progress** | **int** | Progress percentage (0-100). | [optional] 
**number_of_rows** | **int** | Number of result rows. | [optional] 
**start_time** | **str** | Report generation start time. | [optional] 
**end_time_estimation** | **str** | Estimated end time. | [optional] 
**error** | **str** | Error message in case of failure. | [optional] 
**author** | **str** | User who initiated the report. | [optional] 
**report_type** | **str** | Type of report, e.g. license, vulnerability, operational_risk. | [optional] 

## Example

```python
from jfrog_client.models.get_report_details_by_id200_response import GetReportDetailsById200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetReportDetailsById200Response from a JSON string
get_report_details_by_id200_response_instance = GetReportDetailsById200Response.from_json(json)
# print the JSON string representation of the object
print(GetReportDetailsById200Response.to_json())

# convert the object into a dict
get_report_details_by_id200_response_dict = get_report_details_by_id200_response_instance.to_dict()
# create an instance of GetReportDetailsById200Response from a dict
get_report_details_by_id200_response_from_dict = GetReportDetailsById200Response.from_dict(get_report_details_by_id200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


