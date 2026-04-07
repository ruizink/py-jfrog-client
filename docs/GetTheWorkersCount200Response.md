# GetTheWorkersCount200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | [**GetTheWorkersCount200ResponseIndex**](GetTheWorkersCount200ResponseIndex.md) |  | 
**persist** | [**GetTheWorkersCount200ResponseIndex**](GetTheWorkersCount200ResponseIndex.md) |  | 
**analysis** | [**GetTheWorkersCount200ResponseIndex**](GetTheWorkersCount200ResponseIndex.md) |  | 
**alert** | [**GetTheWorkersCount200ResponseIndex**](GetTheWorkersCount200ResponseIndex.md) |  | 
**impact_analysis** | [**GetTheWorkersCount200ResponseImpactAnalysis**](GetTheWorkersCount200ResponseImpactAnalysis.md) |  | 
**notification** | [**GetTheWorkersCount200ResponseImpactAnalysis**](GetTheWorkersCount200ResponseImpactAnalysis.md) |  | 

## Example

```python
from jfrog_client.models.get_the_workers_count200_response import GetTheWorkersCount200Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetTheWorkersCount200Response from a JSON string
get_the_workers_count200_response_instance = GetTheWorkersCount200Response.from_json(json)
# print the JSON string representation of the object
print(GetTheWorkersCount200Response.to_json())

# convert the object into a dict
get_the_workers_count200_response_dict = get_the_workers_count200_response_instance.to_dict()
# create an instance of GetTheWorkersCount200Response from a dict
get_the_workers_count200_response_from_dict = GetTheWorkersCount200Response.from_dict(get_the_workers_count200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


