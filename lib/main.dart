import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'counter/counter_page.dart';
import 'counter_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () => runApp(const CounterApp()),
    blocObserver: CounterObserver(),
  );
}
class CounterApp extends MaterialApp {
  const CounterApp({Key? key}) : super(key: key, home: const CounterPage());
}