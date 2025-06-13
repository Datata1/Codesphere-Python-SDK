# WorkspacesPipelineStatus200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**state** | **str** |  |
**started_at** | **datetime** |  | [optional]
**finished_at** | **datetime** |  | [optional]
**steps** | [**List[WorkspacesPipelineStatus200ResponseInnerStepsInner]**](WorkspacesPipelineStatus200ResponseInnerStepsInner.md) |  |
**replica** | **str** |  |
**server** | **str** |  |

## Example

```python
from codesphere_sdk.models.workspaces_pipeline_status200_response_inner import WorkspacesPipelineStatus200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of WorkspacesPipelineStatus200ResponseInner from a JSON string
workspaces_pipeline_status200_response_inner_instance = WorkspacesPipelineStatus200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(WorkspacesPipelineStatus200ResponseInner.to_json())

# convert the object into a dict
workspaces_pipeline_status200_response_inner_dict = workspaces_pipeline_status200_response_inner_instance.to_dict()
# create an instance of WorkspacesPipelineStatus200ResponseInner from a dict
workspaces_pipeline_status200_response_inner_from_dict = WorkspacesPipelineStatus200ResponseInner.from_dict(workspaces_pipeline_status200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
