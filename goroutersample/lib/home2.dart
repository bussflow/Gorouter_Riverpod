import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:goroutersample/v.dart';

import 'C1 copy.dart';
import 'C1.dart';

final checkboxProvider = StateProvider<bool>((ref) => false);

/// The details screen
class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                return TextField(
                  onChanged: (String v) {
                    ref
                        .read(boolProvider.notifier)
                        .update((state) => Student(v, 2));
                  },
                );
              },
            ),

            Consumer(builder: (context, ref, _) {
              return Checkbox(
                value: ref.watch(checkboxProvider),
                onChanged: (value) {
                  ref.read(checkboxProvider.notifier).state = value!;
                  ref
                      .read(boolProvider.notifier)
                      .update((state) => Student(value.toString(), 2));
                },
              );
            }),

            // TextField(
            //   onChanged: (String value) async {
            //     await showDialog<void>(
            //       context: context,
            //       builder: (BuildContext context) {
            //         return AlertDialog(
            //           title: const Text('Thanks!'),
            //           content: Text(
            //               'You typed "$value", which has length ${value.characters.length}.'),
            //           actions: <Widget>[
            //             TextButton(
            //               onPressed: () {
            //                 Navigator.pop(context);
            //               },
            //               child: const Text('OK'),
            //             ),
            //           ],
            //         );
            //       },
            //     );
            //   },
            // ),
            ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go back to the Home screen'),
            ),
            const MyWidget(),
            MyWidget2(),
            MyWidget3(),
          ],
        ),
      ),
    );
  }
}
