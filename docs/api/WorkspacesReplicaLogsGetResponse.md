# WorkspacesReplicaLogsGetResponse

An SSE event of type data. Data contains a JSON object with given properties.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**List[WorkspacesLogsGetResponseDataInner]**](WorkspacesLogsGetResponseDataInner.md) |  | 
**event** | **str** |  | 

## Example

```python
from codesphere_sdk.models.workspaces_replica_logs_get_response import WorkspacesReplicaLogsGetResponse

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspacesReplicaLogsGetResponse from a JSON string
workspaces_replica_logs_get_response_instance = WorkspacesReplicaLogsGetResponse.from_json(json)
# print the JSON string representation of the object
print(WorkspacesReplicaLogsGetResponse.to_json())

# convert the object into a dict
workspaces_replica_logs_get_response_dict = workspaces_replica_logs_get_response_instance.to_dict()
# create an instance of WorkspacesReplicaLogsGetResponse from a dict
workspaces_replica_logs_get_response_from_dict = WorkspacesReplicaLogsGetResponse.from_dict(workspaces_replica_logs_get_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


