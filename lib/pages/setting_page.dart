import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  List<Map<String,dynamic>> data=[
  {
    "header":"Covid Test",
    "center":"Lorem \nipsum dolor",
    "bottom":"Today"
  },
    {
      "header1":"Isolation",
      "center1":"Lorem \nipsum dolor",
      "bottom":"Important"

    },
    {
      "header":"Fever",
      "center":"Lorem \nipsum dolor",
      "bottom":"Over Due"
    },
    {
      "header1":"Get a Jab!",
      "center1":"Lorem ipsum\n dolor sit",
      "bottom":"Tomorrow"

    },

  ];


  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    final width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height*0.25,
                width: width,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
                    color: Color(0xff2a65f5)
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.menu_sharp,color: Colors.white,)),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text("You are family now",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text("Michael B"
                            ,style: TextStyle(fontSize: 26,color: Colors.white,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
              Positioned(
                height: height*0.17,
                bottom: -50,
                width: width*0.5,

                child: Container(
                    margin: const EdgeInsets.only(right:70),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child:Container(
                      margin: const EdgeInsets.all(20),
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
          const SizedBox(
            height: 90,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: data.length~/2,
              itemBuilder: (context, index) {
                int currentIndex = 0;
                if(index==1){
                  currentIndex=2;
                }
                return Row(
                  children: [
                    Transform.translate(
                      offset: const Offset(0, -20),
                      child: Container(
                        margin: const EdgeInsets.all(15),
                        height: height*0.3,
                        width: width/2.4,
                        decoration:  BoxDecoration(
                          color: const Color(0xfff16104),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,

                          children: [

                            Text(data[currentIndex]['bottom'])

                          ],
                        ),

                      ),
                    ),
                    
                    Transform.translate(
                      offset: const Offset(0, 20),
                      child: Container(
                        height: height*0.3,
                        width: width/2.4,
                        decoration:  BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          mainAxisAlignment:MainAxisAlignment.center,

                          children: [

                            Text(data[currentIndex+1]['bottom'])

                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },),
          )
        ],
      ),
    );
  }
}
