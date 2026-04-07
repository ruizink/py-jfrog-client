# CreateSignedUrlRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repo_path** | **str** | Full path to the artifact | 
**valid_for_secs** | **int** | Number of seconds since generation before the URL expires | [optional] 
**expiry** | **int** | An expiry date for the URL after which the URL will be invalid, expiry value is in Unix epoch time in milliseconds | [optional] 

## Example

```python
from jfrog_client.models.create_signed_url_request import CreateSignedUrlRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateSignedUrlRequest from a JSON string
create_signed_url_request_instance = CreateSignedUrlRequest.from_json(json)
# print the JSON string representation of the object
print(CreateSignedUrlRequest.to_json())

# convert the object into a dict
create_signed_url_request_dict = create_signed_url_request_instance.to_dict()
# create an instance of CreateSignedUrlRequest from a dict
create_signed_url_request_from_dict = CreateSignedUrlRequest.from_dict(create_signed_url_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


