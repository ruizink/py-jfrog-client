# jfrog_client.DeployArtifactAPIsApi

All URIs are relative to *https://myserver.jfrog.io*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deploy_artifact**](DeployArtifactAPIsApi.md#deploy_artifact) | **PUT** /artifactory/api/{repoKey}/{filePath} | Deploy Artifact or Create Directory
[**deploy_artifact_by_checksum**](DeployArtifactAPIsApi.md#deploy_artifact_by_checksum) | **PUT** /artifactory/api/{repoKey}/{filePath}/checksum | Deploy Artifact by Checksum
[**deploy_artifacts_from_archive**](DeployArtifactAPIsApi.md#deploy_artifacts_from_archive) | **PUT** /artifactory/api/{repoKey}/{archivePath} | Deploy Artifacts from Archive


# **deploy_artifact**
> ItemCreated deploy_artifact(repo_key, file_path, x_checksum_sha1=x_checksum_sha1, x_checksum_sha256=x_checksum_sha256, body=body)

Deploy Artifact or Create Directory

**Deploy Artifact**: Deploy an artifact to the specified destination.

**Create Directory**: Create a new directory by specifying a path that ends with `/` and omitting the request body.

You can also attach properties as part of deploying artifacts or creating directories.

Important: In certain cases (particularly when working with large artifacts), the Created timestamp might be later than the Last Modified timestamp. This can occur because the Last Modified timestamp records when the upload began, whereas the Created timestamp is set only when the upload is complete and committed to the database.

Security: Requires a user with 'deploy' permissions (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.item_created import ItemCreated
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = jfrog_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.DeployArtifactAPIsApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    file_path = 'file_path_example' # str | Path to the artifact or directory within the repository. For directories, the path must end with `/`.
    x_checksum_sha1 = 'x_checksum_sha1_example' # str | SHA1 checksum to verify the integrity of the deployment. Artifactory rejects the deployment if the checksum does not match. Only applicable for artifact deployment. (optional)
    x_checksum_sha256 = 'x_checksum_sha256_example' # str | SHA256 checksum to verify the integrity of the deployment. Artifactory rejects the deployment if the checksum does not match. Only applicable for artifact deployment. (optional)
    body = None # bytes | Binary content of the artifact to deploy. Omit for directory creation. (optional)

    try:
        # Deploy Artifact or Create Directory
        api_response = api_instance.deploy_artifact(repo_key, file_path, x_checksum_sha1=x_checksum_sha1, x_checksum_sha256=x_checksum_sha256, body=body)
        print("The response of DeployArtifactAPIsApi->deploy_artifact:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeployArtifactAPIsApi->deploy_artifact: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **file_path** | **str**| Path to the artifact or directory within the repository. For directories, the path must end with &#x60;/&#x60;. | 
 **x_checksum_sha1** | **str**| SHA1 checksum to verify the integrity of the deployment. Artifactory rejects the deployment if the checksum does not match. Only applicable for artifact deployment. | [optional] 
 **x_checksum_sha256** | **str**| SHA256 checksum to verify the integrity of the deployment. Artifactory rejects the deployment if the checksum does not match. Only applicable for artifact deployment. | [optional] 
 **body** | **bytes**| Binary content of the artifact to deploy. Omit for directory creation. | [optional] 

### Return type

[**ItemCreated**](ItemCreated.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created - Artifact deployed or directory created successfully |  -  |
**400** | Bad Request - Invalid path, invalid checksum header, or malformed request. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have deploy permissions on this repository. |  -  |
**404** | Not Found - Repository not found |  -  |
**405** | Method Not Allowed - The target path resolves to a repository that does not accept PUT (e.g., a virtual repository). |  -  |
**409** | Conflict - Duplicate artifact or checksum mismatch |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deploy_artifact_by_checksum**
> ItemCreated deploy_artifact_by_checksum(repo_key, file_path, x_checksum_deploy, x_checksum_sha1=x_checksum_sha1, x_checksum_sha256=x_checksum_sha256, x_checksum=x_checksum, body=body)

Deploy Artifact by Checksum

Deploy an artifact to the specified destination by checking if the artifact content already exists in Artifactory.

If Artifactory already contains a user-readable artifact with the same checksum, the artifact content is copied to the new location and returns a response without requiring content transfer.

Otherwise, a 404 error is returned to indicate that content upload is expected to deploy the artifact.

If the X-Checksum-Deploy header is set to false, the artifact will be uploaded successfully with a 201 response, even if it didn't exist before, and submitted checksums will have the status Uploaded: Identical.

You can also attach properties when deploying artifacts.

Since: 2.5.1  
Security: Requires a user with Deploy permissions (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.models.item_created import ItemCreated
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = jfrog_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.DeployArtifactAPIsApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    file_path = 'file_path_example' # str | Path to the artifact within the repository
    x_checksum_deploy = True # bool | Must be set to true for checksum-based deployment
    x_checksum_sha1 = 'x_checksum_sha1_example' # str | SHA1 checksum value. At least one checksum header (X-Checksum-Sha1, X-Checksum-Sha256, or X-Checksum) must be provided. (optional)
    x_checksum_sha256 = 'x_checksum_sha256_example' # str | SHA256 checksum value. At least one checksum header (X-Checksum-Sha1, X-Checksum-Sha256, or X-Checksum) must be provided. (optional)
    x_checksum = 'x_checksum_example' # str | Generic checksum value (type resolved by length: 32 chars=MD5, 40 chars=SHA1, 64 chars=SHA256). At least one checksum header (X-Checksum-Sha1, X-Checksum-Sha256, or X-Checksum) must be provided. (optional)
    body = None # bytes | Binary content of the artifact (not needed if artifact exists) (optional)

    try:
        # Deploy Artifact by Checksum
        api_response = api_instance.deploy_artifact_by_checksum(repo_key, file_path, x_checksum_deploy, x_checksum_sha1=x_checksum_sha1, x_checksum_sha256=x_checksum_sha256, x_checksum=x_checksum, body=body)
        print("The response of DeployArtifactAPIsApi->deploy_artifact_by_checksum:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeployArtifactAPIsApi->deploy_artifact_by_checksum: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **file_path** | **str**| Path to the artifact within the repository | 
 **x_checksum_deploy** | **bool**| Must be set to true for checksum-based deployment | 
 **x_checksum_sha1** | **str**| SHA1 checksum value. At least one checksum header (X-Checksum-Sha1, X-Checksum-Sha256, or X-Checksum) must be provided. | [optional] 
 **x_checksum_sha256** | **str**| SHA256 checksum value. At least one checksum header (X-Checksum-Sha1, X-Checksum-Sha256, or X-Checksum) must be provided. | [optional] 
 **x_checksum** | **str**| Generic checksum value (type resolved by length: 32 chars&#x3D;MD5, 40 chars&#x3D;SHA1, 64 chars&#x3D;SHA256). At least one checksum header (X-Checksum-Sha1, X-Checksum-Sha256, or X-Checksum) must be provided. | [optional] 
 **body** | **bytes**| Binary content of the artifact (not needed if artifact exists) | [optional] 

### Return type

[**ItemCreated**](ItemCreated.md)

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created - Artifact deployed successfully |  -  |
**400** | Bad Request - Missing required checksum header or invalid checksum value. |  -  |
**401** | Bad Credentials - Authentication failed. A valid token is required. |  -  |
**403** | Permission Denied - The user does not have deploy permissions. |  -  |
**404** | Not Found - Artifact with checksum not found, content upload required |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deploy_artifacts_from_archive**
> str deploy_artifacts_from_archive(repo_key, archive_path, x_explode_archive, body, x_explode_archive_atomic=x_explode_archive_atomic)

Deploy Artifacts from Archive

Deploys an archive containing multiple artifacts and extracts it at the specified destination while maintaining the archive's file structure.

Deployment is performed in a single HTTP request. Only the extracted content is deployed, not the archive file itself.

By default, the deployment of artifacts is performed sequentially. However, starting from Artifactory 7.96.3, artifact deployment can be performed in multiple parallel threads using the system parameter artifactory.explode.archive.threads. For example, if you set artifactory.explode.archive.threads = 10, the deployment of the artifacts contained in the archive will be performed in 10 parallel threads per archive file, which can save considerable time for large archive files.

Supported archive types: zip, tar, tar.gz, tgz

Note: Requires Artifactory Pro. Deployment of compressed archives (unlike tar) may incur considerable CPU overhead.

Since: 2.6.3  
Security: Requires a user with 'deploy' permissions (can be anonymous)


### Example

* Bearer Authentication (BearerAuth):

```python
import jfrog_client
from jfrog_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://myserver.jfrog.io
# See configuration.py for a list of all supported configuration parameters.
configuration = jfrog_client.Configuration(
    host = "https://myserver.jfrog.io"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: BearerAuth
configuration = jfrog_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with jfrog_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = jfrog_client.DeployArtifactAPIsApi(api_client)
    repo_key = 'repo_key_example' # str | Repository key
    archive_path = 'archive_path_example' # str | Path where the archive should be extracted (must end with archive filename)
    x_explode_archive = True # bool | Must be set to true to explode the archive upon deployment
    body = None # bytes | Binary content of the archive file (zip, tar, tar.gz, or tgz)
    x_explode_archive_atomic = True # bool | If true, archive will be exploded in an atomic operation upon deployment (optional)

    try:
        # Deploy Artifacts from Archive
        api_response = api_instance.deploy_artifacts_from_archive(repo_key, archive_path, x_explode_archive, body, x_explode_archive_atomic=x_explode_archive_atomic)
        print("The response of DeployArtifactAPIsApi->deploy_artifacts_from_archive:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DeployArtifactAPIsApi->deploy_artifacts_from_archive: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **repo_key** | **str**| Repository key | 
 **archive_path** | **str**| Path where the archive should be extracted (must end with archive filename) | 
 **x_explode_archive** | **bool**| Must be set to true to explode the archive upon deployment | 
 **body** | **bytes**| Binary content of the archive file (zip, tar, tar.gz, or tgz) | 
 **x_explode_archive_atomic** | **bool**| If true, archive will be exploded in an atomic operation upon deployment | [optional] 

### Return type

**str**

### Authorization

[BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/zip, application/x-tar, application/gzip
 - **Accept**: text/plain, application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**201** | Created - Archive deployed and extracted successfully |  -  |
**400** | Bad Request - Invalid archive or missing required headers |  -  |
**401** | Bad Credentials - Authentication failed |  -  |
**403** | Permission Denied - User does not have deploy permissions or Artifactory Pro required |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

