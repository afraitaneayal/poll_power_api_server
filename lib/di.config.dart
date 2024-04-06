// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/helpers/password_helper/password_helper.dart' as _i9;
import 'common/helpers/token_helper/token_helper.dart' as _i10;
import 'common/helpers/uuid_helper/uuid_helper.dart' as _i4;
import 'common/modules/auth_secrets.dart' as _i30;
import 'common/modules/db_module.dart' as _i29;
import 'data/datasources/candidate/i_candidate_datasource_repository.dart'
    as _i5;
import 'data/datasources/candidate/local/local_candidate_datasource_impl.dart'
    as _i6;
import 'data/datasources/user/i_user_datasource_repository.dart' as _i11;
import 'data/datasources/user/local/local_user_datasource_impl.dart' as _i12;
import 'data/datasources/vote/i_vote_datasource_repository.dart' as _i7;
import 'data/datasources/vote/local/local_vote_datasource_repository_impl.dart'
    as _i8;
import 'data/repository/candidate/candidate_repository_impl.dart' as _i14;
import 'data/repository/user/user_repository_impl.dart' as _i21;
import 'data/repository/vote/vote_repository_impl.dart' as _i16;
import 'domain/reposirory/candidate/i_candidate_repository.dart' as _i13;
import 'domain/reposirory/user/i_user_repository.dart' as _i20;
import 'domain/reposirory/vote/i_vote_repository.dart' as _i15;
import 'domain/usecases/candidate/create_candidate_usecase.dart' as _i19;
import 'domain/usecases/candidate/get_all_candidate_usecase.dart' as _i18;
import 'domain/usecases/candidate/get_candidate_usecase.dart' as _i17;
import 'domain/usecases/user/create_user_usecase.dart' as _i26;
import 'domain/usecases/user/get_user_usecase.dart' as _i25;
import 'domain/usecases/user/log_user_uscase.dart' as _i24;
import 'domain/usecases/vote/create_vote_usecase.dart' as _i23;
import 'domain/usecases/vote/get_votes_usecase.dart' as _i22;
import 'gen/prisma/client.dart' as _i3;
import 'presentation/rest/api_endpoint_provider.dart' as _i28;
import 'presentation/usecases.dart' as _i27;

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
    gh.singleton<_i4.IUuidHelper>(() => _i4.UuidHelperImpl());
    gh.lazySingleton<_i5.ICandidateDatasourceRepository>(() =>
        _i6.LocalCandidateDatasourceImp(
            gh<_i3.PrismaClient>(instanceName: 'prisma')));
    gh.singleton<String>(
      () => authSecrets.appKey,
      instanceName: 'appKey',
    );
    gh.singleton<String>(
      () => authSecrets.jwtKey,
      instanceName: 'jwtKey',
    );
    gh.singleton<String>(
      () => authSecrets.encryptKey,
      instanceName: 'encryptKey',
    );
    gh.singleton<String>(
      () => authSecrets.jwtIssuer,
      instanceName: 'jwtIssuer',
    );
    gh.singleton<String>(
      () => authSecrets.authKey,
      instanceName: 'authKey',
    );
    gh.lazySingleton<_i7.IVoteDatasourceRepository>(() =>
        _i8.LocalVoteDatasourceImpl(
            gh<_i3.PrismaClient>(instanceName: 'prisma')));
    gh.singleton<_i9.IPasswordHelper>(
        () => _i9.PasswordHelperImpl(gh<String>(instanceName: 'encryptKey')));
    gh.singleton<_i10.TokenHelper>(() => _i10.TokenHelperImpl(
          gh<String>(instanceName: 'jwtIssuer'),
          gh<String>(instanceName: 'jwtKey'),
          gh<String>(instanceName: 'appKey'),
        ));
    gh.lazySingleton<_i11.IUserDatasourceRepository>(
        () => _i12.LocalUserDatasourceImpl(
              gh<_i3.PrismaClient>(instanceName: 'prisma'),
              gh<String>(instanceName: 'authKey'),
            ));
    gh.lazySingleton<_i13.ICandidateRepository>(() =>
        _i14.CandidateRepositoryImpl(gh<_i5.ICandidateDatasourceRepository>()));
    gh.lazySingleton<_i15.IVoteRepository>(
        () => _i16.VoteRepositoryImpl(gh<_i7.IVoteDatasourceRepository>()));
    gh.singleton<_i17.GetCandidateUsecase>(
        () => _i17.GetCandidateUsecase(gh<_i13.ICandidateRepository>()));
    gh.singleton<_i18.GetAllCandidateUsecase>(
        () => _i18.GetAllCandidateUsecase(gh<_i13.ICandidateRepository>()));
    gh.singleton<_i19.CreateCandidateUsecase>(
        () => _i19.CreateCandidateUsecase(gh<_i13.ICandidateRepository>()));
    gh.lazySingleton<_i20.IUserRepository>(
        () => _i21.UserRepositoryImpl(gh<_i11.IUserDatasourceRepository>()));
    gh.singleton<_i22.GetVotesUsecase>(
        () => _i22.GetVotesUsecase(gh<_i15.IVoteRepository>()));
    gh.singleton<_i23.CreateVoteUsecase>(
        () => _i23.CreateVoteUsecase(gh<_i15.IVoteRepository>()));
    gh.singleton<_i24.LogUserUsecase>(
        () => _i24.LogUserUsecase(gh<_i20.IUserRepository>()));
    gh.singleton<_i25.GetUserUsecase>(
        () => _i25.GetUserUsecase(gh<_i20.IUserRepository>()));
    gh.singleton<_i26.CreateUserUsecase>(
        () => _i26.CreateUserUsecase(gh<_i20.IUserRepository>()));
    gh.singleton<_i27.Usecases>(() => _i27.Usecases(
          gh<_i19.CreateCandidateUsecase>(),
          gh<_i17.GetCandidateUsecase>(),
          gh<_i26.CreateUserUsecase>(),
          gh<_i25.GetUserUsecase>(),
          gh<_i23.CreateVoteUsecase>(),
          gh<_i22.GetVotesUsecase>(),
          gh<_i18.GetAllCandidateUsecase>(),
          gh<_i24.LogUserUsecase>(),
        ));
    gh.singleton<_i28.PollPowerAPIEndpointProvider>(
        () => _i28.PollPowerAPIEndpointProvider(gh<_i27.Usecases>()));
    return this;
  }
}

class _$DbModule extends _i29.DbModule {}

class _$AuthSecrets extends _i30.AuthSecrets {}
