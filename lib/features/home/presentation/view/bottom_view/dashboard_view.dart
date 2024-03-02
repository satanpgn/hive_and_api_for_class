

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_and_api_for_class/core/common/provider/is_dark_theme.dart';
import 'package:hive_and_api_for_class/core/common/snackbar/my_snackbar.dart';
import 'package:hive_and_api_for_class/features/batch/presentation/viewmodel/batch_view_model.dart';
import 'package:hive_and_api_for_class/features/course/presentation/viewmodel/course_viewmodel.dart';
import 'package:hive_and_api_for_class/features/home/presentation/viewmodel/home_viewmodel.dart';
import 'package:hive_and_api_for_class/features/home/presentation/widget/batch_widget.dart';
import '../../widget/course_widget.dart';

class DashboardView extends ConsumerStatefulWidget {
  const DashboardView({super.key});

  @override
  ConsumerState<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends ConsumerState<DashboardView> {
  late bool isDark;
  // String _searchQuery = 'Collections';

  @override
  void initState() {
    isDark = ref.read(isDarkThemeProvider);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var batchState = ref.watch(batchViewModelProvider);
    var courseState = ref.watch(courseViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online Shopping'),
        actions: [
          IconButton(
            onPressed: () {
              // ref.read(batchViewModelProvider.notifier).getBatches();
              // ref.read(courseViewModelProvider.notifier).getCourses();
              showSnackBar(message: 'Refreshing...', context: context);
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {
              ref.read(homeViewModelProvider.notifier).logout(context);
            },
            icon: const Icon(
              Icons.logout,
              color: Colors.purple,
            ),
          ),
          Switch(
            value: isDark,
            onChanged: (value) {
              setState(() {
                isDark = value;
                ref.read(isDarkThemeProvider.notifier).updateTheme(value);
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              // Banner Section
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banner1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                children: [
                  _buildCategoryTile('Electronics', Icons.devices),
                  _buildCategoryTile('Books', Icons.menu_book),
                  _buildCategoryTile('Toys', Icons.toys),
                  _buildCategoryTile('Mobiles', Icons.phone_android),
                  _buildCategoryTile('Laptop', Icons.laptop),
                  _buildCategoryTile('Sports', Icons.sports_soccer),
                  _buildCategoryTile('Clothing', Icons.shopping_bag),
                  // Add more categories as needed
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Batches',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Flexible(
              child: BatchWidget(ref: ref, batchList: batchState.batches),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Courses',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Flexible(
              child: CourseWidget(courseList: courseState.courses),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryTile(String title, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromARGB(255, 7, 139, 51),
            child: Icon(
              iconData,
              size: 30,
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}