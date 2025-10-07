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
    checked = List<bool>.filled(tasks.length, false);  // Initialize all unchecked
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                "Tasks: ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.black87),
              ),
            ),
            Row(
              children: [
                Text(
                  "Dashboard",
                  style: TextStyle(color: Colors.yellowAccent[300]),
                ),
              ],
            ),
            ...List.generate(
              tasks.length,
              (i) => Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(5),
                color: Colors.white54,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                         Checkbox(
                      value: checked[i],
                      onChanged: (bool? value) {
                        setState(() {
                          checked[i] = value ?? false;
                        });
                      },
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        "${tasks[i]["title"]!}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text("Points: ☘️${tasks[i]["points"]}", style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.green[600]
                    ),),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}