import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/provider/special.dart';
import 'package:final_grad_proj/screens_test/doctorComponent.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllDoctorssScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                // AppRouter.appRouter.goToWidget(AddNewCategory());
              },
              icon: Icon(Icons.add))
        ],
        title: Text('All Doctors'),
      ),
      body: Consumer2<Special, AuthProvider>(
          builder: (context, provider, provider2, w) {
        return provider.allCategories == null
            ? Center(
                child: Text('No Categories Found'),
              )
            : Column(
                children: [
                  Text(provider2.loggedUser!.email),
                  Expanded(
                    child: ListView.builder(
                        itemCount: provider.allCategories!.length,
                        itemBuilder: (context, index) {
                          return DoctorWidget(provider.allCategories![index]);
                        }),
                  ),
                ],
              );
      }),
    );
  }
}
