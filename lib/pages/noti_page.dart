import 'package:flutter/material.dart';
import 'package:health_app/utils/reuseable_container.dart';

class NotiPage extends StatefulWidget {
  const NotiPage({Key? key}) : super(key: key);

  @override
  State<NotiPage> createState() => _NotiPageState();
}

class _NotiPageState extends State<NotiPage> {
  final List<Icon> icons=[
    Icon(Icons.check_circle,color: Colors.green,),
    Icon(Icons.cancel,color: Colors.yellow,)
  ];
  final List<String> text=[
    'Awaiting',
    'Done'
  ];

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return SafeArea(
        child:Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: height*0.25,
                  width: width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
                      color:Color(0xff2a65f5)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,color:Colors.white)),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications,color: Colors.white,)),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  height: height*0.2,
                  bottom: -50,
                  width: width/1.09,

                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xfff16104),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 80,
                          height: 60,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('asset/male.jpg'),fit: BoxFit.cover
                            )
                    ),


                        ),
                        const Text('Lorem ipsum',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                        const Text('Lorem ipsum',style: TextStyle(color: Colors.black26,fontSize: 14),)
                      ],

                    ),
                  ),
                ),
                Positioned(
                  height: height*0.16,
                  bottom: -70,
                  width: width/2.9,
                  left: -10,
                  child: Container(
                    padding: const EdgeInsets.all(25),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xfff16104),
                        shape: BoxShape.circle
                      ),
                      child: const Icon(Icons.emoji_emotions_outlined,color: Colors.white,),
                    ),
                  ),
                ),

              ],
            ),
            const SizedBox(height:70,),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("Lorem ipsum",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),


                  ],
                ),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child: Row(

                    children:const [
                      ReContainer(containerColor: Color(0xff0689f6), text: '6-12', textColor: Colors.black26),
                      ReContainer(containerColor: Color(0xff0689f6), text: '  4-8  ', textColor: Colors.white),
                      ReContainer(containerColor: Color(0xff69eef9), text: '8-12', textColor: Colors.white),
                      ReContainer(containerColor: Color(0xff69eef9), text: '12-16', textColor: Colors.black26),
                      ReContainer(containerColor: Color(0xff69eef9), text: '16-20', textColor: Colors.black26),




                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
               shrinkWrap: true,
                itemCount: text.length,
                itemBuilder: (context, index){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height:height*0.18,

                        width: width/4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            icons[index],
                            Text(text[index])
                          ],
                        ),
                      ),
                      Container(

                        height:height*0.16,
                        width:width/1.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 6,
                                  blurRadius: 10,
                                  offset: const Offset(0,3)                          )
                            ]
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Column(
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children:const [
                              SizedBox(height: 20,),
                              Text('Lorem ipsum',style: TextStyle(fontSize: 20,color: Colors.black45),),
                              Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize:20,color: Colors.black),)
                            ],
                          ),
                        ),
                      )
                    ],
                  );
                },
              ),
            )
          ],
        )
    );
  }
}
