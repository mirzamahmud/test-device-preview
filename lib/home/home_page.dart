import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text('Home'),
        ),
        body: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            vertical: 20,
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Check Device Preview Package',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  itemBuilder:
                      (context, index) => Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsetsDirectional.symmetric(
                          vertical: 12,
                          horizontal: 12,
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.abc),
                            const SizedBox(width: 12),
                            Flexible(
                              child: Text(
                                'Widget: ${index + 1} sfddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',

                                style: Theme.of(context).textTheme.labelLarge,
                              ),
                            ),
                          ],
                        ),
                      ),
                  separatorBuilder:
                      (context, index) => const SizedBox(height: 8),
                  itemCount: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
