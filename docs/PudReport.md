# PudReport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_binaries_processed** | **int** | The total number of binaries processed thus far | [optional] 
**total_binaries_cleaned** | **int** | The total number of binaries removed thus far | [optional] 
**total_bytes_cleaned** | **int** | The total number of bytes reclaimed by the PUD process | [optional] 

## Example

```python
from jfrog_client.models.pud_report import PudReport

# TODO update the JSON string below
json = "{}"
# create an instance of PudReport from a JSON string
pud_report_instance = PudReport.from_json(json)
# print the JSON string representation of the object
print(PudReport.to_json())

# convert the object into a dict
pud_report_dict = pud_report_instance.to_dict()
# create an instance of PudReport from a dict
pud_report_from_dict = PudReport.from_dict(pud_report_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


