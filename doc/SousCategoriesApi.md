# openapi.api.SousCategoriesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteSousCategory**](SousCategoriesApi.md#deletesouscategory) | **DELETE** /api/v1/admin/api/v1/souscategories/delete/{idSousCategory} | 
[**getAllSousCategorys**](SousCategoriesApi.md#getallsouscategorys) | **GET** /api/v1/admin/api/v1/souscategories/all | 
[**getSousCategoryById**](SousCategoriesApi.md#getsouscategorybyid) | **GET** /api/v1/admin/api/v1/souscategories/{idSousCategory} | 
[**getSousCategoryByNom**](SousCategoriesApi.md#getsouscategorybynom) | **GET** /api/v1/admin/api/v1/souscategories/{nom} | 
[**saveSousCategory**](SousCategoriesApi.md#savesouscategory) | **POST** /api/v1/admin/api/v1/souscategories | 


# **deleteSousCategory**
> String deleteSousCategory(idSousCategory)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SousCategoriesApi();
final idSousCategory = 789; // int | 

try {
    final result = api_instance.deleteSousCategory(idSousCategory);
    print(result);
} catch (e) {
    print('Exception when calling SousCategoriesApi->deleteSousCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idSousCategory** | **int**|  | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllSousCategorys**
> List<SousCategoryDto> getAllSousCategorys()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SousCategoriesApi();

try {
    final result = api_instance.getAllSousCategorys();
    print(result);
} catch (e) {
    print('Exception when calling SousCategoriesApi->getAllSousCategorys: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<SousCategoryDto>**](SousCategoryDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSousCategoryById**
> SousCategoryDto getSousCategoryById(idSousCategory)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SousCategoriesApi();
final idSousCategory = 789; // int | 

try {
    final result = api_instance.getSousCategoryById(idSousCategory);
    print(result);
} catch (e) {
    print('Exception when calling SousCategoriesApi->getSousCategoryById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idSousCategory** | **int**|  | 

### Return type

[**SousCategoryDto**](SousCategoryDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSousCategoryByNom**
> SousCategoryDto getSousCategoryByNom(nom)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SousCategoriesApi();
final nom = nom_example; // String | 

try {
    final result = api_instance.getSousCategoryByNom(nom);
    print(result);
} catch (e) {
    print('Exception when calling SousCategoriesApi->getSousCategoryByNom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nom** | **String**|  | 

### Return type

[**SousCategoryDto**](SousCategoryDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveSousCategory**
> SousCategoryDto saveSousCategory(sousCategoryDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = SousCategoriesApi();
final sousCategoryDto = SousCategoryDto(); // SousCategoryDto | 

try {
    final result = api_instance.saveSousCategory(sousCategoryDto);
    print(result);
} catch (e) {
    print('Exception when calling SousCategoriesApi->saveSousCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sousCategoryDto** | [**SousCategoryDto**](SousCategoryDto.md)|  | 

### Return type

[**SousCategoryDto**](SousCategoryDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

