# codesphere_sdk.TeamsApi

All URIs are relative to *https://codesphere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**teams_create_team**](TeamsApi.md#teams_create_team) | **POST** /teams | createTeam
[**teams_delete_team**](TeamsApi.md#teams_delete_team) | **DELETE** /teams/{teamId} | deleteTeam
[**teams_get_team**](TeamsApi.md#teams_get_team) | **GET** /teams/{teamId} | getTeam
[**teams_list_teams**](TeamsApi.md#teams_list_teams) | **GET** /teams | listTeams


# **teams_create_team**
> TeamsGetTeam200Response teams_create_team(teams_create_team_request=teams_create_team_request)

createTeam

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.teams_create_team_request import TeamsCreateTeamRequest
from codesphere_sdk.models.teams_get_team200_response import TeamsGetTeam200Response
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.TeamsApi(api_client)
    teams_create_team_request = codesphere_sdk.TeamsCreateTeamRequest() # TeamsCreateTeamRequest |  (optional)

    try:
        # createTeam
        api_response = await api_instance.teams_create_team(teams_create_team_request=teams_create_team_request)
        print("The response of TeamsApi->teams_create_team:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TeamsApi->teams_create_team: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **teams_create_team_request** | [**TeamsCreateTeamRequest**](TeamsCreateTeamRequest.md)|  | [optional] 

### Return type

[**TeamsGetTeam200Response**](TeamsGetTeam200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Invalid datacenter, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teams_delete_team**
> teams_delete_team(team_id)

deleteTeam

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.TeamsApi(api_client)
    team_id = 3.4 # float | 

    try:
        # deleteTeam
        await api_instance.teams_delete_team(team_id)
    except Exception as e:
        print("Exception when calling TeamsApi->teams_delete_team: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **float**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Team not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teams_get_team**
> TeamsGetTeam200Response teams_get_team(team_id)

getTeam

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.teams_get_team200_response import TeamsGetTeam200Response
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.TeamsApi(api_client)
    team_id = 3.4 # float | 

    try:
        # getTeam
        api_response = await api_instance.teams_get_team(team_id)
        print("The response of TeamsApi->teams_get_team:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TeamsApi->teams_get_team: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **float**|  | 

### Return type

[**TeamsGetTeam200Response**](TeamsGetTeam200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Team not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **teams_list_teams**
> List[TeamsListTeams200ResponseInner] teams_list_teams()

listTeams

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.teams_list_teams200_response_inner import TeamsListTeams200ResponseInner
from codesphere_sdk.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://codesphere.com/api
# See configuration.py for a list of all supported configuration parameters.
configuration = codesphere_sdk.Configuration(
    host = "https://codesphere.com/api"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization: bearerAuth
configuration = codesphere_sdk.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
async with codesphere_sdk.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = codesphere_sdk.TeamsApi(api_client)

    try:
        # listTeams
        api_response = await api_instance.teams_list_teams()
        print("The response of TeamsApi->teams_list_teams:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TeamsApi->teams_list_teams: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[TeamsListTeams200ResponseInner]**](TeamsListTeams200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**401** | Authorization information is missing or invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

