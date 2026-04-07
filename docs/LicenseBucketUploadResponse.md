# LicenseBucketUploadResponse


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subject** | **str** |  | [optional] 
**product_name** | **str** |  | [optional] 
**product_id** | **int** |  | [optional] 
**license_type** | **str** |  | [optional] 
**issued_date** | **datetime** |  | [optional] 
**valid_date** | **datetime** |  | [optional] 
**quantity** | **int** |  | [optional] 
**identifier** | **str** |  | [optional] 
**signature** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**used** | **int** |  | [optional] 

## Example

```python
from jfrog_client.models.license_bucket_upload_response import LicenseBucketUploadResponse

# TODO update the JSON string below
json = "{}"
# create an instance of LicenseBucketUploadResponse from a JSON string
license_bucket_upload_response_instance = LicenseBucketUploadResponse.from_json(json)
# print the JSON string representation of the object
print(LicenseBucketUploadResponse.to_json())

# convert the object into a dict
license_bucket_upload_response_dict = license_bucket_upload_response_instance.to_dict()
# create an instance of LicenseBucketUploadResponse from a dict
license_bucket_upload_response_from_dict = LicenseBucketUploadResponse.from_dict(license_bucket_upload_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


