import 'dart:developer';
import 'dart:ffi';
import 'package:ars/models/student_model.dart';
import 'package:ars/services/student_api.dart';
import 'package:http/http.dart' as http;
import 'package:ars/Utils/app_color.dart';
import 'package:ars/sample_data/home_list.dart';
import 'package:ars/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
     
       backgroundColor: AppColor.bgColor,
       body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
        AppBarWidget(
          function: (){},
          title: 'Welcome',
          iconData:Icons.menu_outlined ,
        ),
          const SizedBox(height: 30,),
          Container(
            width: MediaQuery.of(context).size.width* 1,
              margin: const EdgeInsets.symmetric(horizontal: 10),
               padding: const EdgeInsets.only(left: 20,right: 20, top: 30,bottom: 50),
            decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('How may we help you?',style: TextStyle(color: AppColor.primaryColor,fontWeight: FontWeight.w500,fontSize: 18),),
                const SizedBox(height: 15,),
                GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                   crossAxisSpacing: 20.0,
                   mainAxisSpacing: 20.0,
                    mainAxisExtent: 100
                  ), 
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index){
                    return GestureDetector(
                      onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          homeList[index][2])),
                      child: Card(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                    side: BorderSide(
                                      // border color
                                      color: AppColor.primaryColor,
                                      // border thickness
                                      width: 1,
                                    )),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(homeList[index][1],color: AppColor.primaryColor,),
                            const SizedBox(height: 10,),
                            Text(homeList[index][0],style: const TextStyle(color: AppColor.primaryColor),)
                          ],
                        ),
                      ),
                    );
                  })
              ],
            ),
          )
        ],
       )),
     ),
      
    );
  }
}


//#3760F4
//#FFFFFF