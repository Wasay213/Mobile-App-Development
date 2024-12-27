import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const PortfolioPage(),
      routes: {
        '/resume': (context) => ResumePage(),
        '/interest': (context) => InterestPage(),
        '/projects': (context) => ProjectsPage(), // New route added
      },
    );
  }
}

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 35.0, left: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Text(
                'My Portfolio',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text(
                    'Abdul Wasay',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.only(top: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'I Am Mobile App Developer And Designer',
                      style: TextStyle(fontSize: 23),
                    ),
                    SizedBox(height: 55),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.facebook),
                        Icon(Icons.desktop_windows_rounded),
                        Icon(Icons.telegram),
                        Icon(Icons.message),
                      ],
                    ),
                    SizedBox(height: 20),
                    Image(
                      image: AssetImage('image/wasay2.jpg'),
                      width: 650,
                      height: 550,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 35.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Abdul Wasay",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '"A mobile app developer dedicated to solving complex challenges with innovative design and efficient code, delivering apps that empower users and drive businesses forward."',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(height: 35),
                    Divider(thickness: 3),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text('Profession', style: TextStyle(fontSize: 20)),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text('Web Developer', style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                    SizedBox(height: 35),
                    Divider(thickness: 3),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text('Date Of Birth', style: TextStyle(fontSize: 20)),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text('19-06-2004', style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                    SizedBox(height: 35),
                    Divider(thickness: 3),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Text('Education', style: TextStyle(fontSize: 20)),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text('Higher Education', style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/resume');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Text(
                      'CHECK RESUME',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // New Projects Button
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/projects');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Text(
                      'CHECK PROJECTS',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Interest Button
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/interest');
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    child: const Text(
                      'CHECK INTERESTS',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class ResumePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resume Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Education',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                thickness: 2,
                color: Colors.black,
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Graduation',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Bachelor of Science in Information Engineering Technology, BSIET (Current).',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'The University Of Lahore',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Intermediate',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Fsc. Pre-engineering. (2020-2022)',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          'Scholars College',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const SkillsPage(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

class InterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Interests'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 20),
            ListTile(
              title: Text('Mobile App Development', style: TextStyle(fontSize: 20),),
              subtitle: Text('Creating innovative mobile solutions'),
            ),
            ListTile(
              title: Text('UI/UX Design', style: TextStyle(fontSize: 20),),
              subtitle: Text('Designing user-friendly interfaces'),
            ),
            ListTile(
              title: Text('Web Development', style: TextStyle(fontSize: 20),),
              subtitle: Text('Designing different webistes'),
            ),
            ListTile(
              title: Text('Machine Learning', style: TextStyle(fontSize: 20),),
              subtitle: Text('Studying Machine Learning Algorithms'),
            ),
          ],
        ),
      ),
    );
  }
}

// New ProjectsPage Widget
class ProjectsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            ProjectCard(
              title: 'Portfolio App',
              description: 'A personal portfolio app built with Flutter',
              technologies: 'Flutter, Dart',
            ),
            SizedBox(height: 16),
            ProjectCard(
              title: 'E-Commerce Website',
              description: 'An online shopping application with cart functionality',
              technologies: 'Flutter, Firebase',
            ),
            SizedBox(height: 16),
            ProjectCard(
              title: 'Blockchain Website',
              description: 'A website based on blockchain',
              technologies: 'React,  API',
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String technologies;

  const ProjectCard({
    required this.title,
    required this.description,
    required this.technologies,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              'Technologies: $technologies',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  _SkillsPageState createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  int flutterPercentage = 90;
  int dartPercentage = 85;
  int uiuxPercentage = 80;

  void updatePercentage(String skill) {
    setState(() {
      if (skill == 'Flutter') {
        flutterPercentage = (flutterPercentage + 5) % 101;
      } else if (skill == 'Dart') {
        dartPercentage = (dartPercentage + 5) % 101;
      } else if (skill == 'UI/UX Design') {
        uiuxPercentage = (uiuxPercentage + 5) % 101;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills:',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => updatePercentage('Flutter'),
            child: SkillWidget(skillName: 'Flutter', percentage: flutterPercentage),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => updatePercentage('Dart'),
            child: SkillWidget(skillName: 'Dart', percentage: dartPercentage),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () => updatePercentage('UI/UX Design'),
            child: SkillWidget(skillName: 'UI/UX Design', percentage: uiuxPercentage),
          ),
        ],
      ),
    );
  }
}

class SkillWidget extends StatelessWidget {
  final String skillName;
  final int percentage;

  const SkillWidget({required this.skillName, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skillName,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: percentage / 100,
                backgroundColor: Colors.grey[300],
                color: Colors.blue,
                minHeight: 8,
              ),
            ),
            const SizedBox(width: 10),
            Text(
              '$percentage%',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}