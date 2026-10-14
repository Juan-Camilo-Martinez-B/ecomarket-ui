import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StripePaymentButton extends StatelessWidget {
  final int amount;
  const StripePaymentButton({Key? key, required this.amount}) : super(key: key);

  Future<void> processPayment() async {
    final response = await http.post(
      Uri.parse('https://api.ecomarket.com/api/v1/payments/create-intent'),
      body: jsonEncode({'amount': amount, 'currency': 'usd'}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      print("Intent Creado con Éxito: ${response.body}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: processPayment,
      child: Text("Pagar \$${amount / 100}"),
    );
  }
}
