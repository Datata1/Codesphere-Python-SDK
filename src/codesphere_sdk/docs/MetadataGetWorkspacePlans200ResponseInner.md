# MetadataGetWorkspacePlans200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  |
**price_usd** | **float** |  |
**title** | **str** |  |
**deprecated** | **bool** |  |
**characteristics** | [**MetadataGetWorkspacePlans200ResponseInnerCharacteristics**](MetadataGetWorkspacePlans200ResponseInnerCharacteristics.md) |  |
**max_replicas** | **int** |  |

## Example

```python
from codesphere_sdk.models.metadata_get_workspace_plans200_response_inner import MetadataGetWorkspacePlans200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of MetadataGetWorkspacePlans200ResponseInner from a JSON string
metadata_get_workspace_plans200_response_inner_instance = MetadataGetWorkspacePlans200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(MetadataGetWorkspacePlans200ResponseInner.to_json())

# convert the object into a dict
metadata_get_workspace_plans200_response_inner_dict = metadata_get_workspace_plans200_response_inner_instance.to_dict()
# create an instance of MetadataGetWorkspacePlans200ResponseInner from a dict
metadata_get_workspace_plans200_response_inner_from_dict = MetadataGetWorkspacePlans200ResponseInner.from_dict(metadata_get_workspace_plans200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
