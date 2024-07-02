import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String content =
      "Mark Zuckerberg was born on May 14, 1984, in White Plains, New York. "
      "He developed an interest in computers at a young age, eventually creating Facebook in "
      "2004 while he was a student at Harvard University. Initially, the pla"
      "tform was meant for Harvard students but quickly expanded to other universities"
      " and eventually the public.Mark Zuckerberg was born on May 14, 1984, in White Plains, New York. "
      "He developed an interest in computers at a young age, eventually creating Facebook in "
      "2004 while he was a student at Harvard University. Initially, the pla"
      "tform was meant for Harvard students but quickly expanded to other universities"
      " and eventually the public";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 110.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  margin: EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              margin: EdgeInsets.only(left: 15),
                              padding: EdgeInsets.only(left: 20),
                              child: Text(
                                'Facebook',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 40),
                            Container(
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white12,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add,
                                  size: 25,
                                ),
                              ),
                            ),
                            SizedBox(width: 2),
                            Container(
                                height: 25,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white12,
                                ),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.search,
                                      size: 25,
                                    ))),
                            SizedBox(width: 2),
                            Container(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.menu,
                                      size: 25,
                                    ))),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.home,
                                  color: Colors.blue,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.manage_search_outlined,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.message,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.video_collection,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.shopify,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              floating: false,
              pinned: false,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Expanded(
                    child: Container(

                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.blue)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // height: 300,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                // profile picture
                                CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://cdn.britannica.com/98/236598-050-9F0C5A8D/Mark-Zuckerberg-2019.jpg"),
                                  radius: 30,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Row(
                                  children: [
                                    //This colum using for name,badge,date,public
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        //name and batch
                                        Row(
                                          children: [
                                            Text(
                                              "Mark Zuckerberg ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13),
                                            ),
                                            CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  "https://i.pinimg.com/564x/ac/7c/a0/ac7ca0f831b254c7221381128481e9da.jpg"),
                                              radius: 8,
                                            ),
                                          ],
                                        ),
                                        //date in facebook
                                        Row(
                                          children: [
                                            Text(
                                              "15 may 2024",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 2,
                                            ),
                                            Icon(
                                              Icons.public,
                                              size: 10,
                                            )
                                          ],
                                        ),
                                      ],
                                    ),

                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.settings),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //For post
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text("",),
                                // TextButton(onPressed: (){}, child: Text("See more",style:TextStyle(
                                //   fontWeight:FontWeight.bold,
                                // ),)),

                                //Post
                                ReadMoreText(
                                  content,
                                  trimLines: 3,
                                  textAlign: TextAlign.justify,
                                  trimMode: TrimMode.Line,
                                  trimCollapsedText: " Show More ",
                                  trimExpandedText: " Show Less ",
                                  lessStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[700],
                                  ),
                                  moreStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[700],
                                  ),
                                  style: TextStyle(
                                    fontSize: 16,
                                    height: 2,
                                  ),
                                ),



                              //for image
                                Center(
                                  child: Container(
                                      height: 150,
                                      child: ClipRect(
                                          child: Image.network(
                                        "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQudfLLk1p5Z0HecLq3BENiUzI46TSBa3am0OU37r2mmppighAg",
                                        fit: BoxFit.cover,
                                      ))),
                                ),
                             SizedBox(height: 10,),
                             //for like comment and share
                                Divider(
                                  height: 1, // Specifies the height of the divider
                                  color: Colors.black, // Specifies the color of the divider
                                  thickness: 1, // Specifies the thickness of the divider
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                            Icons.monetization_on_outlined,color: Colors.black,),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Container(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.comment_bank),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 75,
                                    ),
                                    Container(
                                      child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.share),
                                      ),
                                    ),

                                  ],
                                ),

                                //For comment
                                Container(
                                  child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundImage: NetworkImage("https://cdn.britannica.com/98/236598-050-9F0C5A8D/Mark-Zuckerberg-2019.jpg"),
                                      ),

                                      TextField(
                                        decoration: InputDecoration(
                                          hintText: 'Write a comment ',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      Container(
                                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIpbahyWPkqFgxtoZHS7oD77mEuRAJj6-CEg&s"),
                                      )


                                    ],
                                  ),
                                ),



                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );

                  //   ListTile(
                  //   title: Text("Md sabbir hossen"),
                  //   subtitle: Text("man"),
                  //   //leading: icon,
                  // );
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
