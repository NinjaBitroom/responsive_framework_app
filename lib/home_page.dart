import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página Inicial'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            ResponsiveVisibility(
              hiddenConditions: const [Condition.equals(name: MOBILE)],
              child: Image.asset('images/background.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Center(
                child: Text(
                  'Iphone 20 pro max',
                  style: ResponsiveValue(
                    context,
                    conditionalValues: [
                      Condition.smallerThan(
                        name: DESKTOP,
                        value: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                    defaultValue: Theme.of(context).textTheme.displayLarge,
                  ).value,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context).primaryColorLight,
                ),
                child: Image.asset('images/item.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
