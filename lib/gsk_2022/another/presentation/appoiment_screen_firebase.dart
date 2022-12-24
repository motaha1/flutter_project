import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/appoimnet_widget_firebase.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/three_screen/three_screen.dart';
import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/show_appoiment.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/provider/provider.dart';
import 'package:final_grad_proj/screens_test/display_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

class appoiment_show_patient_firebase extends StatefulWidget {
  appoiment_show_patient_firebase({Key? key, this.title}) : super(key: key);
  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<appoiment_show_patient_firebase> {
  DatePickerController _controller = DatePickerController();

  DateTime _selectedValue = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.replay),
          onPressed: () {
            _controller.animateToSelection();
          },
        ),
        appBar: AppBarFb2(title: 'Your appoiments'),
        body: Consumer<AuthProvider>(builder: (context, provider, x) {
          return Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.blueGrey[100],
            child: Column(
              //   mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Text("You Selected:"),
                // Padding(
                //   padding: EdgeInsets.all(10),
                // ),
                // Text(_selectedValue.toString()),
                // Padding(
                //   padding: EdgeInsets.all(20),
                // ),
                Container(
                  child: DatePicker(
                    DateTime.now(),
                    width: 60,
                    height: 100,
                    controller: _controller,
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Colors.black,
                    selectedTextColor: Colors.white,
                    inactiveDates: [],
                    onDateChange: (date) async {
                      // New date selected
                      setState(() {
                        _selectedValue = date;
                        // print(_selectedValue.toString().split(" ")[0]);
                        // print(provider.date);
                        provider.selected_date_appoiment_patient =
                            _selectedValue.toString().split(" ")[0];
                        print(provider.selected_date_appoiment_patient);
                      });
                      EasyLoading.showProgress(0.3, status: 'loading...');

                      await provider.getAllappoiment_Paitent();
                      EasyLoading.dismiss();
                    },
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                      itemCount: provider.selectedApp_toshow_paitent!.length,
                      itemBuilder: (context, index) {
                        return DialogFb3(
                          appoiment:
                              provider.selectedApp_toshow_paitent![index],
                        );
                      }),
                )
              ],
            ),
          );
        }));
  }
}

// - - - - - - - - - - - - Instructions - - - - - - - - - - - - - -
// Place AppBarFb1 inside the app bar property of a Scaffold
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

class AppBarFb2 extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final String title;

  AppBarFb2({Key? key, required this.title})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    String x = title;
    const primaryColor = Color.fromARGB(255, 255, 255, 255);
    const secondaryColor = Color(0xff6D28D9);
    const accentColor = Color.fromARGB(255, 29, 192, 54);
    const backgroundColor = Color(0xffffffff);
    const errorColor = Color(0xffEF4444);

    return AppBar(
      title: Text(title,
          style: TextStyle(color: Color.fromARGB(255, 28, 185, 67))),
      backgroundColor: primaryColor,
      actions: [
        IconButton(
          icon: Icon(
            Icons.add,
            color: accentColor,
          ),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => ThreeScreen()));
          },
        )
      ],
      leading: IconButton(
        icon: Icon(
          Icons.keyboard_arrow_left,
          color: accentColor,
        ),
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => AllDoctorssScreen()));
        },
      ),
    );
  }
}
