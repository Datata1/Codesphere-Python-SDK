# WorkspacesCreateWorkspaceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**team_id** | **int** |  | 
**name** | **str** |  | 
**plan_id** | **int** |  | 
**is_private_repo** | **bool** |  | 
**replicas** | **int** |  | 
**base_image** | **str** |  | [optional] 
**git_url** | **str** |  | [optional] 
**initial_branch** | **str** |  | [optional] 
**clone_depth** | **int** |  | [optional] 
**source_workspace_id** | **int** |  | [optional] 
**welcome_message** | **str** |  | [optional] 
**vpn_config** | **str** |  | [optional] 

## Example

```python
from codesphere_sdk.models.workspaces_create_workspace_request import WorkspacesCreateWorkspaceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspacesCreateWorkspaceRequest from a JSON string
workspaces_create_workspace_request_instance = WorkspacesCreateWorkspaceRequest.from_json(json)
# print the JSON string representation of the object
print(WorkspacesCreateWorkspaceRequest.to_json())

# convert the object into a dict
workspaces_create_workspace_request_dict = workspaces_create_workspace_request_instance.to_dict()
# create an instance of WorkspacesCreateWorkspaceRequest from a dict
workspaces_create_workspace_request_from_dict = WorkspacesCreateWorkspaceRequest.from_dict(workspaces_create_workspace_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


