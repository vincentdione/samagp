# openapi.api.ArticlesApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8082*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteArticle1**](ArticlesApi.md#deletearticle1) | **DELETE** /api/v1/admin/api/v1/articles/delete/{idArticle} | 
[**findHistoriqueByIdCatergory**](ArticlesApi.md#findhistoriquebyidcatergory) | **GET** /api/v1/admin/articles/filter/category/{idCategory} | 
[**findHistoriqueCommandeClient**](ArticlesApi.md#findhistoriquecommandeclient) | **GET** /api/v1/admin/articles/historique/commandeClients/{idArticle} | 
[**findHistoriqueCommandeFournisseur**](ArticlesApi.md#findhistoriquecommandefournisseur) | **GET** /api/v1/admin/articles/historique/commandeFournisseur/{idArticle} | 
[**findHistoriqueVente**](ArticlesApi.md#findhistoriquevente) | **GET** /api/v1/admin/articles/historique/ventes/{idArticle} | 
[**getAllArticles**](ArticlesApi.md#getallarticles) | **GET** /api/v1/admin/articles/all | 
[**getArticleById**](ArticlesApi.md#getarticlebyid) | **GET** /api/v1/admin/articles/{idArticle} | 
[**saveArticle**](ArticlesApi.md#savearticle) | **POST** /api/v1/admin/articles | 


# **deleteArticle1**
> String deleteArticle1(idArticle)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ArticlesApi();
final idArticle = 789; // int | 

try {
    final result = api_instance.deleteArticle1(idArticle);
    print(result);
} catch (e) {
    print('Exception when calling ArticlesApi->deleteArticle1: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idArticle** | **int**|  | 

### Return type

**String**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findHistoriqueByIdCatergory**
> List<ArticleDto> findHistoriqueByIdCatergory(idCategory)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ArticlesApi();
final idCategory = 789; // int | 

try {
    final result = api_instance.findHistoriqueByIdCatergory(idCategory);
    print(result);
} catch (e) {
    print('Exception when calling ArticlesApi->findHistoriqueByIdCatergory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idCategory** | **int**|  | 

### Return type

[**List<ArticleDto>**](ArticleDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findHistoriqueCommandeClient**
> List<LigneCommandeClientDto> findHistoriqueCommandeClient(idArticle)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ArticlesApi();
final idArticle = 789; // int | 

try {
    final result = api_instance.findHistoriqueCommandeClient(idArticle);
    print(result);
} catch (e) {
    print('Exception when calling ArticlesApi->findHistoriqueCommandeClient: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idArticle** | **int**|  | 

### Return type

[**List<LigneCommandeClientDto>**](LigneCommandeClientDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findHistoriqueCommandeFournisseur**
> List<LigneCommandeFournisseurDto> findHistoriqueCommandeFournisseur(idArticle)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ArticlesApi();
final idArticle = 789; // int | 

try {
    final result = api_instance.findHistoriqueCommandeFournisseur(idArticle);
    print(result);
} catch (e) {
    print('Exception when calling ArticlesApi->findHistoriqueCommandeFournisseur: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idArticle** | **int**|  | 

### Return type

[**List<LigneCommandeFournisseurDto>**](LigneCommandeFournisseurDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findHistoriqueVente**
> List<LigneVenteDto> findHistoriqueVente(idArticle)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ArticlesApi();
final idArticle = 789; // int | 

try {
    final result = api_instance.findHistoriqueVente(idArticle);
    print(result);
} catch (e) {
    print('Exception when calling ArticlesApi->findHistoriqueVente: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idArticle** | **int**|  | 

### Return type

[**List<LigneVenteDto>**](LigneVenteDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllArticles**
> List<ArticleDto> getAllArticles()



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ArticlesApi();

try {
    final result = api_instance.getAllArticles();
    print(result);
} catch (e) {
    print('Exception when calling ArticlesApi->getAllArticles: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ArticleDto>**](ArticleDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getArticleById**
> ArticleDto getArticleById(idArticle)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ArticlesApi();
final idArticle = 789; // int | 

try {
    final result = api_instance.getArticleById(idArticle);
    print(result);
} catch (e) {
    print('Exception when calling ArticlesApi->getArticleById: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **idArticle** | **int**|  | 

### Return type

[**ArticleDto**](ArticleDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveArticle**
> ArticleDto saveArticle(articleDto)



### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ArticlesApi();
final articleDto = ArticleDto(); // ArticleDto | 

try {
    final result = api_instance.saveArticle(articleDto);
    print(result);
} catch (e) {
    print('Exception when calling ArticlesApi->saveArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **articleDto** | [**ArticleDto**](ArticleDto.md)|  | 

### Return type

[**ArticleDto**](ArticleDto.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

