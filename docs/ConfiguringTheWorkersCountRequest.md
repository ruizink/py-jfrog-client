# ConfiguringTheWorkersCountRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | [**ConfiguringTheWorkersCountRequestIndex**](ConfiguringTheWorkersCountRequestIndex.md) |  | [optional] 
**persist** | [**ConfiguringTheWorkersCountRequestPersist**](ConfiguringTheWorkersCountRequestPersist.md) |  | [optional] 
**analysis** | [**ConfiguringTheWorkersCountRequestPersist**](ConfiguringTheWorkersCountRequestPersist.md) |  | [optional] 
**alert** | [**ConfiguringTheWorkersCountRequestPersist**](ConfiguringTheWorkersCountRequestPersist.md) |  | [optional] 
**impact_analysis** | [**ConfiguringTheWorkersCountRequestImpactAnalysis**](ConfiguringTheWorkersCountRequestImpactAnalysis.md) |  | [optional] 
**notification** | [**ConfiguringTheWorkersCountRequestImpactAnalysis**](ConfiguringTheWorkersCountRequestImpactAnalysis.md) |  | [optional] 

## Example

```python
from jfrog_client.models.configuring_the_workers_count_request import ConfiguringTheWorkersCountRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ConfiguringTheWorkersCountRequest from a JSON string
configuring_the_workers_count_request_instance = ConfiguringTheWorkersCountRequest.from_json(json)
# print the JSON string representation of the object
print(ConfiguringTheWorkersCountRequest.to_json())

# convert the object into a dict
configuring_the_workers_count_request_dict = configuring_the_workers_count_request_instance.to_dict()
# create an instance of ConfiguringTheWorkersCountRequest from a dict
configuring_the_workers_count_request_from_dict = ConfiguringTheWorkersCountRequest.from_dict(configuring_the_workers_count_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


