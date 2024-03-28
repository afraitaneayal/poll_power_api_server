// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'common/helpers/token_helper/token_helper.dart' as _i6;
import 'common/modules/db_module.dart' as _i25;
import 'data/datasources/candidate/i_candidate_datasource_repository.dart'
    as _i4;
import 'data/datasources/candidate/local/local_candidate_datasource_impl.dart'
    as _i5;
import 'data/datasources/user/i_user_datasource_repository.dart' as _i9;
import 'data/datasources/user/local/local_user_datasource_impl.dart' as _i10;
import 'data/repository/candidate/candidate_repository_impl.dart' as _i16;
import 'data/repository/user/user_repository_impl.dart' as _i12;
import 'data/repository/vote/vote_repository_impl.dart' as _i8;
import 'domain/reposirory/candidate/i_candidate_repository.dart' as _i15;
import 'domain/reposirory/user/i_user_repository.dart' as _i11;
import 'domain/reposirory/vote/i_vote_repository.dart' as _i7;
import 'domain/usecases/candidate/create_candidate_usecase.dart' as _i18;
import 'domain/usecases/candidate/get_all_candidate_usecase.dart' as _i19;
import 'domain/usecases/candidate/get_candidate_usecase.dart' as _i17;
import 'domain/usecases/user/create_user_usecase.dart' as _i20;
import 'domain/usecases/user/get_user_usecase.dart' as _i21;
import 'domain/usecases/user/log_user_uscase.dart' as _i22;
import 'domain/usecases/vote/create_vote_usecase.dart' as _i13;
import 'domain/usecases/vote/get_votes_usecase.dart' as _i14;
import 'gen/prisma/client.dart' as _i3;
import 'presentation/rest/api_endpoint_provider.dart' as _i24;
import 'presentation/usecases.dart' as _i23;

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
      instanceName: 'prisma',
    );
    gh.lazySingleton<_i4.ICandidateDatasourceRepository>(() =>
        _i5.LocalCandidateDatasourceImp(
            gh<_i3.PrismaClient>(instanceName: 'prisma')));
    gh.lazySingleton<_i6.TokenHelper>(() => _i6.TokenHelperImpl());
    gh.lazySingleton<_i7.IVoteRepository>(() => _i8.VoteRepositoryImpl());
    gh.lazySingleton<_i9.IUserDatasourceRepository>(() =>
        _i10.LocalUserDatasourceImpl(
            gh<_i3.PrismaClient>(instanceName: 'prisma')));
    gh.lazySingleton<_i11.IUserRepository>(
        () => _i12.UserRepositoryImpl(gh<_i9.IUserDatasourceRepository>()));
    gh.singleton<_i13.CreateVoteUsecase>(
        () => _i13.CreateVoteUsecase(gh<_i7.IVoteRepository>()));
    gh.singleton<_i14.GetVotesUsecase>(
        () => _i14.GetVotesUsecase(gh<_i7.IVoteRepository>()));
    gh.lazySingleton<_i15.ICandidateRepository>(() =>
        _i16.CandidateRepositoryImpl(gh<_i4.ICandidateDatasourceRepository>()));
    gh.singleton<_i17.GetCandidateUsecase>(
        () => _i17.GetCandidateUsecase(gh<_i15.ICandidateRepository>()));
    gh.singleton<_i18.CreateCandidateUsecase>(
        () => _i18.CreateCandidateUsecase(gh<_i15.ICandidateRepository>()));
    gh.singleton<_i19.GetAllCandidateUsecase>(
        () => _i19.GetAllCandidateUsecase(gh<_i15.ICandidateRepository>()));
    gh.singleton<_i20.CreateUserUsecase>(
        () => _i20.CreateUserUsecase(gh<_i11.IUserRepository>()));
    gh.singleton<_i21.GetUserUsecase>(
        () => _i21.GetUserUsecase(gh<_i11.IUserRepository>()));
    gh.singleton<_i22.LogUserUsecase>(
        () => _i22.LogUserUsecase(gh<_i11.IUserRepository>()));
    gh.singleton<_i23.Usecases>(() => _i23.Usecases(
          gh<_i18.CreateCandidateUsecase>(),
          gh<_i17.GetCandidateUsecase>(),
          gh<_i20.CreateUserUsecase>(),
          gh<_i21.GetUserUsecase>(),
          gh<_i13.CreateVoteUsecase>(),
          gh<_i14.GetVotesUsecase>(),
          gh<_i19.GetAllCandidateUsecase>(),
          gh<_i22.LogUserUsecase>(),
        ));
    gh.singleton<_i24.PollPowerAPIEndpointProvider>(
        () => _i24.PollPowerAPIEndpointProvider(gh<_i23.Usecases>()));
    return this;
  }
}

class _$DbModule extends _i25.DbModule {}
