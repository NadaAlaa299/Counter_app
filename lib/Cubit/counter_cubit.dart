import 'package:counter_app/Cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamApoints = 0;
  int teamBpoints = 0;

  void TeamIncrement({required String team, required int buttonNumber}) {
    if(team == 'A')
    {
      teamApoints += buttonNumber;
      emit(CounterAIncrementState());
    }
    else
    {
      teamBpoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void resetScores() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounterUpdated());
  }
}
