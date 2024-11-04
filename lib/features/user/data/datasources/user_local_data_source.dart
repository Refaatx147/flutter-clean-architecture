import 'dart:convert';

import 'package:clean_arch_project/core/databases/cache/cache_helper.dart';
import 'package:clean_arch_project/core/errors/expentions.dart';
import 'package:clean_arch_project/features/user/data/models/user_model.dart';

class UserLocalDataSource {
  final CacheHelper cacheHelper;
  final String key = 'CachedUser';
  UserLocalDataSource({required this.cacheHelper});

  cacheUser(UserModel? userToCache) {
    if (userToCache != null) {
      cacheHelper.saveData(key: key, value: json.encode(userToCache.toJson()));
    } else {
      throw CacheException(errorMessage: 'No Internet Connection');
    }
  }

  Future<UserModel> getLastUser() {
    final jsonString = cacheHelper.getDataString(key: key);
    if (jsonString != null) {
    final response = Future.value( UserModel.fromJson(json.decode(jsonString)));
    return response;
    } else {
      throw CacheException(errorMessage: 'There Is An Error While Fetch Data');
    }
  }
}
