# WorkspacesUpdateWorkspaceRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**plan_id** | **int** |  | [optional]
**base_image** | **str** |  | [optional]
**name** | **str** |  | [optional]
**replicas** | **int** |  | [optional]
**vpn_config** | **str** |  | [optional]

## Example

```python
from codesphere_sdk.models.workspaces_update_workspace_request import WorkspacesUpdateWorkspaceRequest

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspacesUpdateWorkspaceRequest from a JSON string
workspaces_update_workspace_request_instance = WorkspacesUpdateWorkspaceRequest.from_json(json)
# print the JSON string representation of the object
print(WorkspacesUpdateWorkspaceRequest.to_json())

# convert the object into a dict
workspaces_update_workspace_request_dict = workspaces_update_workspace_request_instance.to_dict()
# create an instance of WorkspacesUpdateWorkspaceRequest from a dict
workspaces_update_workspace_request_from_dict = WorkspacesUpdateWorkspaceRequest.from_dict(workspaces_update_workspace_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
