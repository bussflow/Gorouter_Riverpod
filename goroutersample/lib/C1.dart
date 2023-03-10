import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:goroutersample/v.dart';

import 'main.dart';

class MyWidget extends ConsumerWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(67.0),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            ref.read(counterProvider.notifier).state++;

            ref.read(boolProvider.notifier).update((state) => Student(
                "NewName" + ref.read(counterProvider.notifier).state.toString(),
                2));

            ref.read(boolProvider.notifier).update((state) =>
                state.updateAge(ref.read(counterProvider.notifier).state));
          },
          child: const Text('Button2 '),
        ),
      ),
    );
  }
}
