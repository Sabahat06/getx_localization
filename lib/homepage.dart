import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  final List locale =[
    {'name':'ENGLISH','locale': const Locale('en','US')},
    {'name':'ಕನ್ನಡ','locale': const Locale('kn','IN')},
    {'name':'हिंदी','locale': const Locale('hi','IN')},
    {'name':'اردو','locale': const Locale('ur','UR')},
  ];

  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);
  }

  buildLanguageDialog(BuildContext context){
    showDialog(context: context,
      builder: (builder){
       return AlertDialog(
         title: const Text('Choose Your Language', style: TextStyle(color: Colors.black , fontSize: 18, fontWeight: FontWeight.w700),),
         content: Container(
           width: double.maxFinite,
           child: ListView.separated(
             shrinkWrap: true,
             itemCount: locale.length,
             separatorBuilder: (context,index){
               return const Divider(color: Colors.blue,);
             },
             itemBuilder: (context,index){
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: GestureDetector(child: Text(locale[index]['name'], style: const TextStyle(color: Colors.black ,fontSize: 16),),
                   onTap: () {
                     updateLanguage(locale[index]['locale']);
                   },
                 ),
               );
             },
           ),
         ),
       );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('hello'.tr,style: const TextStyle(fontSize: 18),),
            const SizedBox(height: 10,),
            Text('message'.tr,style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 10,),
            Text('subscribe'.tr,style: const TextStyle(fontSize: 20),),
            const SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                var locale = const Locale('en','US');
                Get.updateLocale(locale);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('English', style: TextStyle(fontSize: 16, color: Colors.white),))
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                var locale = const Locale('kn','IN');
                Get.updateLocale(locale);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade800,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('Kannada', style: TextStyle(fontSize: 16, color: Colors.white),))
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                var locale = const Locale('hi','IN');
                Get.updateLocale(locale);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('Hindi', style: TextStyle(fontSize: 16, color: Colors.white),))
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                var locale = const Locale('ur','UR');
                Get.updateLocale(locale);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green.shade900,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('Urdu', style: TextStyle(fontSize: 16, color: Colors.white),))
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                buildLanguageDialog(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 15),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Center(child: Text('changelang'.tr, style: const TextStyle(fontSize: 16, color: Colors.white),))
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
