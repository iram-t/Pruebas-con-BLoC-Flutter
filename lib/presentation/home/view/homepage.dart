import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba_cubit/presentation/home/cubit/counter_cubit.dart';
import 'package:prueba_cubit/presentation/home/cubit/counter_state.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterCubit()..fakeGetData(),
        child: const MyHomeView(),
      );
  }
}
class MyHomeView extends StatelessWidget {
  const MyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final counterCubit = context.read<CounterCubit>();
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('flutter demo'),
      ),
      // el blocCOnsumer sirve para ejecutar un BlocListener y un BlocBuilder al mismo tiempo
      body: BlocConsumer<CounterCubit, CounterState>(
        listener: (context, state) {
          if (state.status == CounterStatus.success) {
            print('success');
          }
        },
        builder: (context, state) {
          switch (state.status) {
            case CounterStatus.initial:
              return const Center(child: CircularProgressIndicator());
            case CounterStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case CounterStatus.success:
              return Center(child: Text('${counterCubit.state.counter}', style: Theme.of(context).textTheme.headlineMedium));

            case CounterStatus.error:
              return const Center(child: Text('error'));
         }
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counterCubit.increment(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}