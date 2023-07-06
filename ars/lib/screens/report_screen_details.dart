import 'package:ars/screens/gender_screen.dart';
import 'package:ars/widgets/button.dart';
import 'package:ars/widgets/feed_container_widget.dart';
import 'package:flutter/material.dart';

import '../Utils/app_color.dart';
import '../widgets/alert_dialog.dart';
import '../widgets/app_bar.dart';

class ReportScreenDetail extends StatefulWidget {
  const ReportScreenDetail({Key? key,  }) : super(key: key);

  @override
  State<ReportScreenDetail> createState() => _ReportScreenDetailState();
}

class _ReportScreenDetailState extends State<ReportScreenDetail> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            AppBarWidget(
              function: (){
                Navigator.pop(context);
                
              },
              title: 'Report',
              iconData: Icons.arrow_back_ios,
            ),
            const SizedBox(height: 30,),
         FeedContainer(
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  const Text('Victim\'s Name', style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 10,),
                  TextFormField(
                  cursorColor: AppColor.primaryColor,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:  const BorderSide(color: AppColor.cardColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: AppColor.cardColor)),
                  ),
                ),
                 const SizedBox(height: 20,),
                const Text('Parent Phone Number', style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500),),
                 const SizedBox(height: 10,),
                  Container(
                    width: MediaQuery.of(context).size.width*1,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColor.bgColor,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text(''),
                  ),
                 const SizedBox(height: 20,),
                const Text('Incident', style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: _controller,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  cursorColor: AppColor.primaryColor,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    border: const OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:  const BorderSide(color: AppColor.cardColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: AppColor.cardColor)),
                  ),
                ),
          ]
          )
         ),
         const SizedBox(height: 40,),
          Padding(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: InkWell(
            onTap: () {
               showDialog(context: context,
                              builder: (BuildContext context){
                        
                                return Alertdialog();
                              }
                              );
            },
            child: Button(text: 'Submit',)),
         )
            ],
        ),
      )),
    );
  }
}