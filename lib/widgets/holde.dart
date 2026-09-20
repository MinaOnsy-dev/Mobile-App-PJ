/*import 'package:flutter/material.dart';
import 'package:NewsCloud/models/article_model.dart';
import 'package:NewsCloud/views/news_webview.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (articleModel.url != null &&
            Uri.tryParse(articleModel.url!)?.hasAbsolutePath == true) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsWebView(url: articleModel.url!),
            ),
          );
        } else {
          // هنا ممكن تطبع أو تعرض رسالة خطأ
          print("Invalid or null URL: ${articleModel.url}");
        }
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          articleModel.image != null
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    articleModel.image!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: const Icon(Icons.image_not_supported),
                ),
          const SizedBox(height: 12),
          Text(
            articleModel.title,
            maxLines: 2,
          ),
          const SizedBox(height: 12),
          Text(
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            articleModel.subTitle ?? '',
            maxLines: 2,
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          )
        ],
      ),
    );
  }
}*//*
import 'package:NewsCloud/services/internet_connect_service.dart';
import 'package:flutter/material.dart';
import 'package:NewsCloud/widgets/categories_list_view.dart';
import 'package:provider/provider.dart';
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
          } else
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(child: CategoriesListView()),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 32,
                    ),
                  ),
                  NewsListViewBuilder(
                    category: 'general',
                  ),
                ],
              ),
            );
        },
      ),
    );
  }
}
// Web View*/

