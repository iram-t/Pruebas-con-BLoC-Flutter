import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'example_bloc_event.dart';
part 'example_bloc_state.dart';

class ExampleBlocBloc extends Bloc<ExampleBlocEvent, ExampleBlocState> {
  ExampleBlocBloc() : super(const ExampleBlocInitial()) {
    on<CustomExampleBlocEvent>(_onCustomExampleBlocEvent);
  }

  FutureOr<void> _onCustomExampleBlocEvent(
    CustomExampleBlocEvent event,
    Emitter<ExampleBlocState> emit,
  ) {
    // TODO: Add Logic
  }
}
