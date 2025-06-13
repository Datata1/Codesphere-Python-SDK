# WorkspacesGetWorkspace200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**team_id** | **int** |  | 
**name** | **str** |  | 
**plan_id** | **int** |  | 
**is_private_repo** | **bool** |  | 
**replicas** | **int** |  | 
**id** | **int** |  | 
**base_image** | **str** |  | [optional] 
**data_center_id** | **int** |  | 
**user_id** | **int** |  | 
**git_url** | **str** |  | 
**initial_branch** | **str** |  | 
**source_workspace_id** | **int** |  | 
**welcome_message** | **str** |  | 
**vpn_config** | **str** |  | 

## Example

```python
from codesphere_sdk.models.workspaces_get_workspace200_response import WorkspacesGetWorkspace200Response

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspacesGetWorkspace200Response from a JSON string
workspaces_get_workspace200_response_instance = WorkspacesGetWorkspace200Response.from_json(json)
# print the JSON string representation of the object
print(WorkspacesGetWorkspace200Response.to_json())

# convert the object into a dict
workspaces_get_workspace200_response_dict = workspaces_get_workspace200_response_instance.to_dict()
# create an instance of WorkspacesGetWorkspace200Response from a dict
workspaces_get_workspace200_response_from_dict = WorkspacesGetWorkspace200Response.from_dict(workspaces_get_workspace200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


