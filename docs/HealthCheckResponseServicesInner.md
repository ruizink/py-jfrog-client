# HealthCheckResponseServicesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**service_id** | **str** |  | [optional] 
**node_id** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.health_check_response_services_inner import HealthCheckResponseServicesInner

# TODO update the JSON string below
json = "{}"
# create an instance of HealthCheckResponseServicesInner from a JSON string
health_check_response_services_inner_instance = HealthCheckResponseServicesInner.from_json(json)
# print the JSON string representation of the object
print(HealthCheckResponseServicesInner.to_json())

# convert the object into a dict
health_check_response_services_inner_dict = health_check_response_services_inner_instance.to_dict()
# create an instance of HealthCheckResponseServicesInner from a dict
health_check_response_services_inner_from_dict = HealthCheckResponseServicesInner.from_dict(health_check_response_services_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


