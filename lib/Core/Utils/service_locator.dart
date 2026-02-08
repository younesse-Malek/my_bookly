import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_bookly/Core/Utils/service_api.dart';
import 'package:my_bookly/features/Home/data/repo/hom_repo_implement.dart';
import 'package:my_bookly/features/serch/data/repo/serch_reposimpl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ServiceApi>(ServiceApi(Dio()));
  getIt.registerSingleton<HomRepoImpl>(HomRepoImpl(getIt.get<ServiceApi>()));
  getIt.registerSingleton<SerchRepoImpl>(
    SerchRepoImpl(service: getIt.get<ServiceApi>()),
  );
}
