// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/helpers/token_helper/token_helper.dart' as _i17;
import 'common/modules/auth_secrets.dart' as _i28;
import 'common/modules/db_module.dart' as _i27;
import 'data/datasources/candidate/i_candidate_datasource_repository.dart'
    as _i4;
import 'data/datasources/candidate/local/local_candidate_datasource_impl.dart'
    as _i5;
import 'data/datasources/user/i_user_datasource_repository.dart' as _i8;
import 'data/datasources/user/local/local_user_datasource_impl.dart' as _i9;
import 'data/datasources/vote/i_vote_datasource_repository.dart' as _i6;
import 'data/datasources/vote/local/local_vote_datasource_repository_impl.dart'
    as _i7;
import 'data/repository/candidate/candidate_repository_impl.dart' as _i11;
import 'data/repository/user/user_repository_impl.dart' as _i19;
import 'data/repository/vote/vote_repository_impl.dart' as _i13;
import 'domain/reposirory/candidate/i_candidate_repository.dart' as _i10;
import 'domain/reposirory/user/i_user_repository.dart' as _i18;
import 'domain/reposirory/vote/i_vote_repository.dart' as _i12;
import 'domain/usecases/candidate/create_candidate_usecase.dart' as _i16;
import 'domain/usecases/candidate/get_all_candidate_usecase.dart' as _i15;
import 'domain/usecases/candidate/get_candidate_usecase.dart' as _i14;
import 'domain/usecases/user/create_user_usecase.dart' as _i24;
import 'domain/usecases/user/get_user_usecase.dart' as _i23;
import 'domain/usecases/user/log_user_uscase.dart' as _i22;
import 'domain/usecases/vote/create_vote_usecase.dart' as _i21;
import 'domain/usecases/vote/get_votes_usecase.dart' as _i20;
import 'gen/prisma/client.dart' as _i3;
import 'presentation/rest/api_endpoint_provider.dart' as _i26;
import 'presentation/usecases.dart' as _i25;

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
    final authSecrets = _$AuthSecrets();
    gh.singleton<_i3.PrismaClient>(
      () => dbModule.prismaClient,
      instanceName: 'prisma',
    );
    gh.lazySingleton<_i4.ICandidateDatasourceRepository>(() =>
        _i5.LocalCandidateDatasourceImp(
            gh<_i3.PrismaClient>(instanceName: 'prisma')));
    gh.singleton<String>(
      () => authSecrets.jwtKey,
      instanceName: 'jwtKey',
    );
    gh.singleton<String>(
      () => authSecrets.jwtIssuer,
      instanceName: 'jwtIssuer',
    );
    gh.singleton<String>(
      () => authSecrets.authKey,
      instanceName: 'authKey',
    );
    gh.lazySingleton<_i6.IVoteDatasourceRepository>(
        () => _i7.LocalVoteDatasourceImpl());
    gh.lazySingleton<_i8.IUserDatasourceRepository>(
        () => _i9.LocalUserDatasourceImpl(
              gh<_i3.PrismaClient>(instanceName: 'prisma'),
              gh<String>(instanceName: 'authKey'),
            ));
    gh.lazySingleton<_i10.ICandidateRepository>(() =>
        _i11.CandidateRepositoryImpl(gh<_i4.ICandidateDatasourceRepository>()));
    gh.lazySingleton<_i12.IVoteRepository>(
        () => _i13.VoteRepositoryImpl(gh<_i6.IVoteDatasourceRepository>()));
    gh.singleton<_i14.GetCandidateUsecase>(
        () => _i14.GetCandidateUsecase(gh<_i10.ICandidateRepository>()));
    gh.singleton<_i15.GetAllCandidateUsecase>(
        () => _i15.GetAllCandidateUsecase(gh<_i10.ICandidateRepository>()));
    gh.singleton<_i16.CreateCandidateUsecase>(
        () => _i16.CreateCandidateUsecase(gh<_i10.ICandidateRepository>()));
    gh.singleton<_i17.TokenHelper>(() => _i17.TokenHelperImpl(
          gh<String>(instanceName: 'jwtIssuer'),
          gh<String>(instanceName: 'jwtKey'),
        ));
    gh.lazySingleton<_i18.IUserRepository>(
        () => _i19.UserRepositoryImpl(gh<_i8.IUserDatasourceRepository>()));
    gh.singleton<_i20.GetVotesUsecase>(
        () => _i20.GetVotesUsecase(gh<_i12.IVoteRepository>()));
    gh.singleton<_i21.CreateVoteUsecase>(
        () => _i21.CreateVoteUsecase(gh<_i12.IVoteRepository>()));
    gh.singleton<_i22.LogUserUsecase>(
        () => _i22.LogUserUsecase(gh<_i18.IUserRepository>()));
    gh.singleton<_i23.GetUserUsecase>(
        () => _i23.GetUserUsecase(gh<_i18.IUserRepository>()));
    gh.singleton<_i24.CreateUserUsecase>(
        () => _i24.CreateUserUsecase(gh<_i18.IUserRepository>()));
    gh.singleton<_i25.Usecases>(() => _i25.Usecases(
          gh<_i16.CreateCandidateUsecase>(),
          gh<_i14.GetCandidateUsecase>(),
          gh<_i24.CreateUserUsecase>(),
          gh<_i23.GetUserUsecase>(),
          gh<_i21.CreateVoteUsecase>(),
          gh<_i20.GetVotesUsecase>(),
          gh<_i15.GetAllCandidateUsecase>(),
          gh<_i22.LogUserUsecase>(),
        ));
    gh.singleton<_i26.PollPowerAPIEndpointProvider>(
        () => _i26.PollPowerAPIEndpointProvider(gh<_i25.Usecases>()));
    return this;
  }
}

class _$DbModule extends _i27.DbModule {}

class _$AuthSecrets extends _i28.AuthSecrets {}
