import 'package:bloc/bloc.dart';

class MousecursorCubit extends Cubit<bool> {
  MousecursorCubit() : super(false);

  void onEntery()=> emit(true);

  void onExit() => emit(false);
}