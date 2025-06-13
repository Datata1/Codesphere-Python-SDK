# WorkspacesLogsGetResponseDataInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**timestamp** | **datetime** |  | 
**kind** | **str** |  | 
**data** | **str** |  | 

## Example

```python
from codesphere_sdk.models.workspaces_logs_get_response_data_inner import WorkspacesLogsGetResponseDataInner

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspacesLogsGetResponseDataInner from a JSON string
workspaces_logs_get_response_data_inner_instance = WorkspacesLogsGetResponseDataInner.from_json(json)
# print the JSON string representation of the object
print(WorkspacesLogsGetResponseDataInner.to_json())

# convert the object into a dict
workspaces_logs_get_response_data_inner_dict = workspaces_logs_get_response_data_inner_instance.to_dict()
# create an instance of WorkspacesLogsGetResponseDataInner from a dict
workspaces_logs_get_response_data_inner_from_dict = WorkspacesLogsGetResponseDataInner.from_dict(workspaces_logs_get_response_data_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


