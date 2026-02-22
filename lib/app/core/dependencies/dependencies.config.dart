// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fork_cast/app/app.dart' as _i609;
import 'package:fork_cast/app/core/core.dart' as _i68;
import 'package:fork_cast/app/core/cubit/auth_cubit.dart' as _i949;
import 'package:fork_cast/app/core/cubit/connectivity_cubit.dart' as _i491;
import 'package:fork_cast/app/core/dependencies/modules/hydrated_bloc_module.dart'
    as _i329;
import 'package:fork_cast/app/core/networking/api/coffee_api.dart' as _i974;
import 'package:fork_cast/app/core/networking/api/pantry_api.dart' as _i997;
import 'package:fork_cast/app/core/networking/api/recipe_api.dart' as _i907;
import 'package:fork_cast/app/core/networking/api/rest_client.dart' as _i51;
import 'package:fork_cast/app/core/networking/repository/coffee_repository.dart'
    as _i915;
import 'package:fork_cast/app/core/networking/repository/pantry_repository.dart'
    as _i436;
import 'package:fork_cast/app/core/networking/repository/recipe_repository.dart'
    as _i436;
import 'package:fork_cast/app/core/service/file_cache_service.dart' as _i903;
import 'package:fork_cast/app/feature/coffee/bloc/coffee_bloc.dart' as _i995;
import 'package:fork_cast/app/feature/dev_tools/cubit/dev_tools_cubit.dart'
    as _i956;
import 'package:fork_cast/app/feature/feature.dart' as _i610;
import 'package:fork_cast/app/feature/pantry/bloc/pantry_bloc.dart' as _i163;
import 'package:fork_cast/app/feature/recipes/bloc/recipe_bloc.dart' as _i84;
import 'package:get_it/get_it.dart' as _i174;
import 'package:hydrated_bloc/hydrated_bloc.dart' as _i67;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final hydratedBlocModule = _$HydratedBlocModule();
    await gh.factoryAsync<_i67.HydratedStorage>(
      () => hydratedBlocModule.init(),
      preResolve: true,
    );
    gh.singleton<_i949.AuthCubit>(() => _i949.AuthCubit());
    gh.singleton<_i491.ConnectivityCubit>(() => _i491.ConnectivityCubit());
    gh.singleton<_i903.FileCacheService>(() => _i903.FileCacheService());
    gh.singleton<_i956.DevToolsCubit>(() => _i956.DevToolsCubit());
    gh.singleton<_i51.RestClient>(
      () => _i51.RestClient(gh<_i68.AuthCubit>(), gh<_i610.DevToolsCubit>()),
    );
    gh.singleton<_i974.CoffeeApi>(() => _i974.CoffeeApi(gh<_i68.RestClient>()));
    gh.singleton<_i997.PantryApi>(() => _i997.PantryApi(gh<_i68.RestClient>()));
    gh.singleton<_i907.RecipeApi>(() => _i907.RecipeApi(gh<_i68.RestClient>()));
    gh.singleton<_i915.CoffeeRepository>(
      () => _i915.CoffeeRepository(gh<_i68.CoffeeApi>()),
    );
    gh.singleton<_i995.CoffeeBloc>(
      () => _i995.CoffeeBloc(
        gh<_i915.CoffeeRepository>(),
        gh<_i903.FileCacheService>(),
      ),
    );
    gh.singleton<_i436.PantryRepository>(
      () => _i436.PantryRepository(gh<_i68.PantryApi>()),
    );
    gh.singleton<_i436.RecipeRepository>(
      () => _i436.RecipeRepository(gh<_i68.RecipeApi>()),
    );
    gh.singleton<_i163.PantryBloc>(
      () => _i163.PantryBloc(gh<_i68.PantryRepository>()),
    );
    gh.singleton<_i84.RecipeBloc>(
      () => _i84.RecipeBloc(
        gh<_i609.RecipeRepository>(),
        gh<_i609.PantryBloc>(),
        gh<_i609.FileCacheService>(),
      ),
    );
    return this;
  }
}

class _$HydratedBlocModule extends _i329.HydratedBlocModule {}
