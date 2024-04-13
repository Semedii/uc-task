import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uniqcast_task/components/custom_drawer.dart';
import 'package:uniqcast_task/model/package/package.dart';
import 'package:uniqcast_task/provider/package/package_notifier.dart';
import 'package:uniqcast_task/provider/package/package_state.dart';
import 'package:uniqcast_task/screens/channel_page.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: const Text('Packages'),
      ),
      body: _mapStateToWidget(ref),
    );
  }

  Widget _getPackageList(List<Package>? packages) {
    return ListView.builder(
      itemCount: packages?.length ?? 0,
      itemBuilder: (context, index) {
        final package = packages?[index];
        final bool isDisabled = package?.purchasedDate == null;
        return _getListItem(package, isDisabled, context, packages);
      },
    );
  }

  ListTile _getListItem(
    Package? package,
    bool isDisabled,
    BuildContext context,
    List<Package>? packages,
  ) {
    return ListTile(
      title: _getListItemTitle(package, isDisabled),
      subtitle: _getListItemSubtitle(package, isDisabled),
      trailing: _getListItemTrailing(package, isDisabled),
      onTap: () => _onListItemTapped(context, packages, isDisabled),
    );
  }

  Text _getListItemTitle(Package? package, bool isDisabled) {
    return Text(
      "Package ID: ${package?.id.toString()}",
      style: _getListItemTitleStyle(isDisabled),
    );
  }

  TextStyle _getListItemTitleStyle(bool isDisabled) {
    return TextStyle(
      fontWeight: isDisabled ? FontWeight.normal : FontWeight.bold,
      color: isDisabled ? Colors.grey : Colors.black,
    );
  }

  Text _getListItemSubtitle(Package? package, bool isDisabled) {
    return isDisabled
        ? const Text('Not purchased yet')
        : Text('Purchased date: ${package?.purchasedDate}');
  }

  Widget? _getListItemTrailing(Package? package, bool isDisabled) {
    return isDisabled
        ? ElevatedButton(onPressed: () {}, child: const Text("Buy now"))
        : null;
  }

  Widget _mapStateToWidget(WidgetRef ref) {
    final packageState = ref.watch(packageNotifierProvider);
    if (packageState is PackageInitialState) {
      ref.read(packageNotifierProvider.notifier).fetchUserPackages();
    }
    if (packageState is PackageLoadingState) {
      return const Center(child: CircularProgressIndicator());
    }
    if (packageState is PackageLoadedState) {
      return _getPackageList(packageState.packages);
    } else {
      return const Center(child: Text('Unknown state'));
    }
  }

void _onListItemTapped(
  BuildContext context,
  List<Package>? packages,
  bool isDisabled,
) {
  isDisabled
      ? null
      : () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChannelPage(packages: packages!),
            ),
          );
        }(); 
}
}
