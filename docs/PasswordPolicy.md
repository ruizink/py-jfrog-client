# PasswordPolicy


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uppercase** | **int** | Minimum uppercase characters required | [optional] 
**lowercase** | **int** | Minimum lowercase characters required | [optional] 
**digit** | **int** | Minimum digits required | [optional] 
**special_char** | **int** | Minimum special characters required | [optional] 
**length** | **int** | Minimum password length | [optional] 
**not_match_old** | **bool** | Whether the new password must differ from the previous one | [optional] 

## Example

```python
from jfrog_client.models.password_policy import PasswordPolicy

# TODO update the JSON string below
json = "{}"
# create an instance of PasswordPolicy from a JSON string
password_policy_instance = PasswordPolicy.from_json(json)
# print the JSON string representation of the object
print(PasswordPolicy.to_json())

# convert the object into a dict
password_policy_dict = password_policy_instance.to_dict()
# create an instance of PasswordPolicy from a dict
password_policy_from_dict = PasswordPolicy.from_dict(password_policy_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


