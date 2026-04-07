# LicenseBucketCreate


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** | Bucket&#39;s name in Mission Control | 
**url** | **str** | URL to download the encrypted bucket file | 
**key** | **str** | Key used to decrypt the bucket | 

## Example

```python
from jfrog_client.models.license_bucket_create import LicenseBucketCreate

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseBucketCreate from a JSON string
license_bucket_create_instance = LicenseBucketCreate.from_json(json)
# print the JSON string representation of the object
print(LicenseBucketCreate.to_json())

# convert the object into a dict
license_bucket_create_dict = license_bucket_create_instance.to_dict()
# create an instance of LicenseBucketCreate from a dict
license_bucket_create_from_dict = LicenseBucketCreate.from_dict(license_bucket_create_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


