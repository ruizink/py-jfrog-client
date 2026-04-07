# PolicyBlockDownload

Controls whether artifact downloads are blocked.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **bool** | Block download of artifacts that match the rule. | [optional] 
**unscanned** | **bool** | Block download of artifacts that have not been scanned. | [optional] 
**grace_period_days** | **int** | Grace period in days before blocking takes effect. Allows time to address the issue.  | [optional] 

## Example

```python
from jfrog_client.models.policy_block_download import PolicyBlockDownload

# TODO update the JSON string below
json = "{}"
# create an instance of PolicyBlockDownload from a JSON string
policy_block_download_instance = PolicyBlockDownload.from_json(json)
# print the JSON string representation of the object
print(PolicyBlockDownload.to_json())

# convert the object into a dict
policy_block_download_dict = policy_block_download_instance.to_dict()
# create an instance of PolicyBlockDownload from a dict
policy_block_download_from_dict = PolicyBlockDownload.from_dict(policy_block_download_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


