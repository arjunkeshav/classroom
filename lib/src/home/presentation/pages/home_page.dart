import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final ValueNotifier<bool> _isGridViewNotifier = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const HomeTitle(),
        actions: [
        ValueListenableBuilder(
          valueListenable: _isGridViewNotifier,
          builder: (BuildContext context, bool value, Widget? child) {
            return IconButton(
              icon: Icon(value ? Icons.list : Icons.grid_view),
              onPressed: () {
                _isGridViewNotifier.value = !_isGridViewNotifier.value;
              },
            );
          },
        ),
      ],
        toolbarHeight: 80,
      ),
      backgroundColor: Colors.white,
      body:  SizedBox.expand(
        child: Center(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ValueListenableBuilder(
              valueListenable: _isGridViewNotifier,
              builder: (BuildContext context, bool value, Widget? child) {
              return !value? const HomeListView():const HomeGridView();
            }
          ),
        ),),
      ),
    );
  }
}



