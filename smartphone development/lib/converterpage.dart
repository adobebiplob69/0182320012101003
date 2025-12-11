// main.dart
// Simple, single-file Flutter app: Converter Page
// Features:
// - Select category (Temperature, Length, Weight, Currency)
// - Select from/to units
// - Input value and get converted output
// - Swap units, clear input

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Converter Page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ConverterPage(),
    );
  }
}

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ConverterPageState createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  final TextEditingController _inputController = TextEditingController();

  String _category = 'Temperature';
  String _fromUnit = 'Celsius';
  String _toUnit = 'Fahrenheit';
  String _result = '';

  final Map<String, List<String>> units = {
    'Temperature': ['Celsius', 'Fahrenheit', 'Kelvin'],
    'Length': ['Meter', 'Kilometer', 'Centimeter', 'Foot', 'Mile'],
    'Weight': ['Kilogram', 'Gram', 'Pound', 'Ounce'],
    // Currency rates are illustrative and static — replace with live rates for production
    'Currency': ['USD', 'EUR', 'BDT', 'GBP'],
  };

  final Map<String, double> currencyRatesToUSD = {
    // base: USD
    'USD': 1.0,
    'EUR': 1.08, // 1 EUR = 1.08 USD (placeholder)
    'BDT': 0.0094, // 1 BDT = 0.0094 USD (placeholder)
    'GBP': 1.27, // 1 GBP = 1.27 USD (placeholder)
  };

  @override
  void initState() {
    super.initState();
    _inputController.addListener(_onInputChanged);
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

  void _onInputChanged() {
    _convert();
  }

  void _onCategoryChanged(String? newCat) {
    if (newCat == null) return;
    setState(() {
      _category = newCat;
      _fromUnit = units[_category]!.first;
      _toUnit = units[_category]!.length > 1
          ? units[_category]![1]
          : units[_category]![0];
      _result = '';
      _inputController.clear();
    });
  }

  void _convert() {
    final inputText = _inputController.text.trim();
    if (inputText.isEmpty) {
      setState(() => _result = '');
      return;
    }

    double? value = double.tryParse(inputText);
    if (value == null) {
      setState(() => _result = 'Invalid number');
      return;
    }

    double converted;
    try {
      switch (_category) {
        case 'Temperature':
          converted = _convertTemperature(value, _fromUnit, _toUnit);
          break;
        case 'Length':
          converted = _convertLength(value, _fromUnit, _toUnit);
          break;
        case 'Weight':
          converted = _convertWeight(value, _fromUnit, _toUnit);
          break;
        case 'Currency':
          converted = _convertCurrency(value, _fromUnit, _toUnit);
          break;
        default:
          converted = value;
      }
      setState(() => _result = converted.toStringAsFixed(4));
    } catch (e) {
      setState(() => _result = 'Error: ${e.toString()}');
    }
  }

  double _convertTemperature(double v, String from, String to) {
    double c; // convert to Celsius first
    if (from == 'Celsius') {
      c = v;
    } else if (from == 'Fahrenheit')
      // ignore: curly_braces_in_flow_control_structures
      c = (v - 32) * 5 / 9;
    else if (from == 'Kelvin')
      // ignore: curly_braces_in_flow_control_structures
      c = v - 273.15;
    else
      // ignore: curly_braces_in_flow_control_structures
      throw Exception('Unknown unit');

    if (to == 'Celsius') return c;
    if (to == 'Fahrenheit') return c * 9 / 5 + 32;
    if (to == 'Kelvin') return c + 273.15;
    throw Exception('Unknown unit');
  }

  double _convertLength(double v, String from, String to) {
    // convert everything to meters then to target
    double toMeters(String unit, double val) {
      switch (unit) {
        case 'Meter':
          return val;
        case 'Kilometer':
          return val * 1000;
        case 'Centimeter':
          return val / 100;
        case 'Foot':
          return val * 0.3048;
        case 'Mile':
          return val * 1609.344;
        default:
          throw Exception('Unknown unit');
      }
    }

    double fromMeters(double meters, String unit) {
      switch (unit) {
        case 'Meter':
          return meters;
        case 'Kilometer':
          return meters / 1000;
        case 'Centimeter':
          return meters * 100;
        case 'Foot':
          return meters / 0.3048;
        case 'Mile':
          return meters / 1609.344;
        default:
          throw Exception('Unknown unit');
      }
    }

    final meters = toMeters(from, v);
    return fromMeters(meters, to);
  }

  double _convertWeight(double v, String from, String to) {
    // convert everything to kilograms then to target
    double toKg(String unit, double val) {
      switch (unit) {
        case 'Kilogram':
          return val;
        case 'Gram':
          return val / 1000;
        case 'Pound':
          return val * 0.45359237;
        case 'Ounce':
          return val * 0.0283495231;
        default:
          throw Exception('Unknown unit');
      }
    }

    double fromKg(double kg, String unit) {
      switch (unit) {
        case 'Kilogram':
          return kg;
        case 'Gram':
          return kg * 1000;
        case 'Pound':
          return kg / 0.45359237;
        case 'Ounce':
          return kg / 0.0283495231;
        default:
          throw Exception('Unknown unit');
      }
    }

    final kg = toKg(from, v);
    return fromKg(kg, to);
  }

  double _convertCurrency(double v, String from, String to) {
    // using USD as pivot
    if (!currencyRatesToUSD.containsKey(from) ||
        !currencyRatesToUSD.containsKey(to)) {
      throw Exception('Unknown currency');
    }
    final usd = v * (currencyRatesToUSD[from]!);
    return usd / (currencyRatesToUSD[to]!);
  }

  void _swapUnits() {
    setState(() {
      final tmp = _fromUnit;
      _fromUnit = _toUnit;
      _toUnit = tmp;
      _convert();
    });
  }

  void _clear() {
    setState(() {
      _inputController.clear();
      _result = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    final unitList = units[_category]!;

    return Scaffold(
      appBar: AppBar(title: Text('Converter'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Category selector
            DropdownButtonFormField<String>(
              initialValue: _category,
              items: units.keys
                  .map((k) => DropdownMenuItem(value: k, child: Text(k)))
                  .toList(),
              onChanged: _onCategoryChanged,
              decoration: InputDecoration(labelText: 'Category'),
            ),
            SizedBox(height: 16),

            // From & To selectors
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    initialValue: _fromUnit,
                    items: unitList
                        .map((u) => DropdownMenuItem(value: u, child: Text(u)))
                        .toList(),
                    onChanged: (v) => setState(() {
                      _fromUnit = v!;
                      _convert();
                    }),
                    decoration: InputDecoration(labelText: 'From'),
                  ),
                ),
                IconButton(icon: Icon(Icons.swap_horiz), onPressed: _swapUnits),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    initialValue: _toUnit,
                    items: unitList
                        .map((u) => DropdownMenuItem(value: u, child: Text(u)))
                        .toList(),
                    onChanged: (v) => setState(() {
                      _toUnit = v!;
                      _convert();
                    }),
                    decoration: InputDecoration(labelText: 'To'),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16),

            // Input
            TextField(
              controller: _inputController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'Input',
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: _clear,
                ),
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 24),

            // Result
            Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Result',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      _result.isEmpty ? '—' : '$_result $_toUnit',
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 16),

            ElevatedButton.icon(
              onPressed: _convert,
              icon: Icon(Icons.calculate),
              label: Text('Convert'),
            ),

            SizedBox(height: 8),

            Text(
              'Note: Currency rates are static placeholders. For live currency conversion integrate an API and update currencyRatesToUSD.',
              style: TextStyle(fontSize: 12, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}
