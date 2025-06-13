# codesphere_sdk.MetadataApi

All URIs are relative to *https://codesphere.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metadata_get_datacenters**](MetadataApi.md#metadata_get_datacenters) | **GET** /metadata/datacenters | getDatacenters
[**metadata_get_workspace_base_images**](MetadataApi.md#metadata_get_workspace_base_images) | **GET** /metadata/workspace-base-images | getWorkspaceBaseImages
[**metadata_get_workspace_plans**](MetadataApi.md#metadata_get_workspace_plans) | **GET** /metadata/workspace-plans | getWorkspacePlans


# **metadata_get_datacenters**
> List[MetadataGetDatacenters200ResponseInner] metadata_get_datacenters()

getDatacenters

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.metadata_get_datacenters200_response_inner import MetadataGetDatacenters200ResponseInner
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
    api_instance = codesphere_sdk.MetadataApi(api_client)

    try:
        # getDatacenters
        api_response = await api_instance.metadata_get_datacenters()
        print("The response of MetadataApi->metadata_get_datacenters:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->metadata_get_datacenters: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[MetadataGetDatacenters200ResponseInner]**](MetadataGetDatacenters200ResponseInner.md)

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

# **metadata_get_workspace_base_images**
> List[MetadataGetWorkspaceBaseImages200ResponseInner] metadata_get_workspace_base_images()

getWorkspaceBaseImages

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.metadata_get_workspace_base_images200_response_inner import MetadataGetWorkspaceBaseImages200ResponseInner
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
    api_instance = codesphere_sdk.MetadataApi(api_client)

    try:
        # getWorkspaceBaseImages
        api_response = await api_instance.metadata_get_workspace_base_images()
        print("The response of MetadataApi->metadata_get_workspace_base_images:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->metadata_get_workspace_base_images: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[MetadataGetWorkspaceBaseImages200ResponseInner]**](MetadataGetWorkspaceBaseImages200ResponseInner.md)

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

# **metadata_get_workspace_plans**
> List[MetadataGetWorkspacePlans200ResponseInner] metadata_get_workspace_plans()

getWorkspacePlans

### Example

* Bearer Authentication (bearerAuth):

```python
import codesphere_sdk
from codesphere_sdk.models.metadata_get_workspace_plans200_response_inner import MetadataGetWorkspacePlans200ResponseInner
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
    api_instance = codesphere_sdk.MetadataApi(api_client)

    try:
        # getWorkspacePlans
        api_response = await api_instance.metadata_get_workspace_plans()
        print("The response of MetadataApi->metadata_get_workspace_plans:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling MetadataApi->metadata_get_workspace_plans: %s\n" % e)
```



### Parameters

This endpoint does not need any parameter.

### Return type

[**List[MetadataGetWorkspacePlans200ResponseInner]**](MetadataGetWorkspacePlans200ResponseInner.md)

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
