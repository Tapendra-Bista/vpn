
import 'package:flutter/material.dart';
import 'package:vpn/common/mytext.dart';

class CountryList extends StatelessWidget {
  const CountryList({
    super.key,required this.imageUrl,
    required this.countryName,
    required this.titleWidget,
      required this.trailingWidget,
      required this.onTap
  });
final  String imageUrl;
final Function () onTap;
final String countryName;
final Widget titleWidget;
final Widget trailingWidget;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: ListTile(
        leading:  CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
          radius: 40,
        ),
        subtitle: Text(
          countryName,
          style: titleStyle.copyWith(fontSize: 16),
        ),
        title: titleWidget,
        trailing: trailingWidget
      ),
    );
  }
}
