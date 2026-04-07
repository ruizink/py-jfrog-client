# ListIgnoredViolationsRequest

Filters for listing ignored violations. All fields are optional. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**vulnerabilities** | **List[str]** | List of vulnerability IDs (XRAY-nnnnn) to filter by. | [optional] 
**licenses** | **List[str]** | List of licenses to filter by. | [optional] 
**cves** | **List[str]** | List of CVEs to filter by. | [optional] 
**operational_risk** | **List[str]** | List of operational risk packages to filter by. | [optional] 
**exposures** | **List[str]** | List of exposures to filter by. | [optional] 
**packages** | **List[str]** | List of packages to filter by. | [optional] 
**policies** | **List[str]** | List of policies to filter by. | [optional] 
**watches** | **List[str]** | List of watches to filter by. | [optional] 
**projects** | **List[str]** | List of projects to filter by. | [optional] 
**git_repositories** | **List[str]** | List of git repositories to filter by. | [optional] 
**components** | [**List[ListIgnoredViolationsRequestComponentsInner]**](ListIgnoredViolationsRequestComponentsInner.md) | List of components to filter by (name required, version optional). | [optional] 
**docker_layers** | **List[str]** | List of Docker layer SHA256 hashes. | [optional] 
**artifacts** | [**List[ListIgnoredViolationsRequestArtifactsInner]**](ListIgnoredViolationsRequestArtifactsInner.md) | List of artifacts to filter by (name required). | [optional] 
**builds** | [**List[ListIgnoredViolationsRequestComponentsInner]**](ListIgnoredViolationsRequestComponentsInner.md) | List of builds to filter by. | [optional] 
**release_bundles** | [**List[ListIgnoredViolationsRequestComponentsInner]**](ListIgnoredViolationsRequestComponentsInner.md) | List of release bundles to filter by. | [optional] 
**release_bundles_v2** | [**List[ListIgnoredViolationsRequestComponentsInner]**](ListIgnoredViolationsRequestComponentsInner.md) | List of v2 release bundles to filter by. | [optional] 

## Example

```python
from jfrog_client.models.list_ignored_violations_request import ListIgnoredViolationsRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ListIgnoredViolationsRequest from a JSON string
list_ignored_violations_request_instance = ListIgnoredViolationsRequest.from_json(json)
# print the JSON string representation of the object
print(ListIgnoredViolationsRequest.to_json())

# convert the object into a dict
list_ignored_violations_request_dict = list_ignored_violations_request_instance.to_dict()
# create an instance of ListIgnoredViolationsRequest from a dict
list_ignored_violations_request_from_dict = ListIgnoredViolationsRequest.from_dict(list_ignored_violations_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


