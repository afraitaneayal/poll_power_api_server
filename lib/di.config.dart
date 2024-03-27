// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/modules/db_module.dart' as _i21;
import 'data/datasources/candidate/i_candidate_datasource_repository.dart'
    as _i10;
import 'data/datasources/candidate/local/local_candidate_datasource.dart'
    as _i11;
import 'data/repository/candidate/candidate_repository_impl.dart' as _i13;
import 'data/repository/user/user_repository_impl.dart' as _i7;
import 'data/repository/vote/vote_repository_impl.dart' as _i5;
import 'domain/reposirory/candidate/i_candidate_repository.dart' as _i12;
import 'domain/reposirory/user/i_user_repository.dart' as _i6;
import 'domain/reposirory/vote/i_vote_repository.dart' as _i4;
import 'domain/usecases/candidate/create_candidate_usecase.dart' as _i15;
import 'domain/usecases/candidate/get_all_candidate_usecase.dart' as _i16;
import 'domain/usecases/candidate/get_candidate_usecase.dart' as _i14;
import 'domain/usecases/user/create_user_usecase.dart' as _i17;
import 'domain/usecases/user/get_user_usecase.dart' as _i18;
import 'domain/usecases/vote/create_vote_usecase.dart' as _i8;
import 'domain/usecases/vote/get_votes_usecase.dart' as _i9;
import 'gen/prisma/client.dart' as _i3;
import 'presentation/rest/api_endpoint_provider.dart' as _i20;
import 'presentation/usecases.dart' as _i19;

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
    final dbModule = _$DbModule();
    gh.singleton<_i3.PrismaClient>(
      () => dbModule.prismaClient,
      instanceName: 'db',
    );
    gh.lazySingleton<_i4.IVoteRepository>(() => _i5.VoteRepositoryImpl());
    gh.lazySingleton<_i6.IUserRepository>(() => _i7.UserRepositoryImpl());
    gh.singleton<_i8.CreateVoteUsecase>(
        () => _i8.CreateVoteUsecase(gh<_i4.IVoteRepository>()));
    gh.singleton<_i9.GetVotesUsecase>(
        () => _i9.GetVotesUsecase(gh<_i4.IVoteRepository>()));
    gh.lazySingleton<_i10.ICandidateDatasourceRepository>(() =>
        _i11.LocalCandidateDatasource(
            gh<_i3.PrismaClient>(instanceName: 'db')));
    gh.lazySingleton<_i12.ICandidateRepository>(() =>
        _i13.CandidateRepositoryImpl(
            gh<_i10.ICandidateDatasourceRepository>()));
    gh.singleton<_i14.GetCandidateUsecase>(
        () => _i14.GetCandidateUsecase(gh<_i12.ICandidateRepository>()));
    gh.singleton<_i15.CreateCandidateUsecase>(
        () => _i15.CreateCandidateUsecase(gh<_i12.ICandidateRepository>()));
    gh.singleton<_i16.GetAllCandidateUsecase>(
        () => _i16.GetAllCandidateUsecase(gh<_i12.ICandidateRepository>()));
    gh.singleton<_i17.CreateUserUsecase>(
        () => _i17.CreateUserUsecase(gh<_i6.IUserRepository>()));
    gh.singleton<_i18.GetUserUsecase>(
        () => _i18.GetUserUsecase(gh<_i6.IUserRepository>()));
    gh.singleton<_i19.Usecases>(() => _i19.Usecases(
          gh<_i15.CreateCandidateUsecase>(),
          gh<_i14.GetCandidateUsecase>(),
          gh<_i17.CreateUserUsecase>(),
          gh<_i18.GetUserUsecase>(),
          gh<_i8.CreateVoteUsecase>(),
          gh<_i9.GetVotesUsecase>(),
          gh<_i16.GetAllCandidateUsecase>(),
        ));
    gh.singleton<_i20.PollPowerAPIEndpointProvider>(
        () => _i20.PollPowerAPIEndpointProvider(gh<_i19.Usecases>()));
    return this;
  }
}

class _$DbModule extends _i21.DbModule {}
