import 'package:flutter/material.dart';

import '../../../core/core.dart';

class RefreshWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const RefreshWidget({required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(CommonConst.errorMsg),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(onPressed: onPressed, child: Text('Refresh')),
        ],
      ),
    );
  }
}
