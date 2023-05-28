import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   List<String> img=[
     'asset/healthcare.png',
     'asset/health.png',
     'asset/insurance.png'
  ];
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
               height: height*0.3,
                width: width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
                    gradient:LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xffFF8000),
                          Color(0xffFACC2E),
                          Color(0xffF7FE2E),
                        ]

                    )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.search,)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text("Lorem",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text("Lorem ipsum dolor sit amet,"
                            ,style: TextStyle(fontSize: 16,color: Colors.black26),),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20,bottom: 40),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text("consetetur sadipscing elitr,sed dim"
                            ,style: TextStyle(fontSize: 16,color: Colors.black26),),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Positioned(
                height: height*0.15,
                bottom: -50,
                width: width*0.5,

               child: Container(
                 margin: const EdgeInsets.only(right:60),
                 decoration: const BoxDecoration(
                   shape: BoxShape.circle,
                   color: Colors.white,
                 ),
                 child:Container(
                   margin: const EdgeInsets.all(30),
                   decoration: const BoxDecoration(
                     shape: BoxShape.circle,
                     color: Color(0xff5882FA),
                   ),
                   child: const Icon(Icons.emoji_emotions_outlined,color: Colors.white,),
                 )
               ),
              ),

            ],
          ),
          const SizedBox(height:20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text("Lorem ipsum",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text("Lorem ipsum",style: TextStyle(color: Colors.black26,fontSize: 20),)
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,

              itemCount: img.length,
              itemBuilder: (context, index) {
              return Row(
                children: [
                Container(


                  margin: const EdgeInsets.only(bottom: 10,left: 10),
                  height:height*0.22,
                  width: width/2.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffFFBF00)
                  ),
                  child:  Center(child:ImageIcon(
                     AssetImage(img[index]),
                    size: 40,
                  )),
                ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    height:height*0.21,
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
                          Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize:20,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  )

                ],
              );
            },),
          )
        ],
      ),
    );
  }
}
