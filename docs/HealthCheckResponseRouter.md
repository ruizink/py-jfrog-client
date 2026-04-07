# HealthCheckResponseRouter


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**node_id** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**message** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.health_check_response_router import HealthCheckResponseRouter

# TODO update the JSON string below
json = "{}"
# create an instance of HealthCheckResponseRouter from a JSON string
health_check_response_router_instance = HealthCheckResponseRouter.from_json(json)
# print the JSON string representation of the object
print(HealthCheckResponseRouter.to_json())

# convert the object into a dict
health_check_response_router_dict = health_check_response_router_instance.to_dict()
# create an instance of HealthCheckResponseRouter from a dict
health_check_response_router_from_dict = HealthCheckResponseRouter.from_dict(health_check_response_router_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


