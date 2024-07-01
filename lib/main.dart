import 'package:crowd_app_2/pages/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const CrowdFundApp2());
}

class CrowdFundApp2 extends StatelessWidget {
  const CrowdFundApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(
          // onTap: () {
          //   // Добавьте логику для перехода на страницу регистрации
          // },
          ),
    );
  }
}




























// import 'package:crowd_app_2/pages/auth_page.dart';
// import 'package:crowd_app_2/pages/login_page.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );

//   runApp(const CrowdFundApp());
// }

// class CrowdFundApp extends StatelessWidget {
//   const CrowdFundApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       // title: 'CrowdFundingRU',
//       // theme: ThemeData(
//       //   primarySwatch: Colors.green,
//       //   visualDensity: VisualDensity.adaptivePlatformDensity,
//       // ),
//       debugShowCheckedModeBanner: false,
//       home: AuthPage(),
//     );
//   }
// }


















// import 'package:flutter/material.dart';

// void main() {
//   runApp(const Crowd());
// }

// class Crowd extends StatelessWidget {
//   const Crowd({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'CrowdPlatform App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Home(),
//     );
//   }
// }

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('CrowdJustice'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               'Добро пожаловать в CrowdJustice',
//               style: TextStyle(fontSize: 24),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => const CampaignListPage()),
//                 );
//               },
//               child: const Text('Посмотреть кампании'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CampaignListPage extends StatelessWidget {
//   const CampaignListPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Список кампаний'),
//       ),
//       body: ListView.builder(
//         itemCount: 5, // Замените на реальное количество кампаний
//         itemBuilder: (context, index) {
//           return CampaignCard(
//             campaignTitle: 'Кампания $index',
//             campaignDescription: 'Описание кампании $index',
//           );
//         },
//       ),
//     );
//   }
// }

// class CampaignCard extends StatelessWidget {
//   final String campaignTitle;
//   final String campaignDescription;

//   const CampaignCard(
//       {super.key,
//       required this.campaignTitle,
//       required this.campaignDescription});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(10),
//       child: ListTile(
//         title: Text(campaignTitle),
//         subtitle: Text(campaignDescription),
//         onTap: () {
//           // Добавьте навигацию на страницу кампании по нажатию
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => const CampaignDetailsPage()),
//           );
//         },
//       ),
//     );
//   }
// }

// class CampaignDetailsPage extends StatelessWidget {
//   const CampaignDetailsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Детали кампании'),
//       ),
//       body: const Center(
//         child: Text('Здесь будут детали кампании'),
//       ),
//     );
//   }
// }
