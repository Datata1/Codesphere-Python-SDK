# WorkspacesListEnvVars200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | 
**value** | **str** |  | 

## Example

```python
from codesphere_sdk.models.workspaces_list_env_vars200_response_inner import WorkspacesListEnvVars200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspacesListEnvVars200ResponseInner from a JSON string
workspaces_list_env_vars200_response_inner_instance = WorkspacesListEnvVars200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(WorkspacesListEnvVars200ResponseInner.to_json())

# convert the object into a dict
workspaces_list_env_vars200_response_inner_dict = workspaces_list_env_vars200_response_inner_instance.to_dict()
# create an instance of WorkspacesListEnvVars200ResponseInner from a dict
workspaces_list_env_vars200_response_inner_from_dict = WorkspacesListEnvVars200ResponseInner.from_dict(workspaces_list_env_vars200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


