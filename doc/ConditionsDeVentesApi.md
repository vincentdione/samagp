# openapi.api.ConditionsDeVentesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCondition**](ConditionsDeVentesApi.md#deletecondition) | **DELETE** /api/v1/admin/conditions/delete/{idCondition} | 
[**getAllConditions**](ConditionsDeVentesApi.md#getallconditions) | **GET** /api/v1/admin/conditions/all | 
[**getConditionById**](ConditionsDeVentesApi.md#getconditionbyid) | **GET** /api/v1/admin/conditions/{idCondition} | 
[**getConditionByNom**](ConditionsDeVentesApi.md#getconditionbynom) | **GET** /api/v1/admin/conditions/{nom} | 
[**saveCondition**](ConditionsDeVentesApi.md#savecondition) | **POST** /api/v1/admin/conditions | 


# **deleteCondition**
> String deleteCondition(idCondition)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConditionsDeVentesApi();
final idCondition = 789; // int | 

try {
    final result = api_instance.deleteCondition(idCondition);
    print(result);
} catch (e) {
    print('Exception when calling ConditionsDeVentesApi->deleteCondition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCondition** | **int**|  | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllConditions**
> List<ConditionAVDto> getAllConditions()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConditionsDeVentesApi();

try {
    final result = api_instance.getAllConditions();
    print(result);
} catch (e) {
    print('Exception when calling ConditionsDeVentesApi->getAllConditions: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ConditionAVDto>**](ConditionAVDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConditionById**
> ConditionAVDto getConditionById(idCondition)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConditionsDeVentesApi();
final idCondition = 789; // int | 

try {
    final result = api_instance.getConditionById(idCondition);
    print(result);
} catch (e) {
    print('Exception when calling ConditionsDeVentesApi->getConditionById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCondition** | **int**|  | 

### Return type

[**ConditionAVDto**](ConditionAVDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getConditionByNom**
> ConditionAVDto getConditionByNom(nom)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConditionsDeVentesApi();
final nom = nom_example; // String | 

try {
    final result = api_instance.getConditionByNom(nom);
    print(result);
} catch (e) {
    print('Exception when calling ConditionsDeVentesApi->getConditionByNom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nom** | **String**|  | 

### Return type

[**ConditionAVDto**](ConditionAVDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveCondition**
> ConditionAVDto saveCondition(conditionAVDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ConditionsDeVentesApi();
final conditionAVDto = ConditionAVDto(); // ConditionAVDto | 

try {
    final result = api_instance.saveCondition(conditionAVDto);
    print(result);
} catch (e) {
    print('Exception when calling ConditionsDeVentesApi->saveCondition: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conditionAVDto** | [**ConditionAVDto**](ConditionAVDto.md)|  | 

### Return type

[**ConditionAVDto**](ConditionAVDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

