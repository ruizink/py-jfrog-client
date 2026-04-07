# LicenseBucket


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**identifier** | **str** | Bucket identifier | [optional] 
**name** | **str** | Bucket name | [optional] 
**size** | **int** | Number of licenses in the bucket | [optional] 
**license_type** | **str** | License type | [optional] 

## Example

```python
from jfrog_client.models.license_bucket import LicenseBucket

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseBucket from a JSON string
license_bucket_instance = LicenseBucket.from_json(json)
# print the JSON string representation of the object
print(LicenseBucket.to_json())

# convert the object into a dict
license_bucket_dict = license_bucket_instance.to_dict()
# create an instance of LicenseBucket from a dict
license_bucket_from_dict = LicenseBucket.from_dict(license_bucket_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


