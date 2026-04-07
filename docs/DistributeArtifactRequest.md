# DistributeArtifactRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**publish** | **bool** | If true, artifacts are published when deployed to Bintray. Default true. | [optional] [default to True]
**override_existing_files** | **bool** | If true, Artifactory overwrites files already existing in the target path in Bintray. Existing version attributes are also overridden if defined in the distribution repository Advanced Configuration. Default false. | [optional] [default to False]
**gpg_passphrase** | **str** | If specified, Artifactory will GPG sign the version deployed to Bintray and apply the specified passphrase | [optional] 
**var_async** | **bool** | If true, the artifact will be distributed asynchronously. Errors and warnings may be viewed in the log file. Default false. | [optional] [default to False]
**target_repo** | **str** | The Distribution Repository into which artifacts should be deployed | 
**packages_repo_paths** | **List[str]** | An array of local or distribution repositories and corresponding paths to artifacts that should be deployed to the specified target repository in Bintray | 
**dry_run** | **bool** | If true, distribution is only simulated. No files are actually moved. Default false. | [optional] [default to False]

## Example

```python
from jfrog_client.models.distribute_artifact_request import DistributeArtifactRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DistributeArtifactRequest from a JSON string
distribute_artifact_request_instance = DistributeArtifactRequest.from_json(json)
# print the JSON string representation of the object
print(DistributeArtifactRequest.to_json())

# convert the object into a dict
distribute_artifact_request_dict = distribute_artifact_request_instance.to_dict()
# create an instance of DistributeArtifactRequest from a dict
distribute_artifact_request_from_dict = DistributeArtifactRequest.from_dict(distribute_artifact_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


