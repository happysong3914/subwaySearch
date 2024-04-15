import 'package:flutter/material.dart';
import 'package:subway_search/presentation/search_list_view_model.dart';
import 'package:provider/provider.dart';

class SearchMain extends StatelessWidget {
  const SearchMain({super.key});

  @override
  Widget build(BuildContext context) {
    final _queryTextEditingController = TextEditingController();
    final viewModel = context.watch<SearchListViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('text'),
      ),
      body:TextField(
        controller: _queryTextEditingController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: '검색어',
          suffixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              final query = _queryTextEditingController.text;
              viewModel.onSearch(query);
            },
          ),
        ),
      ),
    );
  }
}
