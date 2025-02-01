import 'package:book/core/utlis/apiservice.dart';
import 'package:book/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUp() {
  getIt.registerSingleton<Apiservice>(Apiservice(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<Apiservice>()));
}
