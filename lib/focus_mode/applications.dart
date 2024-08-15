import 'package:flutter/material.dart';

class Applications extends StatefulWidget {
  @override
  _ApplicationsState createState() => _ApplicationsState();
}

class _ApplicationsState extends State<Applications> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> applications = [
      {
        'icon': Icons.access_time_filled,
        'color': Colors.pink,
        'name': 'Instagram',
        'time': '4h',
      },
      {
        'icon': Icons.ac_unit,
        'color': Colors.blue,
        'name': 'Twitter',
        'time': '3h',
      },
      {
        'icon': Icons.facebook,
        'color': Colors.blue[800],
        'name': 'Facebook',
        'time': '1h',
      },
      // Add more applications if needed
    ];

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: 300.0), // Set a max height
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'Applications',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: applications.length,
              itemBuilder: (context, index) {
                final app = applications[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Card(
                    color: Colors.grey[850], // Darker background for the card
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: app['color']!.withOpacity(0.2),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(app['icon'], color: app['color'], size: 28.0),
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                app['name'],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                'You spent ${app['time']} today',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.info_outline, color: Colors.grey[400]),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
