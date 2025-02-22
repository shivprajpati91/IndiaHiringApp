import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inidiahiringg/View/settings.dart';
import 'package:inidiahiringg/View/settings1.dart';
import 'Company_List_Detail.dart';
import 'Job_Detail_Screen.dart';
import 'Subscription.dart';
import 'View_All.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(  // Enables scrolling
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),  // Top spacing

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "All Jobs",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>
                              JobListingScreen()));
                    },
                    child: const Text(
                      "View All",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),),
                ],),
              _buildJobList(),  // Job List

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recommended Jobs",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>
                              JobListingScreen()));
                    },
                    child: const Text(
                      "View All",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],),
              _buildJobList(), // Another job list for recommended jobs
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Most Recently Added Job",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>
                              JobListingScreen()));
                    },
                    child: const Text(
                      "View All",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],
              ),
              _buildRecomendJob(),
              const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular Job Roles",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>
                          JobListingScreen()));
                },
                child: const Text(
                  "View All",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ],
          ),
              _buildPopularList(),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Most Searched Job\nBy Department",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>
                              JobListingScreen()));
                    },
                    child: const Text(
                      "View All",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],
              ),
              _buildSearchjob(),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  const Text(
                    "Company List",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>
                              JobListingScreen()));
                    },
                    child: const Text(
                      "View All",
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),],
              ),
              _buildCompanyList(),
            ],),
      ),),);
  }
  Widget _buildJobList() {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildJobCard();
        },
      ),);

  }
  Widget _buildRecomendJob() {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildRecommendedJobs();
        },
      ),);

  }
  Widget _buildSearchjob() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,  // Horizontal scroll
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildMostSearchedJob();
        },
      ),);

  }
  Widget _buildRecommendedJobs() {
    return Card(color: Colors.white,elevation: 5,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(12),
        width: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Product Designer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 15,),
                Text("Title: Graphic Designer", style: TextStyle(fontWeight: FontWeight.w500)),
                SizedBox(height: 10,),
                Text(" Location: [Delhi, Hyderabad]"),
              ],
            ),
            Positioned(
              bottom: 10,
              left: 0,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=>JobDetails()));
                },
                child: const Text(
                  "Apply Now",
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.heart, color: Colors.red),
              ),
            ),],
        ),),
    );
  }
  Widget _buildMostSearchedJob() {
    return Card(color: Colors.white,elevation: 5,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(12),
        width: 190,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [

          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(height: 0,),
                Icon(Icons.food_bank_outlined,),
                Text(
                  "IT Department",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),

                SizedBox(height: 10),

                Text(" Total Job Applied : 27"),
              ],
            ),],
        ),),
    );
  }
  Widget _buildJobCard() {
    return Card(color: Colors.white,elevation: 5,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(12),
        width: 280,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [

          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Product Designer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text("TechDigi Pvt. Ltd."),
                SizedBox(height: 10),
                Text(" Gurgaon | MP", style: TextStyle(fontWeight: FontWeight.w500)),
                Text(" Salary: 20000 - 30000"),
                Text(" Job Post: On"),
              ],),
            Positioned(
              bottom: -10,
              left: 0,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context)=>JobDetails()));
                },
                child: const Text(
                  "Apply Now",
                  style: TextStyle(color: Colors.green),
                ),
              ),),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => AccountSettingsScreen()));
                },
                icon: const Icon(CupertinoIcons.heart, color: Colors.red),
              ),),
          ],),
      ),);
  }

  Widget _buildPopularJob() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
              spreadRadius: 2,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Product Designer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 20),
                Text("Total Job: 7", style: TextStyle(fontSize: 16, color: Colors.grey[700])),
                SizedBox(height: 40),
              ],
            ),

            Positioned(
              bottom: 10,
              child: Row(
                children: List.generate(5, (index) {
                  if (index < 4) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/user${index + 1}.jpg'), // Replace with actual image paths
                        radius: 20,  // Increased size
                      ),);
                  } else {
                    return CircleAvatar(
                      radius: 24,  // Increased size
                      backgroundColor: Colors.blueAccent.shade400,
                      child: Text("+1", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                    );
                  }
                }),),
            ),
            // Favorite Icon Positioned at Top Right
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>SubscriptionScreen()));
                },
                icon: const Icon(CupertinoIcons.heart, color: Colors.red),
              ),),
          ],),
      ),);
  }

  Widget _buildPopularList() {
    return SizedBox(
      height: 200,  // Increased height to fit larger avatars
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: _buildPopularJob(),
          );
        },
      ),
    );
  }

  Widget _buildCompanyList() {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,  // Horizontal scroll
        itemCount: 5,
        itemBuilder: (context, index) {
          return _buildCompanyCard();
        },
      ),);

  }
  Widget _buildCompanyCard() {
    return Card(color: Colors.white,elevation: 5,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(12),
        width: 189,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
          ],
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/assets1.jpg",height: 80,),
                InkWell(
                  child: const Text(
                    "Product Designer",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CompanyPage()));
                },
                ),
              ],),
          ],),
      ),);
  }
}
