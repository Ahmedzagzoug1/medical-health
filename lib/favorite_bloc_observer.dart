import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_health_app/features/favorite/presentation/bloc/pages_cubit/pages_cubit.dart';

import 'package:bloc/bloc.dart';
import 'package:medical_health_app/features/favorite/presentation/bloc/pages_cubit/pages_states.dart';

class FavoriteBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    // TODO: implement onEvent
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
print('${bloc.runtimeType} $change');
    // TODO: implement onChange
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    // TODO: implement onChange
  }
}