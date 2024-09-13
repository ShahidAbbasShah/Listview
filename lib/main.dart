import 'package:flutter/material.dart';

void main(){
  runApp((MyApp()));
}
class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  var arrayData=[
    {
      'image':'Asset/hoodie.png',
      'name':'Shahid',
      'occupation':'flutter developer',
      'number':'0344-9999',
    },
    {
    'image':'Asset/hoodie.png',
      
    'name':'Ibrahim',
      'occupation':'junior flutter developer',
      'number':'0345-9999',
    },
    {
    'image':'Asset/hoodie.png',
      
      'name':'Mohammad',
      'occupation':'senior flutter developer',
      'number':'0344-8888',
    },
    {
      'image':'Asset/hoodie.png',
      'name':'Rizwan',
      'occupation':'Web developer',
      'number':'0344-7777',
    },
    {
      'image':'Asset/hoodie.png',
      'name':'Ammar',
      'occupation':'Website developer',
      'number':'0336-9999',
    },
    {
      'image':'Asset/hoodie.png',
      'name':'Hamza',
      'occupation':'full stack web developer',
      'number':'03434-3943',
    }
  ];
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:  ListView(
            children: arrayData.map((value){
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: height*0.15,
                  width: width*0.4,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  borderRadius: BorderRadius.circular(12)
                  ),

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Icon(Icons.perm_identity,size: 45,),
                        title: Text(value['name'].toString(),style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold
                        )),
                        subtitle: Text(value['occupation'].toString(),style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.bold
                        )),
                        trailing: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(value['image'].toString()),
                          
                                                ),
                      ),
                    ),
                  ),
                );

    },
          ).toList()
        ),
      ),
      );

  }
}
