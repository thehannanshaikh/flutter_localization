import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(SelectedLocale(Locale('en')));

  void toArabic() => emit(SelectedLocale(Locale('ar')));
  void toEnglish() => emit(SelectedLocale(Locale('en')));
}
