import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/src/blocs/locale_cubit.dart';
import 'package:flutter_localization/src/localizations/app_localizations.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late AppLocalizations? fields;

  @override
  Widget build(BuildContext context) {
    fields = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('${fields?.translate('app_bar_title')}'),
        leading: IconButton(
            onPressed: () {
              if (fields?.isEnLocale == true) {
                BlocProvider.of<LocaleCubit>(context).toArabic();
              } else {
                BlocProvider.of<LocaleCubit>(context).toEnglish();
              }
            },
            icon: const Icon(Icons.translate)),
      ),
      body: Container(
        padding: const EdgeInsets.all(4),
        child: Text(
          '${fields?.translate('head_title')}',
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
