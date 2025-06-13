# codesphere_sdk.WorkspacesApi

All URIs are relative to *https://codesphere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**workspaces_create_workspace**](WorkspacesApi.md#workspaces_create_workspace) | **POST** /workspaces | createWorkspace
[**workspaces_delete_env_var**](WorkspacesApi.md#workspaces_delete_env_var) | **DELETE** /workspaces/{workspaceId}/env-vars | deleteEnvVar
[**workspaces_delete_workspace**](WorkspacesApi.md#workspaces_delete_workspace) | **DELETE** /workspaces/{workspaceId} | deleteWorkspace
[**workspaces_deploy_landscape**](WorkspacesApi.md#workspaces_deploy_landscape) | **POST** /workspaces/{workspaceId}/landscape/deploy | deployLandscape
[**workspaces_deploy_landscape1**](WorkspacesApi.md#workspaces_deploy_landscape1) | **POST** /workspaces/{workspaceId}/landscape/deploy/{profile} | deployLandscape
[**workspaces_execute_command**](WorkspacesApi.md#workspaces_execute_command) | **POST** /workspaces/{workspaceId}/execute | executeCommand
[**workspaces_get_workspace**](WorkspacesApi.md#workspaces_get_workspace) | **GET** /workspaces/{workspaceId} | getWorkspace
[**workspaces_get_workspace_status**](WorkspacesApi.md#workspaces_get_workspace_status) | **GET** /workspaces/{workspaceId}/status | getWorkspaceStatus
[**workspaces_git_head**](WorkspacesApi.md#workspaces_git_head) | **GET** /workspaces/{workspaceId}/git/head | gitHead
[**workspaces_git_pull**](WorkspacesApi.md#workspaces_git_pull) | **POST** /workspaces/{workspaceId}/git/pull | gitPull
[**workspaces_git_pull1**](WorkspacesApi.md#workspaces_git_pull1) | **POST** /workspaces/{workspaceId}/git/pull/{remote} | gitPull
[**workspaces_git_pull2**](WorkspacesApi.md#workspaces_git_pull2) | **POST** /workspaces/{workspaceId}/git/pull/{remote}/{branch} | gitPull
[**workspaces_list_env_vars**](WorkspacesApi.md#workspaces_list_env_vars) | **GET** /workspaces/{workspaceId}/env-vars | listEnvVars
[**workspaces_list_workspaces**](WorkspacesApi.md#workspaces_list_workspaces) | **GET** /workspaces/team/{teamId} | listWorkspaces
[**workspaces_logs**](WorkspacesApi.md#workspaces_logs) | **GET** /workspaces/{workspaceId}/logs/{stage}/{step} | logs
[**workspaces_pipeline_status**](WorkspacesApi.md#workspaces_pipeline_status) | **GET** /workspaces/{workspaceId}/pipeline/{stage} | pipelineStatus
[**workspaces_replica_logs**](WorkspacesApi.md#workspaces_replica_logs) | **GET** /workspaces/{workspaceId}/logs/run/{step}/replica/{replica} | replicaLogs
[**workspaces_server_logs**](WorkspacesApi.md#workspaces_server_logs) | **GET** /workspaces/{workspaceId}/logs/run/{step}/server/{server} | serverLogs
[**workspaces_set_env_var**](WorkspacesApi.md#workspaces_set_env_var) | **PUT** /workspaces/{workspaceId}/env-vars | setEnvVar
[**workspaces_start_pipeline_stage**](WorkspacesApi.md#workspaces_start_pipeline_stage) | **POST** /workspaces/{workspaceId}/pipeline/{stage}/start | startPipelineStage
[**workspaces_start_pipeline_stage1**](WorkspacesApi.md#workspaces_start_pipeline_stage1) | **POST** /workspaces/{workspaceId}/pipeline/{stage}/start/{profile} | startPipelineStage
[**workspaces_stop_pipeline_stage**](WorkspacesApi.md#workspaces_stop_pipeline_stage) | **POST** /workspaces/{workspaceId}/pipeline/{stage}/stop | stopPipelineStage
[**workspaces_teardown_landscape**](WorkspacesApi.md#workspaces_teardown_landscape) | **DELETE** /workspaces/{workspaceId}/landscape/teardown | teardownLandscape
[**workspaces_update_workspace**](WorkspacesApi.md#workspaces_update_workspace) | **PATCH** /workspaces/{workspaceId} | updateWorkspace


# **workspaces_create_workspace**
> WorkspacesGetWorkspace200Response workspaces_create_workspace(workspaces_create_workspace_request=workspaces_create_workspace_request)

createWorkspace

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_create_workspace_request import WorkspacesCreateWorkspaceRequest
from codesphere_sdk.models.workspaces_get_workspace200_response import WorkspacesGetWorkspace200Response
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspaces_create_workspace_request = codesphere_sdk.WorkspacesCreateWorkspaceRequest() # WorkspacesCreateWorkspaceRequest |  (optional)

    try:
        # createWorkspace
        api_response = await api_instance.workspaces_create_workspace(workspaces_create_workspace_request=workspaces_create_workspace_request)
        print("The response of WorkspacesApi->workspaces_create_workspace:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_create_workspace: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspaces_create_workspace_request** | [**WorkspacesCreateWorkspaceRequest**](WorkspacesCreateWorkspaceRequest.md)|  | [optional]

### Return type

[**WorkspacesGetWorkspace200Response**](WorkspacesGetWorkspace200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_delete_env_var**
> workspaces_delete_env_var(workspace_id, request_body=request_body)

deleteEnvVar

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    request_body = ['request_body_example'] # List[str] |  (optional)

    try:
        # deleteEnvVar
        await api_instance.workspaces_delete_env_var(workspace_id, request_body=request_body)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_delete_env_var: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **request_body** | [**List[str]**](str.md)|  | [optional]

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Workspace is not running, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_delete_workspace**
> workspaces_delete_workspace(workspace_id)

deleteWorkspace

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |

    try:
        # deleteWorkspace
        await api_instance.workspaces_delete_workspace(workspace_id)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_delete_workspace: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |

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
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_deploy_landscape**
> workspaces_deploy_landscape(workspace_id)

deployLandscape

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |

    try:
        # deployLandscape
        await api_instance.workspaces_deploy_landscape(workspace_id)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_deploy_landscape: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |

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
**400** | Workspace does not supportMulti Server Deployments, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_deploy_landscape1**
> workspaces_deploy_landscape1(workspace_id, profile)

deployLandscape

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    profile = 'my-profile' # str |

    try:
        # deployLandscape
        await api_instance.workspaces_deploy_landscape1(workspace_id, profile)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_deploy_landscape1: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **profile** | **str**|  |

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
**400** | Workspace does not supportMulti Server Deployments, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_execute_command**
> WorkspacesExecuteCommand200Response workspaces_execute_command(workspace_id, workspaces_execute_command_request=workspaces_execute_command_request)

executeCommand

Executes the command with "bash -c command". Timeouts after 5000ms.

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_execute_command200_response import WorkspacesExecuteCommand200Response
from codesphere_sdk.models.workspaces_execute_command_request import WorkspacesExecuteCommandRequest
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    workspaces_execute_command_request = codesphere_sdk.WorkspacesExecuteCommandRequest() # WorkspacesExecuteCommandRequest |  (optional)

    try:
        # executeCommand
        api_response = await api_instance.workspaces_execute_command(workspace_id, workspaces_execute_command_request=workspaces_execute_command_request)
        print("The response of WorkspacesApi->workspaces_execute_command:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_execute_command: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **workspaces_execute_command_request** | [**WorkspacesExecuteCommandRequest**](WorkspacesExecuteCommandRequest.md)|  | [optional]

### Return type

[**WorkspacesExecuteCommand200Response**](WorkspacesExecuteCommand200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Workspace is not running, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_get_workspace**
> WorkspacesGetWorkspace200Response workspaces_get_workspace(workspace_id)

getWorkspace

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_get_workspace200_response import WorkspacesGetWorkspace200Response
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |

    try:
        # getWorkspace
        api_response = await api_instance.workspaces_get_workspace(workspace_id)
        print("The response of WorkspacesApi->workspaces_get_workspace:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_get_workspace: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |

### Return type

[**WorkspacesGetWorkspace200Response**](WorkspacesGetWorkspace200Response.md)

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
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_get_workspace_status**
> WorkspacesGetWorkspaceStatus200Response workspaces_get_workspace_status(workspace_id)

getWorkspaceStatus

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_get_workspace_status200_response import WorkspacesGetWorkspaceStatus200Response
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |

    try:
        # getWorkspaceStatus
        api_response = await api_instance.workspaces_get_workspace_status(workspace_id)
        print("The response of WorkspacesApi->workspaces_get_workspace_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_get_workspace_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |

### Return type

[**WorkspacesGetWorkspaceStatus200Response**](WorkspacesGetWorkspaceStatus200Response.md)

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
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_git_head**
> WorkspacesGitHead200Response workspaces_git_head(workspace_id)

gitHead

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_git_head200_response import WorkspacesGitHead200Response
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |

    try:
        # gitHead
        api_response = await api_instance.workspaces_git_head(workspace_id)
        print("The response of WorkspacesApi->workspaces_git_head:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_git_head: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |

### Return type

[**WorkspacesGitHead200Response**](WorkspacesGitHead200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Workspace is not running, git error, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_git_pull**
> workspaces_git_pull(workspace_id)

gitPull

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |

    try:
        # gitPull
        await api_instance.workspaces_git_pull(workspace_id)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_git_pull: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |

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
**400** | Workspace is not running, git error, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_git_pull1**
> workspaces_git_pull1(workspace_id, remote)

gitPull

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    remote = 'remote_example' # str |

    try:
        # gitPull
        await api_instance.workspaces_git_pull1(workspace_id, remote)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_git_pull1: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **remote** | **str**|  |

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
**400** | Workspace is not running, git error, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_git_pull2**
> workspaces_git_pull2(workspace_id, remote, branch)

gitPull

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    remote = 'remote_example' # str |
    branch = 'branch_example' # str |

    try:
        # gitPull
        await api_instance.workspaces_git_pull2(workspace_id, remote, branch)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_git_pull2: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **remote** | **str**|  |
 **branch** | **str**|  |

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
**400** | Workspace is not running, git error, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_list_env_vars**
> List[WorkspacesListEnvVars200ResponseInner] workspaces_list_env_vars(workspace_id)

listEnvVars

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_list_env_vars200_response_inner import WorkspacesListEnvVars200ResponseInner
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |

    try:
        # listEnvVars
        api_response = await api_instance.workspaces_list_env_vars(workspace_id)
        print("The response of WorkspacesApi->workspaces_list_env_vars:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_list_env_vars: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |

### Return type

[**List[WorkspacesListEnvVars200ResponseInner]**](WorkspacesListEnvVars200ResponseInner.md)

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
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_list_workspaces**
> List[WorkspacesGetWorkspace200Response] workspaces_list_workspaces(team_id)

listWorkspaces

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_get_workspace200_response import WorkspacesGetWorkspace200Response
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    team_id = 3.4 # float |

    try:
        # listWorkspaces
        api_response = await api_instance.workspaces_list_workspaces(team_id)
        print("The response of WorkspacesApi->workspaces_list_workspaces:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_list_workspaces: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **team_id** | **float**|  |

### Return type

[**List[WorkspacesGetWorkspace200Response]**](WorkspacesGetWorkspace200Response.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_logs**
> WorkspacesLogs200Response workspaces_logs(workspace_id, stage, step)

logs

Returns a stream of logs for a given "stage" and "step". For "run" stage logs of Multi Server Deployments use [serverLogs](#/workspaces/workspaces-serverLogs) or [replicaLogs](#/workspaces/workspaces-replicaLogs).

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_logs200_response import WorkspacesLogs200Response
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    stage = 'stage_example' # str |
    step = 3.4 # float |

    try:
        # logs
        api_response = await api_instance.workspaces_logs(workspace_id, stage, step)
        print("The response of WorkspacesApi->workspaces_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **stage** | **str**|  |
 **step** | **float**|  |

### Return type

[**WorkspacesLogs200Response**](WorkspacesLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success: Opens a Server Side Event(SSE) stream. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_pipeline_status**
> List[WorkspacesPipelineStatus200ResponseInner] workspaces_pipeline_status(workspace_id, stage)

pipelineStatus

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_pipeline_status200_response_inner import WorkspacesPipelineStatus200ResponseInner
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    stage = 'stage_example' # str |

    try:
        # pipelineStatus
        api_response = await api_instance.workspaces_pipeline_status(workspace_id, stage)
        print("The response of WorkspacesApi->workspaces_pipeline_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_pipeline_status: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **stage** | **str**|  |

### Return type

[**List[WorkspacesPipelineStatus200ResponseInner]**](WorkspacesPipelineStatus200ResponseInner.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Workspace is not running, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_replica_logs**
> WorkspacesReplicaLogs200Response workspaces_replica_logs(workspace_id, step, replica)

replicaLogs

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_replica_logs200_response import WorkspacesReplicaLogs200Response
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    step = 3.4 # float |
    replica = 'replica_example' # str |

    try:
        # replicaLogs
        api_response = await api_instance.workspaces_replica_logs(workspace_id, step, replica)
        print("The response of WorkspacesApi->workspaces_replica_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_replica_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **step** | **float**|  |
 **replica** | **str**|  |

### Return type

[**WorkspacesReplicaLogs200Response**](WorkspacesReplicaLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success: Opens a Server Side Event(SSE) stream. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_server_logs**
> WorkspacesServerLogs200Response workspaces_server_logs(workspace_id, step, server)

serverLogs

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_server_logs200_response import WorkspacesServerLogs200Response
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    step = 3.4 # float |
    server = 'server_example' # str |

    try:
        # serverLogs
        api_response = await api_instance.workspaces_server_logs(workspace_id, step, server)
        print("The response of WorkspacesApi->workspaces_server_logs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_server_logs: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **step** | **float**|  |
 **server** | **str**|  |

### Return type

[**WorkspacesServerLogs200Response**](WorkspacesServerLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/event-stream

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success: Opens a Server Side Event(SSE) stream. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_set_env_var**
> workspaces_set_env_var(workspace_id, workspaces_list_env_vars200_response_inner=workspaces_list_env_vars200_response_inner)

setEnvVar

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_list_env_vars200_response_inner import WorkspacesListEnvVars200ResponseInner
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    workspaces_list_env_vars200_response_inner = [codesphere_sdk.WorkspacesListEnvVars200ResponseInner()] # List[WorkspacesListEnvVars200ResponseInner] |  (optional)

    try:
        # setEnvVar
        await api_instance.workspaces_set_env_var(workspace_id, workspaces_list_env_vars200_response_inner=workspaces_list_env_vars200_response_inner)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_set_env_var: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **workspaces_list_env_vars200_response_inner** | [**List[WorkspacesListEnvVars200ResponseInner]**](WorkspacesListEnvVars200ResponseInner.md)|  | [optional]

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Workspace is not running, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_start_pipeline_stage**
> workspaces_start_pipeline_stage(workspace_id, stage)

startPipelineStage

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    stage = 'stage_example' # str |

    try:
        # startPipelineStage
        await api_instance.workspaces_start_pipeline_stage(workspace_id, stage)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_start_pipeline_stage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **stage** | **str**|  |

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
**400** | Workspace is not running, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_start_pipeline_stage1**
> workspaces_start_pipeline_stage1(workspace_id, stage, profile)

startPipelineStage

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    stage = 'stage_example' # str |
    profile = 'my-profile' # str |

    try:
        # startPipelineStage
        await api_instance.workspaces_start_pipeline_stage1(workspace_id, stage, profile)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_start_pipeline_stage1: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **stage** | **str**|  |
 **profile** | **str**|  |

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
**400** | Workspace is not running, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_stop_pipeline_stage**
> workspaces_stop_pipeline_stage(workspace_id, stage)

stopPipelineStage

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    stage = 'stage_example' # str |

    try:
        # stopPipelineStage
        await api_instance.workspaces_stop_pipeline_stage(workspace_id, stage)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_stop_pipeline_stage: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **stage** | **str**|  |

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
**400** | Workspace is not running, path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_teardown_landscape**
> workspaces_teardown_landscape(workspace_id)

teardownLandscape

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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |

    try:
        # teardownLandscape
        await api_instance.workspaces_teardown_landscape(workspace_id)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_teardown_landscape: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |

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
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaces_update_workspace**
> workspaces_update_workspace(workspace_id, workspaces_update_workspace_request=workspaces_update_workspace_request)

updateWorkspace

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.workspaces_update_workspace_request import WorkspacesUpdateWorkspaceRequest
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
    api_instance = codesphere_sdk.WorkspacesApi(api_client)
    workspace_id = 3.4 # float |
    workspaces_update_workspace_request = codesphere_sdk.WorkspacesUpdateWorkspaceRequest() # WorkspacesUpdateWorkspaceRequest |  (optional)

    try:
        # updateWorkspace
        await api_instance.workspaces_update_workspace(workspace_id, workspaces_update_workspace_request=workspaces_update_workspace_request)
    except Exception as e:
        print("Exception when calling WorkspacesApi->workspaces_update_workspace: %s\n" % e)
```



### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workspace_id** | **float**|  |
 **workspaces_update_workspace_request** | [**WorkspacesUpdateWorkspaceRequest**](WorkspacesUpdateWorkspaceRequest.md)|  | [optional]

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success. |  -  |
**400** | Path or request body variable does not match schema. |  -  |
**401** | Authorization information is missing or invalid. |  -  |
**404** | Workspace is not found. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
