import 'package:flutter/material.dart';
import 'package:my_country_explorer/utils/app_colors.dart';
import 'package:my_country_explorer/utils/app_textstyles.dart';
import 'package:my_country_explorer/utils/components/home_page_button.dart';
import 'package:my_country_explorer/view_models/home_page_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Provider.of<AllCountriesProvider>(context, listen: false).allCountries();
    super.initState();
  }

  TextEditingController searchBarTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var countriesProvider =
        Provider.of<AllCountriesProvider>(context, listen: true);

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
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(child: ListView.builder(
                    itemCount: countriesProvider.countries.length,
                    itemBuilder: (context, index){
                      return ListTile(
                        onTap: (){print(countriesProvider.countries[index].name);},
                        title: Text(countriesProvider.countries[index].name!.official.toString()),
                      );
                    }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
