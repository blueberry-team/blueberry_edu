import 'package:blueberry_edu/state/feature/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CheckCount extends ConsumerWidget {
  const CheckCount({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.read(addCountProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Check Count'),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Count: $count"),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text("이동")),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Home()));
                  },
                  child: const Text("이동 완전히"))
            ],
          ),
        ));
  }
}
