import 'package:flutter/material.dart';
import 'package:prueba_cubit/presentation/pagination/cubit/cubit.dart';

/// {@template pagination_body}
/// Body of the PaginationPage.
///
/// Add what it does
/// {@endtemplate}
class PaginationBody extends StatefulWidget {
  /// {@macro pagination_body}
  const PaginationBody({super.key});

  @override
  State<PaginationBody> createState() => _PaginationBodyState();
}

class _PaginationBodyState extends State<PaginationBody> {
  late ScrollController _scrollController;
  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  void _scrollListener() {
    double maxScroll = _scrollController.position.maxScrollExtent;
    double currentScroll = _scrollController.position.pixels;

    if (maxScroll - currentScroll <= 100 && !_scrollController.position.outOfRange) {
      context.read<PaginationCubit>().getPokemonNames();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaginationCubit, PaginationState>(
      buildWhen: (previous, current) {
        return current.status != PaginationStatus.loading || current.status != PaginationStatus.loadingMoreError;
      },
      builder: (context, state) {
        switch (state.status) {
          case PaginationStatus.initial:
            return const Center(child: CircularProgressIndicator());
          // case PaginationStatus.loading:
          //   return const Center(child: CircularProgressIndicator());
          case PaginationStatus.loaded:
            return ListView.builder(
              controller: _scrollController,
              itemCount: state.pokeNames.length,
              itemBuilder: (context, index) {
                final pokeName = state.pokeNames[index];
                return ListTile(
                  title: Text('$index ${pokeName.name}'),
                );
              },
            );
          case PaginationStatus.error:
            return const Center(child: Text('Error'));
          
          default :
            return const Center(child: CircularProgressIndicator());

        }
      },
    );
  }
}
