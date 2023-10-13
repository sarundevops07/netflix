import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/search/search_bloc.dart';
import 'package:netflix_clone/presentation/core/const/const.dart';
import 'package:netflix_clone/domain/search/debounce/debounce.dart';
import 'package:netflix_clone/presentation/search/widgets/idel_search.dart';
import 'package:netflix_clone/presentation/search/widgets/search_result.dart';

class Search extends StatelessWidget {
  Search({super.key});
  final debouncer = Debouncer();

  get callback => null;
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<SearchBloc>().add(const SearchEvent.initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
                style: const TextStyle(color: Colors.white),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                onChanged: (value) {
                  debouncer.debounce(const Duration(seconds: 2), () {
                    context
                        .read<SearchBloc>()
                        .add(SearchEvent.searchMovie(movieQuery: value));
                  });
                }),
            spaceHeight10,
            Expanded(
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  if (state.searchResultsModel.isEmpty) {
                    return const SearchIdleWidget();
                  } else {
                    return const SearchResultWidget();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
