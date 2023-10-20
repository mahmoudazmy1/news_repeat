import 'package:flutter/material.dart';
import 'package:repeat_news_api/api/api_manager.dart';
import 'package:repeat_news_api/model/sourceResponse.dart';
import 'package:repeat_news_api/my_them.dart';

class CategoryDetails extends StatelessWidget {
  static const String routeName = 'category-details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyThem.primaryColor,
        title: Text(
          'NEWS APP',
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: MyThem.whiteColor),
        ),
      ),
      body: FutureBuilder<SourceResponse?>(
          future: ApiManager.getSources(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(
                  color: MyThem.primaryColor,
                ),
              );
            } else if (snapshot.hasError) {
              return Column(
                children: [
                  Text(
                    'something went wrong',
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text('try again',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: MyThem.whiteColor)))
                ],
              );
            }
            if (snapshot.data?.status != 'ok') {
              return Column(
                children: [
                  Text(snapshot.data?.message ?? ''),
                  ElevatedButton(
                      onPressed: () {
                        ApiManager.getSources();
                      },
                      child: Text(
                        'try again',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: MyThem.whiteColor),
                      ))
                ],
              );
            }
            var sourceList = snapshot.data?.sources ?? [];
            return ListView.builder(
                itemBuilder: (context, index) {
                  return Text(sourceList[index].name ?? '');
                },
                itemCount: sourceList.length);
          }),
    );
  }
}
