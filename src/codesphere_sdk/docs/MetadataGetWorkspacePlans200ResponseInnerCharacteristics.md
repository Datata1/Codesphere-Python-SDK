# MetadataGetWorkspacePlans200ResponseInnerCharacteristics


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  |
**cpu** | **float** |  |
**gpu** | **float** |  |
**ram** | **int** |  |
**ssd** | **int** |  |
**temp_storage** | **int** |  |
**on_demand** | **bool** |  |

## Example

```python
from codesphere_sdk.models.metadata_get_workspace_plans200_response_inner_characteristics import MetadataGetWorkspacePlans200ResponseInnerCharacteristics

# TODO update the JSON string below
json = "{}"
# create an instance of MetadataGetWorkspacePlans200ResponseInnerCharacteristics from a JSON string
metadata_get_workspace_plans200_response_inner_characteristics_instance = MetadataGetWorkspacePlans200ResponseInnerCharacteristics.from_json(json)
# print the JSON string representation of the object
print(MetadataGetWorkspacePlans200ResponseInnerCharacteristics.to_json())

# convert the object into a dict
metadata_get_workspace_plans200_response_inner_characteristics_dict = metadata_get_workspace_plans200_response_inner_characteristics_instance.to_dict()
# create an instance of MetadataGetWorkspacePlans200ResponseInnerCharacteristics from a dict
metadata_get_workspace_plans200_response_inner_characteristics_from_dict = MetadataGetWorkspacePlans200ResponseInnerCharacteristics.from_dict(metadata_get_workspace_plans200_response_inner_characteristics_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
