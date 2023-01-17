import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/src/blocs/locale_cubit.dart';

class BlocProviders {
  static final List<BlocProvider> providers = [
    BlocProvider<LocaleCubit>(create: (_) => LocaleCubit())
  ];
}
