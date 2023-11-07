# openapi.api.CategoriesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteCategory**](CategoriesApi.md#deletecategory) | **DELETE** /api/v1/admin/categories/delete/{idCategory} | 
[**getAllCategorys**](CategoriesApi.md#getallcategorys) | **GET** /api/v1/admin/categories/all | 
[**getCategoryById**](CategoriesApi.md#getcategorybyid) | **GET** /api/v1/admin/categories/{idCategory} | 
[**getCategoryByNom**](CategoriesApi.md#getcategorybynom) | **GET** /api/v1/admin/categories/{nom} | 
[**saveCategory**](CategoriesApi.md#savecategory) | **POST** /api/v1/admin/categories | 


# **deleteCategory**
> String deleteCategory(idCategory)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CategoriesApi();
final idCategory = 789; // int | 

try {
    final result = api_instance.deleteCategory(idCategory);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->deleteCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCategory** | **int**|  | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllCategorys**
> List<CategoryDto> getAllCategorys()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CategoriesApi();

try {
    final result = api_instance.getAllCategorys();
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->getAllCategorys: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CategoryDto>**](CategoryDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryById**
> CategoryDto getCategoryById(idCategory)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CategoriesApi();
final idCategory = 789; // int | 

try {
    final result = api_instance.getCategoryById(idCategory);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->getCategoryById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCategory** | **int**|  | 

### Return type

[**CategoryDto**](CategoryDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategoryByNom**
> CategoryDto getCategoryByNom(nom)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CategoriesApi();
final nom = nom_example; // String | 

try {
    final result = api_instance.getCategoryByNom(nom);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->getCategoryByNom: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nom** | **String**|  | 

### Return type

[**CategoryDto**](CategoryDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveCategory**
> CategoryDto saveCategory(categoryDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = CategoriesApi();
final categoryDto = CategoryDto(); // CategoryDto | 

try {
    final result = api_instance.saveCategory(categoryDto);
    print(result);
} catch (e) {
    print('Exception when calling CategoriesApi->saveCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryDto** | [**CategoryDto**](CategoryDto.md)|  | 

### Return type

[**CategoryDto**](CategoryDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

