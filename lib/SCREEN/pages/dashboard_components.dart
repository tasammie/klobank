import 'package:flutter/material.dart';
import 'package:klobank/SCREEN/colors/app_colors.dart';
import 'package:flutter/services.dart';

class WelcomeUser extends StatelessWidget {
  const WelcomeUser({super.key});

  @override
  Widget build(BuildContext context) {
    final String userName = "John Doe";
    return Row(
      children: [
        // CircleAvatar(
        //   radius: 30,
        //   backgroundColor: Colors.grey.shade300,
        //   child: Text(
        //     userName[0],
        //     style: const TextStyle(
        //       fontSize: 24,
        //       fontWeight: FontWeight.bold,
        //       color: Colors.black,
        //     ),
        //   ),
        // ),
        const SizedBox(width: 15),
        Expanded(
          child: Text(
            'Hi, $userName',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Add Money',
                style: TextStyle(
                  fontSize: 20,
                  color: AppColors.buttonAndLogoColor,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.add,
                size: 30,
                color: AppColors.buttonAndLogoColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}





// class BalanceScreen extends StatefulWidget {
//   const BalanceScreen({super.key});

//   @override
//   State<BalanceScreen> createState() => _BalanceScreenState();
// }

// class _BalanceScreenState extends State<BalanceScreen> {
//   final String userName = "John Doe";
//   final String bankName = "Wema Bank";
//   final String accountNumber = "0110321290";
//   String amount = "2,444,444";
//   bool isAmountVisible = true; // State to toggle visibility of balance

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: AppColors.buttonAndLogoColor,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             'Account Balance',
//             style: TextStyle(
//               fontSize: 18,
//               fontWeight: FontWeight.w400,
//               color: Colors.grey[300],
//             ),
//           ),
//           const SizedBox(height: 10),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 isAmountVisible ? '# $amount' : '*****',
//                 style: const TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.background_color,
//                 ),
//               ),
//               const SizedBox(width: 10),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     isAmountVisible = !isAmountVisible; // Toggle visibility
//                   });
//                 },
//                 child: Icon(
//                   isAmountVisible ? Icons.visibility : Icons.visibility_off,
//                   color: AppColors.background_color,
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 15),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "$bankName  $accountNumber",
//                 style: const TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w600,
//                   color: AppColors.background_color,
//                 ),
//               ),
//               const SizedBox(width: 10),
//               GestureDetector(
//                 onTap: () {
//                   Clipboard.setData(
//                     ClipboardData(text: "$bankName  $accountNumber"),
//                   );
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(
//                       content: Text('Copied to clipboard'),
//                     ),
//                   );
//                 },
//                 child: const Icon(
//                   Icons.copy,
//                   color: AppColors.background_color,
//                   size: 20,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
