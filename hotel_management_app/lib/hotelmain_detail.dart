import 'package:flutter/material.dart';
import 'package:hotel_management_app/hotel_details.dart';

class HotelMainDetails extends StatefulWidget {
  const HotelMainDetails({super.key});

  @override
  State<HotelMainDetails> createState() => _HotelMainDetailsState();
}

class _HotelMainDetailsState extends State<HotelMainDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F7FF),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF6F7FF),
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to Canola Hotel !",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Your Hotel Features",
                style: TextStyle(
                  color: Color.fromARGB(255, 2, 48, 85),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Material(
                elevation: 10.0,
                borderRadius: BorderRadius.circular(30.0),
                shadowColor: Color(0x55434343),
                child: TextField(
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black26,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              DefaultTabController(
                length: 4,
                child: Column(
                  children: [
                    TabBar(
                      indicatorColor: Color.fromARGB(255, 5, 3, 114),
                      unselectedLabelColor: Color.fromARGB(255, 12, 81, 160),
                      labelColor: Color.fromARGB(255, 12, 81, 160),
                      labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      tabs: [
                        Tab(
                          text: "Rooms",
                        ),
                        Tab(
                          text: "Wedding Hall",
                        ),
                        Tab(
                          text: "Foods",
                        ),
                         Tab(
                          text: "Staff",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                hotelgallery(
                                    "https://www.ticasino.com/uploads/_800xAUTO_crop_center-center_none/Hotel_Double_Queen_1200X800.jpg",
                                    "Deluxe Room",
                                    "Canola Hotel",
                                    3),
                                hotelgallery(
                                    "https://rhotelgeelong.com.au/wp-content/uploads/2021/03/R-Hotel-Geelong-Hotel-Room-11.jpg",
                                    "Executive Room",
                                    "Canola Hotel",
                                    3),
                                // Add more rooms here
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                hotelgallery(
                                    "https://image.wedmegood.com/resized/540X/uploads/member/1333748/1598432237_Capture.JPG",
                                    "Indoor Hall",
                                    "Canola Hotel",
                                    4),
                                hotelgallery(
                                    "https://floralife.com/wp-content/uploads/2022/05/Floral-Management_Outdoor-event-1020X600.png",
                                    "Outdoor Hall",
                                    "Canola Hotel",
                                    4),

                                // Add more wedding halls here
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                hotelgallery(
                                    "https://qtxasset.com/quartz/qcloud1/media/image/hotelmanagement/1515166502/garnish.jpg?VersionId=hS4LkdtaL.f5Xp3Im8bJHJl4UAGSqWf_",
                                    "Chinese Foods",
                                    "Canola Hotel",
                                    3),
                                hotelgallery(
                                    "https://imgstaticcontent.lbb.in/lbbnew/wp-content/uploads/2017/11/08183440/081117_GrillMill_02.jpg",
                                    "Gourmet Dinner",
                                    "Canola Hotel",
                                    4),
                                // Add more food options here
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                hotelgallery(
                                    "https://b772872.smushcdn.com/772872/wp-content/uploads/2021/03/Hotel2-1000x660.jpg?lossy=1&strip=1&webp=1",
                                    "Reseption",
                                    "Canola Hotel",
                                    3),
                                hotelgallery(
                                    "https://dexauc1l0pcnj.cloudfront.net/Content/images/blog/how-to-effectively-manage-your-hotel-staff.jpg",
                                    "Waiter",
                                    "Canola Hotel",
                                    3),
                                // Add more rooms here
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Color.fromARGB(255, 8, 1, 70),
        selectedItemColor: Color.fromARGB(255, 7, 60, 204),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "BookMark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "Destination",
          ),
        
        ],
      ),
    );
  }
}
