// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/datasources/candidate/i_candidate_datasource_repository.dart'
    as _i4;
import 'data/datasources/candidate/local/local_candidate_datasource.dart'
    as _i5;
import 'data/repository/candidate/candidate_repository_impl.dart' as _i8;
import 'domain/reposirory/candidate/i_candidate_repository.dart' as _i7;
import 'gen/prisma/client.dart' as _i6;
import 'presentation/rest/api_endpoint_provider.dart' as _i3;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i3.PollPowerAPIEndpointProvider>(
        () => _i3.PollPowerAPIEndpointProvider());
    gh.lazySingleton<_i4.ICandidateDatasourceRepository>(() =>
        _i5.LocalCandidateDatasource(gh<_i6.PrismaClient>(instanceName: 'db')));
    gh.lazySingleton<_i7.ICandidateRepository>(() =>
        _i8.CandidateRepositoryImpl(gh<_i4.ICandidateDatasourceRepository>()));
    return this;
  }
}
