# WorkspacesExecuteCommandRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**command** | **str** |  | 
**working_dir** | **str** |  | [optional] 
**env** | **Dict[str, str]** |  | [optional] 

## Example

```python
from codesphere_sdk.models.workspaces_execute_command_request import WorkspacesExecuteCommandRequest

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspacesExecuteCommandRequest from a JSON string
workspaces_execute_command_request_instance = WorkspacesExecuteCommandRequest.from_json(json)
# print the JSON string representation of the object
print(WorkspacesExecuteCommandRequest.to_json())

# convert the object into a dict
workspaces_execute_command_request_dict = workspaces_execute_command_request_instance.to_dict()
# create an instance of WorkspacesExecuteCommandRequest from a dict
workspaces_execute_command_request_from_dict = WorkspacesExecuteCommandRequest.from_dict(workspaces_execute_command_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


