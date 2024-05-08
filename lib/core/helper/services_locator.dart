import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled1/Fuature/home/data/repo/home_repo_implement.dart';
import 'package:untitled1/core/services/api_services.dart';

final getit = GetIt.instance;

void setupServiceLocator() {
  getit.registerSingleton<ApiServices>(ApiServices(Dio()));
  getit.registerSingleton<HomeRepoImplement>(
    HomeRepoImplement(
      getit.get<ApiServices>(),
    ),
  );
}
