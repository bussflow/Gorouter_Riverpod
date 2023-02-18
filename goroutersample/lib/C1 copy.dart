import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'main.dart';

class MyWidget2 extends ConsumerWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ignore: prefer_const_constructors
    final count = ref.watch(counterProvider);
    return Padding(
      padding: EdgeInsets.all(67.0),
      child: Center(
        child: Text('$count'),
      ),
    );
  }
}
