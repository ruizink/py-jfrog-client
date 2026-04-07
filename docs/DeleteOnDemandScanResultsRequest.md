# DeleteOnDemandScanResultsRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**scan_ids** | **List[str]** | List of scan IDs to delete. | 

## Example

```python
from jfrog_client.models.delete_on_demand_scan_results_request import DeleteOnDemandScanResultsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteOnDemandScanResultsRequest from a JSON string
delete_on_demand_scan_results_request_instance = DeleteOnDemandScanResultsRequest.from_json(json)
# print the JSON string representation of the object
print(DeleteOnDemandScanResultsRequest.to_json())

# convert the object into a dict
delete_on_demand_scan_results_request_dict = delete_on_demand_scan_results_request_instance.to_dict()
# create an instance of DeleteOnDemandScanResultsRequest from a dict
delete_on_demand_scan_results_request_from_dict = DeleteOnDemandScanResultsRequest.from_dict(delete_on_demand_scan_results_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


