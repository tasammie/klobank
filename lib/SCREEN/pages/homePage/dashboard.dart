import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';
import 'package:klobank/SCREEN/pages/bills_screens/bills_home_page.dart';
import 'package:klobank/SCREEN/pages/homePage/balance.dart';
import 'package:klobank/SCREEN/pages/homePage/dashboard_components.dart';
import 'package:klobank/SCREEN/pages/homePage/recent_transaction.dart';
import 'package:klobank/SCREEN/pages/homePage/utility.dart';
import 'package:klobank/SCREEN/pages/loan_screens/loan_page.dart';
import 'package:klobank/SCREEN/pages/more_screens/more_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const LoanHomePage(),
    const BillsHomePage(),
    const MoreHomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background_color,
      body: SafeArea(
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: AppColors.buttonAndLogoColor,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          unselectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_balance_wallet,
                size: 30,
              ),
              label: 'Loan',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notes,
                size: 30,
              ),
              label: 'Bills',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
                size: 30,
              ),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            WelcomeUser(),
            SizedBox(height: 20),
            BalanceCarousel(),
            SizedBox(height: 20),
            UtilitySection(),
            SizedBox(height: 20),
            RecentTransaction(),
          ],
        ),
      ),
    );
  }
}
