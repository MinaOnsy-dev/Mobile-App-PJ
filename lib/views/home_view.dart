import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/internet_connect_service.dart';
import '../widgets/categories_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 20,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: Consumer<ConnectivityService>(
        builder: (context, connectivity, child) {
          if (!connectivity.isConnected) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.wifi_off, size: 64, color: Colors.red),
                  SizedBox(height: 16),
                  Text(
                    "No Internet Connection",
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ],
              ),
            );
          } else {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(child: CategoriesListView()),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 32),
                  ),
                  NewsListViewBuilder(category: 'general'),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
