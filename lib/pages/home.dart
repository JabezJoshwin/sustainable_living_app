import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var tasks = [
    {
      "id": "goal_001",
      "title": "Use a Reusable Water Bottle",
      "description":
          "Avoid single-use plastic bottles by refilling your own bottle.",
      "type": "daily",
      "points": 10,
      "carbon_reduction_kg": 0.08,
      "createdAt": "2025-10-07T00:00:00Z",
      "resetAt": "2025-10-08T00:00:00Z",
    },
    {
      "id": "goal_002",
      "title": "Take Public Transport Instead of Car",
      "description": "Use the bus, metro, or carpool instead of driving alone.",
      "type": "daily",
      "points": 15,
      "carbon_reduction_kg": 1.2,
      "createdAt": "2025-10-07T00:00:00Z",
      "resetAt": "2025-10-08T00:00:00Z",
    },
    {
      "id": "goal_003",
      "title": "Unplug Devices When Not in Use",
      "description":
          "Save electricity by unplugging idle chargers and devices.",
      "type": "daily",
      "points": 8,
      "carbon_reduction_kg": 0.05,
      "createdAt": "2025-10-07T00:00:00Z",
      "resetAt": "2025-10-08T00:00:00Z",
    },
    {
      "id": "goal_004",
      "title": "Avoid Fast Fashion Purchases",
      "description": "Buy only sustainable or second-hand clothes this week.",
      "type": "weekly",
      "points": 25,
      "carbon_reduction_kg": 6.0,
      "createdAt": "2025-10-07T00:00:00Z",
      "resetAt": "2025-10-14T00:00:00Z",
    },
    {
      "id": "goal_005",
      "title": "Reduce Meat Consumption",
      "description": "Eat vegetarian meals for at least 3 days this week.",
      "type": "weekly",
      "points": 20,
      "carbon_reduction_kg": 5.3,
      "createdAt": "2025-10-07T00:00:00Z",
      "resetAt": "2025-10-14T00:00:00Z",
    },
    {
      "id": "goal_006",
      "title": "Recycle Household Waste",
      "description": "Segregate and recycle paper, plastic, and glass waste.",
      "type": "weekly",
      "points": 15,
      "carbon_reduction_kg": 1.5,
      "createdAt": "2025-10-07T00:00:00Z",
      "resetAt": "2025-10-14T00:00:00Z",
    },
    {
      "id": "goal_007",
      "title": "Switch to LED Bulbs",
      "description":
          "Replace all CFL/incandescent bulbs with energy-efficient LEDs.",
      "type": "monthly",
      "points": 40,
      "carbon_reduction_kg": 12.0,
      "createdAt": "2025-10-07T00:00:00Z",
      "resetAt": "2025-11-07T00:00:00Z",
    },
    {
      "id": "goal_008",
      "title": "Start Composting Organic Waste",
      "description": "Compost kitchen waste to reduce landfill contribution.",
      "type": "monthly",
      "points": 35,
      "carbon_reduction_kg": 10.0,
      "createdAt": "2025-10-07T00:00:00Z",
      "resetAt": "2025-11-07T00:00:00Z",
    },
    {
      "id": "goal_009",
      "title": "Plant a Tree",
      "description": "Plant a tree or support an organization that does.",
      "type": "monthly",
      "points": 50,
      "carbon_reduction_kg": 20.0,
      "createdAt": "2025-10-07T00:00:00Z",
      "resetAt": "2025-11-07T00:00:00Z",
    },
    {
      "id": "goal_010",
      "title": "Conduct a Sustainability Awareness Drive",
      "description": "Organize or participate in an awareness campaign.",
      "type": "monthly",
      "points": 45,
      "carbon_reduction_kg": 8.0,
      "createdAt": "2025-10-07T00:00:00Z",
      "resetAt": "2025-11-07T00:00:00Z",
    },
  ];

  late List<bool> checked;

  @override
  void initState() {
    super.initState();
    checked = List<bool>.filled(tasks.length, false);
  }

  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.green[700],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              child: Text(
                "Your Points: $score ☘️",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                  color: Colors.green[900],
                  shadows: [
                    Shadow(
                      color: Colors.green.withOpacity(0.4),
                      offset: Offset(2, 2),
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
              child: Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.green[600],
                  letterSpacing: 1.1,
                ),
              ),
            ),
            ...List.generate(
              tasks.length,
              (i) => Card(
                elevation: 3,
                margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                            value: checked[i],
                            activeColor: Colors.green[700],
                            onChanged: (bool? value) {
                              setState(() {
                                checked[i] = value ?? false;
                                if (checked[i]) {
                                  score += tasks[i]["points"] as int;
                                } else {
                                  score -= tasks[i]["points"] as int;
                                }
                              });
                            },
                          ),
                          SizedBox(width: 12),
                          Expanded(
                            child: Text(
                              "${tasks[i]["title"]!}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: Colors.green[800],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      Text(
                        "${tasks[i]["description"]}",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Chip(
                            label: Text(
                              tasks[i]["type"].toString().toUpperCase(),
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            backgroundColor: Colors.green[600],
                          ),
                          Text(
                            "Points: ☘️${tasks[i]["points"]}",
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.green[700],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}