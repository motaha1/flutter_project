import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(actions: [
          IconButton(
              onPressed: () {
                Provider.of<AuthProvider>(context, listen: false).signOut();
              },
              icon: Icon(Icons.logout))
        ]),
        body: Consumer<AuthProvider>(
          builder: (context, provider, w) {
            return Container(
              color: Colors.grey.withOpacity(0.2),
              child: provider.loggedUser == null
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                         //   provider.uploadNewFile();
                          },
                          child: Container(
                            height: 150,
                            width: 150,
                            color: Colors.grey,
                            child: provider.loggedUser?.imageUrl == null
                                ? const Center(
                                    child: Icon(Icons.camera),
                                  )
                                : Image.network(
                                    (provider.loggedUser?.imageUrl)!,
                                    fit: BoxFit.cover,
                                  ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomProfileWidget(
                          label: "user name: ",
                          value: provider.loggedUser!.name,
                        ),
                        CustomProfileWidget(
                          label: "user email: ",
                          value: provider.loggedUser!.email,
                        ),
                        CustomProfileWidget(
                          label: "user phone: ",
                          value: provider.loggedUser!.phoneNumber,
                        ),
                      ],
                    ),
            );
          },
        ));
  }
}

class CustomProfileWidget extends StatelessWidget {
  final String label;
  final String value;
  const CustomProfileWidget({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Expanded(
              child: Text(
            label,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )),
          Expanded(
              flex: 2,
              child: Text(
                value,
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
