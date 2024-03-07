import 'package:flutter/material.dart';

void main() {
  runApp(RedVelvetApp());
}

class RedVelvetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Red Velvet Fanpage',
      home: RedVelvetHomePage(),
      routes: {
        '/discography': (context) => DiscographyPage(),
        '/members': (context) => MemberPage(),
      },
    );
  }
}

class RedVelvetHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Red Velvet Fanpage'),
        backgroundColor: Color.fromARGB(255, 232, 108, 147),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Red Velvet',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Fanpage by Restiana Anggraeni (NIM 123210059)',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                image: DecorationImage(
                  image: AssetImage('assets/red_velvet_photo1.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Red Velvet is a popular South Korean girl group formed by SM Entertainment.',
              textAlign: TextAlign.center,
            ),
            Text(
              'They are known for their unique music style and versatile concepts.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/discography');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 232, 108, 147),
                foregroundColor: Colors.white, 
              ),
              child: Text('Discography'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/members');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 232, 108, 147),
                foregroundColor: Colors.white,
              ),
              child: Text('Members'),
            ),
          ],
        ),
      ),
    );
  }
}

class AlbumDetails {
  final int aindex;
  final String aname;
  final String acontent;
  final String aphotoUrl;

  AlbumDetails(
      {required this.aindex,
      required this.aname,
      required this.acontent,
      required this.aphotoUrl});
}

List<AlbumDetails> redVelvetAlbums = [
  AlbumDetails(
      aindex: 1,
      aname: 'HAPPINESS',
      acontent: 'Album: Happiness (2014)',
      aphotoUrl: 'assets/HAPPINESS.png'),
  AlbumDetails(
      aindex: 2,
      aname: 'ICE CREAM CAKE',
      acontent: 'Album: Ice Cream Cake (2015)',
      aphotoUrl: 'assets/ICECREAMCAKE.jpg'),
  AlbumDetails(
      aindex: 3,
      aname: 'DUMB DUMB',
      acontent: 'Album: The Red (2015)',
      aphotoUrl: 'assets/DUMBDUMB.jpeg'),
  AlbumDetails(
      aindex: 4,
      aname: 'RED FLAVOR',
      acontent: 'Album: The Red Summer (2017)',
      aphotoUrl: 'assets/REDFLAVOR.png'),
  AlbumDetails(
      aindex: 5,
      aname: 'PEEK-A-BOO',
      acontent: 'Album: Perfect Velvet (2017)',
      aphotoUrl: 'assets/PEEKABOO.jpg'),
  AlbumDetails(
      aindex: 6,
      aname: 'BAD BOY',
      acontent: 'Album: The Perfect Red Velvet (2018)',
      aphotoUrl: 'assets/BADBOY.jpg'),
  AlbumDetails(
      aindex: 7,
      aname: 'PSYCHO',
      acontent: 'Album: The ReVe Fesival: Finale (2019)',
      aphotoUrl: 'assets/PSYCHO.png'),
  AlbumDetails(
      aindex: 8,
      aname: 'FEEL MY RHYTHM',
      acontent: 'Album: The ReVe Fesival 2022 (2022)',
      aphotoUrl: 'assets/FMR.png'),
  AlbumDetails(
      aindex: 9,
      aname: 'CHILL KILL',
      acontent: 'Album: Chill Kill (2023)',
      aphotoUrl: 'assets/CHILLKILL.png'),
];

class DiscographyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buildAlbumItem(int index) {
      final album = redVelvetAlbums[index];
      return Column(
        children: [
          Container(
            width: 300,
            height: 300,
            child: Image.asset(
              album.aphotoUrl,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 10),
          Text(album.aname),
          SizedBox(height: 10),
          Text(album.acontent),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Red Velvet Discography'),
        backgroundColor: Color.fromARGB(255, 232, 108, 147),
      ),
      body: ListView.builder(
        itemCount: redVelvetAlbums.length,
        itemBuilder: (context, index) {
          return buildAlbumItem(index);
        },
      ),
    );
  }
}

class MemberProfile {
  final String name;
  final String content;
  final String photoUrl;

  MemberProfile(
      {required this.name, required this.content, required this.photoUrl});
}

List<MemberProfile> redVelvetMembers = [
  MemberProfile(
      name: 'IRENE',
      content:
          'Also known as Bae Joo-Hyun, born on March 29, 1991, holds the positions of leader, rapper, and center. ',
      photoUrl: 'assets/irene1.jpeg'),
  MemberProfile(
      name: 'SEULGI',
      content:
          'Also known as Kang Seul-gi, born on February 10, 1994, contributes as a vocalist and main dancer. ',
      photoUrl: 'assets/seulgi1.jpeg'),
  MemberProfile(
      name: 'WENDY',
      content:
          'Also known as Son Seung-wan, born on February 21, 1994, showcases her talents as the main vocalist.',
      photoUrl: 'assets/wendy1.jpeg'),
  MemberProfile(
      name: 'JOY',
      content:
          'Also known as Park Soo-young, born on September 3, 1996, shines as a vocalist and rapper.',
      photoUrl: 'assets/joy1.jpeg'),
  MemberProfile(
      name: 'YERI',
      content:
          'Also known as Kim Ye-rim, born on March 5, 1999, adds her vocal skills as the main rapper.',
      photoUrl: 'assets/yeri1.jpeg'),
];

class MemberPage extends StatefulWidget {
  @override
  _MemberPageState createState() => _MemberPageState();
}

class _MemberPageState extends State<MemberPage> {
  String selectedMember = '';

  MemberProfile? selectedProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Members Profile'),
        backgroundColor: Color.fromARGB(255, 232, 108, 147),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  selectedMember = value.toUpperCase();
                });
              },
              decoration: InputDecoration(
                labelText:
                    'Enter Member Name ("Irene", "Seulgi", "Wendy", "Joy", or "Yeri")',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                switch (selectedMember) {
                  case 'IRENE':
                    selectedProfile = redVelvetMembers
                        .firstWhere((profile) => profile.name == 'IRENE');
                    break;
                  case 'SEULGI':
                    selectedProfile = redVelvetMembers
                        .firstWhere((profile) => profile.name == 'SEULGI');
                    break;
                  case 'WENDY':
                    selectedProfile = redVelvetMembers
                        .firstWhere((profile) => profile.name == 'WENDY');
                    break;
                  case 'JOY':
                    selectedProfile = redVelvetMembers
                        .firstWhere((profile) => profile.name == 'JOY');
                    break;
                  case 'YERI':
                    selectedProfile = redVelvetMembers
                        .firstWhere((profile) => profile.name == 'YERI');
                    break;
                  default:
                    selectedProfile = null;
                    break;
                }
                setState(() {});
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 232, 108, 147),
                foregroundColor: Colors.white,
              ),
              child: Text('Submit'),
            ),
            SizedBox(height: 20),
            if (selectedProfile != null)
              Column(
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    child: Image.asset(
                      selectedProfile!.photoUrl,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(selectedProfile!.name),
                  SizedBox(height: 10),
                  Text(selectedProfile!.content),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
