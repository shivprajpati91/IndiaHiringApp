import 'package:flutter/material.dart';

class CompanyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Company Detail', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue.shade300,
        elevation: 4,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Company Details Card
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),side: BorderSide(color: Colors.blueGrey.shade200)
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Company Details',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      detailRow('Company Name','                         Abhi Cool'),
                      detailRow('Contact Person', '                      Abhishek Tiwari'),
                      detailRow('Email', '                               abhishek1@gmail.com'),
                      detailRow('Mobile', '                                      9788432412'),
                      detailRow('Phone', '                                       7573858'),
                      detailRow('Description', '                                      yea'),
                      detailRow('URL', '                                       www.ecomsa.com'),
                      detailRow('Company Rating', '                        No reviews yet'),
                      detailRow('Number of Employees', '                         10'),
                      detailRow('Type Of Industry', '                                 abc'),
                      detailRow('Address', '                                          sdl dsnull'),
                      SizedBox(height: 10),
                      Text(
                        'Job Location: Anantapur, Andhra Pradesh, India 353421',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Company Jobs Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Company Jobs',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 255,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    JobCard(
                      jobTitle: 'First Deveko',
                      location: 'Delhi, Hyderabad',
                      workType: 'Offshore',
                      hiring: '10',
                      salary: '10000 - 20000 per year',
                      jobType: 'C++ & Developers',
                    ),
                    JobCard(
                      jobTitle: 'Job Title [2]',
                      location: 'Location [2]',
                      workType: 'Type [2]',
                      hiring: '5',
                      salary: '15000 per month',
                      jobType: 'Java Developer',
                    ),
                  ],),
              ),),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
  Widget detailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            '$title: ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),),
          Flexible(
            child: Text(
              value,
              style: TextStyle(color: Colors.grey.shade800),
            ),
          ),
        ],
      ),
    );
  }
}

class JobCard extends StatelessWidget {
  final String jobTitle, location, workType, hiring, salary, jobType;

  JobCard({
    required this.jobTitle,
    required this.location,
    required this.workType,
    required this.hiring,
    required this.salary,
    required this.jobType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,

      margin: EdgeInsets.only(left: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.grey.shade400),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade100,
            blurRadius: 15,
            offset: Offset(0, 4),
          )
        ],),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            jobTitle,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: Colors.black87,
            ),),
          SizedBox(height: 8), // Increased space for better separation
          Text(
            'Location: $location',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
          ),
          SizedBox(height: 4),
          Text(
            'Work Type: $workType',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
          ),
          SizedBox(height: 4),
          Text(
            'Hiring: $hiring',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
          ),
          SizedBox(height: 4),
          Text(
            'Salary: $salary',
            style: TextStyle(
              fontSize: 15,
              color: Colors.green.shade400,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 4),
          Text(
            'Job Type: $jobType',
            style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
          ),
          SizedBox(height: 15), // More space before the button
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade500,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Apply',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
