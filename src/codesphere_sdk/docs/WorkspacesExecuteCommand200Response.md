# WorkspacesExecuteCommand200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**command** | **str** |  |
**working_dir** | **str** |  |
**output** | **str** |  |
**error** | **str** |  |

## Example

```python
from codesphere_sdk.models.workspaces_execute_command200_response import WorkspacesExecuteCommand200Response

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspacesExecuteCommand200Response from a JSON string
workspaces_execute_command200_response_instance = WorkspacesExecuteCommand200Response.from_json(json)
# print the JSON string representation of the object
print(WorkspacesExecuteCommand200Response.to_json())

# convert the object into a dict
workspaces_execute_command200_response_dict = workspaces_execute_command200_response_instance.to_dict()
# create an instance of WorkspacesExecuteCommand200Response from a dict
workspaces_execute_command200_response_from_dict = WorkspacesExecuteCommand200Response.from_dict(workspaces_execute_command200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
