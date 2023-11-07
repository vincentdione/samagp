# openapi.api.MouvementsDeStockApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**correctionStockNeg**](MouvementsDeStockApi.md#correctionstockneg) | **POST** /api/v1/admin/mvtstk/correctionneg | 
[**correctionStockPos**](MouvementsDeStockApi.md#correctionstockpos) | **POST** /api/v1/admin/mvtstk/correctionpos | 
[**entreeStock**](MouvementsDeStockApi.md#entreestock) | **POST** /api/v1/admin/mvtstk/entree | 
[**findAllMvtStock**](MouvementsDeStockApi.md#findallmvtstock) | **GET** /api/v1/admin/mvtstk/all | 
[**mvtStkArticle**](MouvementsDeStockApi.md#mvtstkarticle) | **GET** /api/v1/admin/mvtstk/filter/article/{idArticle} | 
[**sortieStock**](MouvementsDeStockApi.md#sortiestock) | **POST** /api/v1/admin/mvtstk/sortie | 
[**stockReelArticle**](MouvementsDeStockApi.md#stockreelarticle) | **GET** /api/v1/admin/mvtstk/stockreel/{idArticle} | 


# **correctionStockNeg**
> MvtStkDto correctionStockNeg(mvtStkDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MouvementsDeStockApi();
final mvtStkDto = MvtStkDto(); // MvtStkDto | 

try {
    final result = api_instance.correctionStockNeg(mvtStkDto);
    print(result);
} catch (e) {
    print('Exception when calling MouvementsDeStockApi->correctionStockNeg: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mvtStkDto** | [**MvtStkDto**](MvtStkDto.md)|  | 

### Return type

[**MvtStkDto**](MvtStkDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **correctionStockPos**
> MvtStkDto correctionStockPos(mvtStkDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MouvementsDeStockApi();
final mvtStkDto = MvtStkDto(); // MvtStkDto | 

try {
    final result = api_instance.correctionStockPos(mvtStkDto);
    print(result);
} catch (e) {
    print('Exception when calling MouvementsDeStockApi->correctionStockPos: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mvtStkDto** | [**MvtStkDto**](MvtStkDto.md)|  | 

### Return type

[**MvtStkDto**](MvtStkDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **entreeStock**
> MvtStkDto entreeStock(mvtStkDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MouvementsDeStockApi();
final mvtStkDto = MvtStkDto(); // MvtStkDto | 

try {
    final result = api_instance.entreeStock(mvtStkDto);
    print(result);
} catch (e) {
    print('Exception when calling MouvementsDeStockApi->entreeStock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mvtStkDto** | [**MvtStkDto**](MvtStkDto.md)|  | 

### Return type

[**MvtStkDto**](MvtStkDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findAllMvtStock**
> List<MvtStkDto> findAllMvtStock()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MouvementsDeStockApi();

try {
    final result = api_instance.findAllMvtStock();
    print(result);
} catch (e) {
    print('Exception when calling MouvementsDeStockApi->findAllMvtStock: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<MvtStkDto>**](MvtStkDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mvtStkArticle**
> List<MvtStkDto> mvtStkArticle(idArticle)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MouvementsDeStockApi();
final idArticle = 789; // int | 

try {
    final result = api_instance.mvtStkArticle(idArticle);
    print(result);
} catch (e) {
    print('Exception when calling MouvementsDeStockApi->mvtStkArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idArticle** | **int**|  | 

### Return type

[**List<MvtStkDto>**](MvtStkDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sortieStock**
> MvtStkDto sortieStock(mvtStkDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MouvementsDeStockApi();
final mvtStkDto = MvtStkDto(); // MvtStkDto | 

try {
    final result = api_instance.sortieStock(mvtStkDto);
    print(result);
} catch (e) {
    print('Exception when calling MouvementsDeStockApi->sortieStock: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mvtStkDto** | [**MvtStkDto**](MvtStkDto.md)|  | 

### Return type

[**MvtStkDto**](MvtStkDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stockReelArticle**
> num stockReelArticle(idArticle)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MouvementsDeStockApi();
final idArticle = 789; // int | 

try {
    final result = api_instance.stockReelArticle(idArticle);
    print(result);
} catch (e) {
    print('Exception when calling MouvementsDeStockApi->stockReelArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idArticle** | **int**|  | 

### Return type

**num**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

