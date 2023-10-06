import 'package:flutter/material.dart';


class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('FAQ'),
          centerTitle: true,
          backgroundColor:  Color(0xff213A82),
        ),
        body: FaqPage(),
      ),
    );
  }
}

class FaqPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FaqItem(
          question: 'What payment methods can I use?',
          answer: 'You can use various payment methods, including credit cards, PayPal, and more.',
        ),
        FaqItem(
          question: 'How do I report issues during or after the journey?',
          answer: 'To report issues, you can contact our customer support team through the app or website.',
        ),
        FaqItem(
          question: 'How do I book an online driver service?',
          answer: 'Booking a driver service is easy! Just open the app, select your destination, and confirm your booking.',
        ),
        FaqItem(
          question: 'What should I do if I want to cancel my booking?',
          answer: 'You can cancel your booking through the app by going to the "My Bookings" section and selecting the booking you want to cancel.',
        ),
         FaqItem(
          question: 'Are there additional charges during heavy traffic or peak hours?',
          answer: 'Yes, we apply dynamic pricing during heavy traffic or peak hours. This means your ride fare may change based on high demand. However, you will be notified of any additional charges before confirming your order.',
        ),
         FaqItem(
          question: 'How do I report issues during or after the ride?',
          answer: 'If you encounter any issues during or after the ride, you can use the issue reporting feature in the app or contact our customer support team through the app or our website. We will be happy to assist you in resolving your concerns.',
        ),
         FaqItem(
          question: 'Can I book a ride for someone else?',
          answer: 'Yes, you can book a ride for someone else through our app. When booking, you can enter the actual passengers name and phone number. Be sure to inform the driver about this when the ride begins.',
        ),
         FaqItem(
          question: 'Is there an age limit for using this service?',
          answer: 'Yes, to use our service, you must be at least 18 years old or meet the minimum age requirements applicable in your region.',
        ),
         FaqItem(
          question: 'How can I track my ride?',
          answer: 'You can track your ride in real-time through our app. After booking, you will see the driver location and an estimated time of arrival.',
        ),
         FaqItem(
          question: 'What should I do if I want to cancel my booking?',
          answer: 'You can cancel your booking through the app by going to the "My Bookings" section and selecting the booking you want to cancel.',
        ),
        
      ],
    );
  }
}

class FaqItem extends StatelessWidget {
  final String question;
  final String answer;

  const FaqItem(
    {
    required this.question,
    required this.answer,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 241, 242, 244), // Set the background color to blue
      child: ExpansionTile(
        title: Text(
          question,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 19, 19, 19), // Set text color to white
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              answer,
              style: TextStyle(fontSize: 14, color: Colors.black), // Set text color to white
            ),
          ),
        ],
      )
    );
  }
}