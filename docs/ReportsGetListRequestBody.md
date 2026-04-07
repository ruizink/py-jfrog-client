# ReportsGetListRequestBody

Optional request body for filtering the reports list. If omitted or empty, all reports are returned (subject to pagination). 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filters** | [**ReportsGetListRequestBodyFilters**](ReportsGetListRequestBodyFilters.md) |  | [optional] 

## Example

```python
from jfrog_client.models.reports_get_list_request_body import ReportsGetListRequestBody

# TODO update the JSON string below
json = "{}"
# create an instance of ReportsGetListRequestBody from a JSON string
reports_get_list_request_body_instance = ReportsGetListRequestBody.from_json(json)
# print the JSON string representation of the object
print(ReportsGetListRequestBody.to_json())

# convert the object into a dict
reports_get_list_request_body_dict = reports_get_list_request_body_instance.to_dict()
# create an instance of ReportsGetListRequestBody from a dict
reports_get_list_request_body_from_dict = ReportsGetListRequestBody.from_dict(reports_get_list_request_body_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


