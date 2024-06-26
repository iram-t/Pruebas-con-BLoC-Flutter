import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba_cubit/domain/repository/poke_repository.dart';
import 'package:prueba_cubit/presentation/home/cubit/counter_cubit.dart';
import 'package:prueba_cubit/presentation/home/cubit/counter_state.dart';
import 'package:prueba_cubit/presentation/home/widgets/custom_alert.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HomeCubit(pokeRepository: context.read<PokeRepository>())
            ..fakeGetData(),
      child: const MyHomeView(),
    );
  }
}

class MyHomeView extends StatelessWidget {
  const MyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('flutter demo'),
      ),
      // el blocCOnsumer sirve para ejecutar un BlocListener y un BlocBuilder al mismo tiempo
      body: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is HomeSuccess) {
          return Center(
            child: Column(
              children: [
                Text('Pokemon',
                    style: Theme.of(context).textTheme.headlineMedium),
                ...state.pokemon.abilities
                    .map((ability) => Text(ability.ability.name)),
              ],
            ),
          );
        }
        if (state is HomeError) {
          return const Center(child: Text('Error'));
        }
        return const SizedBox();
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (builder) {
              //esto se hace para pasar el cubit a otro arbol de widgets
              return BlocProvider.value(
                value: context.read<HomeCubit>(),
                child: const CustomAlert(),
              );
            },
          );
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

