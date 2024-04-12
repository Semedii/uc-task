import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/model/package/package.dart';
import 'package:uniqcast_task/provider/package/package_notifier.dart';
import 'package:uniqcast_task/provider/package/package_state.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Fetch user packages regardless of the initial state
    

    return Scaffold(
      appBar: AppBar(
        title: const Text('Packages'),
      ),
      body: _buildBody(ref),
    );
  }

  Widget _buildBody(WidgetRef ref) {
    final packageState = ref.watch(packageNotifierProvider);
    if(packageState is PackageInitialState){
      ref.read(packageNotifierProvider.notifier).fetchUserPackages();
    }
    if (packageState is PackageLoadingState) {
      return const Center(child: CircularProgressIndicator());
    }
    if (packageState is PackageLoadedState) {
      return _buildPackageList(packageState.packages);
    } else {
      return const Center(child: Text('Unknown state'));
    }
  }

  Widget _buildPackageList(List<Package>? packages) {
    return ListView.builder(
      itemCount: packages?.length ?? 0,
      itemBuilder: (context, index) {
        final package = packages?[index];
        final bool isDisabled = package?.purchasedDate == null;

        return ListTile(
          title: Text(
            "Package ID: ${package?.id.toString()}",
            style: TextStyle(
              fontWeight: isDisabled ? FontWeight.normal : FontWeight.bold,
              color: isDisabled ? Colors.grey : Colors.black,
            ),
          ),
          subtitle: isDisabled
              ? const Text('Not purchased yet')
              : Text('Purchased date: ${package?.purchasedDate}'),
          onTap: isDisabled
              ? null
              : () {
                  // Handle onTap event only if not disabled
                  print("Clicked on package ${package?.id}");
                },
        );
      },
    );
  }
  
}
