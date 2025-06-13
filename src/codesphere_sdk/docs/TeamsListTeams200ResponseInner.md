# TeamsListTeams200ResponseInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  |
**default_data_center_id** | **int** |  |
**name** | **str** |  |
**description** | **str** |  | [optional]
**avatar_id** | **str** |  | [optional]
**avatar_url** | **str** |  | [optional]
**is_first** | **bool** |  | [optional]
**role** | **int** | Role{0:&#39;Admin&#39;,1:&#39;Member&#39;} |

## Example

```python
from codesphere_sdk.models.teams_list_teams200_response_inner import TeamsListTeams200ResponseInner

# TODO update the JSON string below
json = "{}"
# create an instance of TeamsListTeams200ResponseInner from a JSON string
teams_list_teams200_response_inner_instance = TeamsListTeams200ResponseInner.from_json(json)
# print the JSON string representation of the object
print(TeamsListTeams200ResponseInner.to_json())

# convert the object into a dict
teams_list_teams200_response_inner_dict = teams_list_teams200_response_inner_instance.to_dict()
# create an instance of TeamsListTeams200ResponseInner from a dict
teams_list_teams200_response_inner_from_dict = TeamsListTeams200ResponseInner.from_dict(teams_list_teams200_response_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
