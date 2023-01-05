import 'package:flutter/material.dart';
import 'package:my_country_explorer/utils/app_colors.dart';
import 'package:my_country_explorer/utils/app_textstyles.dart';
import 'package:my_country_explorer/utils/components/home_page_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchBarTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Explore',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.wb_sunny_outlined))
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextField(
                  controller: searchBarTextController,
                  onChanged: (value) {},
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColor.lightModeGreyColor,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      hintText: 'Search Country',
                      hintStyle: AppTextStyle.tinyBody
                          .copyWith(color: AppColor.lightModePrimaryColor),
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: AppColor.lightModePrimaryColor),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    HomePageButton(
                      onTap: () {},
                      icons: Icons.language,
                      data: 'EN',
                    ),
                    const Spacer(),
                    HomePageButton(
                      onTap: () {},
                      icons: Icons.filter_alt_outlined,
                      data: 'Filter',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
