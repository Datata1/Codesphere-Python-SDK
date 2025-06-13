# WorkspacesServerLogs200Response

SSE stream with two event types: \"data\" and \"problem\". Both event data contain JSON objects in the form described by their schemas. Possible problem statuses and reasons:400: Workspace is not running, path or request body variable does not match schema. 401: Authorization information is missing or invalid. 404: Workspace is not found.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ProblemData**](ProblemData.md) |  | 
**event** | **str** |  | 

## Example

```python
from codesphere_sdk.models.workspaces_server_logs200_response import WorkspacesServerLogs200Response

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspacesServerLogs200Response from a JSON string
workspaces_server_logs200_response_instance = WorkspacesServerLogs200Response.from_json(json)
# print the JSON string representation of the object
print(WorkspacesServerLogs200Response.to_json())

# convert the object into a dict
workspaces_server_logs200_response_dict = workspaces_server_logs200_response_instance.to_dict()
# create an instance of WorkspacesServerLogs200Response from a dict
workspaces_server_logs200_response_from_dict = WorkspacesServerLogs200Response.from_dict(workspaces_server_logs200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


