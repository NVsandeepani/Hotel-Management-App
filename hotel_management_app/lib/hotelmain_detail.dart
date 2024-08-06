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
                "Welcome to Kanola Hotel !",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
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
                height: 30.0,
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
                height: 40.0,
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
                      height: 30.0,
                    ),
                    Container(
                      height: 300.0,
                      child: TabBarView(
                        children: [
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                hotelGallery(
                                  context,
                                  "https://www.ticasino.com/uploads/_800xAUTO_crop_center-center_none/Hotel_Double_Queen_1200X800.jpg",
                                  "Deluxe Room",
                                  "Kanola Hotel",
                                  3,"one day : RS 5000.00 ",
                                ),
                                hotelGallery(
                                  context,
                                  "https://www.disneytouristblog.com/wp-content/uploads/2013/10/Disneyland-Hotel-0768.jpg",
                                  "Executive Room",
                                  "Kanola Hotel",
                                  3, 
                                  "one day : RS 7000.00 ",
                                ),
                                // Add more rooms here
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                hotelGallery(
                                  context,
                                  "https://www.yamu.lk/wp-content/uploads/2023/07/2-12-1024x480.jpg",
                                  "Indoor Hall",
                                  "Kanola Hotel",
                                  4,
                                  "8hours : RS 5 000 000.00 ",
                                ),
                                hotelGallery(
                                  context,
                                  "https://floralife.com/wp-content/uploads/2022/05/Floral-Management_Outdoor-event-1020X600.png",
                                  "Outdoor Hall",
                                  "Kanola Hotel",
                                  4,
                                  "8 hours : RS 500 000.00 ",
                                ),
                                // Add more wedding halls here
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                hotelGallery(
                                  context,
                                  "https://qtxasset.com/quartz/qcloud1/media/image/hotelmanagement/1515166502/garnish.jpg?VersionId=hS4LkdtaL.f5Xp3Im8bJHJl4UAGSqWf_",
                                  "Chinese Foods",
                                  "Kanola Hotel",
                                  3,
                                  "Rs. 700.00",
                                ),
                                hotelGallery(
                                  context,
                                  "https://imgstaticcontent.lbb.in/lbbnew/wp-content/uploads/2017/11/08183440/081117_GrillMill_02.jpg",
                                  "Gourmet Dinner",
                                  "Kanola Hotel",
                                  4,
                                   "Rs. 700.00",
                                ),
                                // Add more food options here
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                hotelGallery(
                                  context,
                                  "https://b772872.smushcdn.com/772872/wp-content/uploads/2021/03/Hotel2-1000x660.jpg?lossy=1&strip=1&webp=1",
                                  "Reception",
                                  "Kanola Hotel",
                                  3,
                                   "24hour Custormer Service",
                                ),
                                hotelGallery(
                                  context,
                                  "https://dexauc1l0pcnj.cloudfront.net/Content/images/blog/how-to-effectively-manage-your-hotel-staff.jpg",
                                  "Waiter",
                                  "Kanola Hotel",
                                  3,
                                  "24hour Custormer Service",
                                ),
                                // Add more staff here
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 190, 218, 241),
        unselectedItemColor: Color.fromARGB(255, 17, 10, 90),
        selectedItemColor: Color.fromARGB(255, 19, 159, 214),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Bookmark",
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