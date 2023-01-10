import 'package:flutter/material.dart';
import 'package:my_country_explorer/models/country_model.dart';
import 'package:my_country_explorer/utils/app_colors.dart';
import 'package:my_country_explorer/utils/app_textstyles.dart';

class CountriesDetailsPage extends StatelessWidget {
  const CountriesDetailsPage({Key? key, required this.countriesDetails})
      : super(key: key);

  final AllCountriesModel countriesDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          countriesDetails.name!.official.toString(),
          style: AppTextStyle.boldHeadingBig
              .copyWith(color: AppColor.lightModePrimaryColor),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.lightModePrimaryColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 200,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      countriesDetails.flags!.png.toString(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(countriesDetails.name!.common.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
