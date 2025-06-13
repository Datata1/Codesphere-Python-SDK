# ProblemData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **int** |  |
**title** | **str** |  |
**detail** | **str** |  | [optional]
**trace_id** | **str** |  |

## Example

```python
from codesphere_sdk.models.problem_data import ProblemData

# TODO update the JSON string below
json = "{}"
# create an instance of ProblemData from a JSON string
problem_data_instance = ProblemData.from_json(json)
# print the JSON string representation of the object
print(ProblemData.to_json())

# convert the object into a dict
problem_data_dict = problem_data_instance.to_dict()
# create an instance of ProblemData from a dict
problem_data_from_dict = ProblemData.from_dict(problem_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
