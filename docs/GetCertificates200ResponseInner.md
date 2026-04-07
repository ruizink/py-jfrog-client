# GetCertificates200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**certificate_alias** | **str** |  | [optional] 
**issued_to** | **str** |  | [optional] 
**issued_by** | **str** |  | [optional] 
**issued_on** | **datetime** |  | [optional] 
**valid_until** | **datetime** |  | [optional] 
**finger_print** | **str** |  | [optional] 

## Example

```python
from jfrog_client.models.get_certificates200_response_inner import GetCertificates200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of GetCertificates200ResponseInner from a JSON string
get_certificates200_response_inner_instance = GetCertificates200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(GetCertificates200ResponseInner.to_json())

# convert the object into a dict
get_certificates200_response_inner_dict = get_certificates200_response_inner_instance.to_dict()
# create an instance of GetCertificates200ResponseInner from a dict
get_certificates200_response_inner_from_dict = GetCertificates200ResponseInner.from_dict(get_certificates200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


