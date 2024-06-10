import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prueba_cubit/presentation/home/cubit/counter_cubit.dart';

class CustomAlert extends StatelessWidget {
  const CustomAlert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Refrescar data'),
      actions: [
        ElevatedButton(
            onPressed: () {
              context.read<HomeCubit>().fakeGetData();
              Navigator.of(context).pop();
            },
            child: const Text('Aceptar')),
      ],
    );
  }
}
