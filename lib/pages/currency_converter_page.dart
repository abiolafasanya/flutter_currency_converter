import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() => _CurrencyConveterPage();
}

class _CurrencyConveterPage extends State<CurrencyConverterPage> {
  final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convertCurrency() {
    result = double.parse(textEditingController.text) * 780;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
            width: 2.0,
            style: BorderStyle.solid,
            color: Color.fromRGBO(23, 85, 255, 1)),
        borderRadius: BorderRadius.circular(5));
    return Scaffold(
      appBar: AppBar(
          title: const Text("Currency Page"),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(23, 85, 255, 1)),
      body: Container(
        padding: const EdgeInsets.all(0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'USD ${result.toString()}',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(8.0),
              child: TextField(
                  style: const TextStyle(color: Colors.black),
                  controller: textEditingController,
                  decoration: InputDecoration(
                    border: border,
                    hintText: "Enter AmounT iN NGN",
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    focusedBorder: border,
                    enabledBorder: border,
                  ),
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true)),
            ),
            ElevatedButton(
              onPressed: convertCurrency,
              style: const ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Color.fromRGBO(23, 85, 255, 1)),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  fixedSize: MaterialStatePropertyAll(Size(360, 60)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(5))))),
              child: const Text(
                "Submit",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
