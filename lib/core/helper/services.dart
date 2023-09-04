import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServices() {
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      apiService: ApiService(
        Dio(),
      ),
    ),
  );
}
