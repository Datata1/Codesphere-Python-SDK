# TeamsGetTeam200Response


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

## Example

```python
from codesphere_sdk.models.teams_get_team200_response import TeamsGetTeam200Response

# TODO update the JSON string below
json = "{}"
# create an instance of TeamsGetTeam200Response from a JSON string
teams_get_team200_response_instance = TeamsGetTeam200Response.from_json(json)
# print the JSON string representation of the object
print(TeamsGetTeam200Response.to_json())

# convert the object into a dict
teams_get_team200_response_dict = teams_get_team200_response_instance.to_dict()
# create an instance of TeamsGetTeam200Response from a dict
teams_get_team200_response_from_dict = TeamsGetTeam200Response.from_dict(teams_get_team200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
