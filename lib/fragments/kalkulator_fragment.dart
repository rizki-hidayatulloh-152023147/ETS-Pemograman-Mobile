import 'package:flutter/material.dart';
import 'dart:math';

class KalkulatorFragment extends StatefulWidget {
  const KalkulatorFragment({super.key});

  @override
  State<KalkulatorFragment> createState() => _KalkulatorFragmentState();
}

class _KalkulatorFragmentState extends State<KalkulatorFragment> {
  String _output = '0';
  String _currentNumber = '';
  double _num1 = 0;
  double _num2 = 0;
  String _operand = '';

  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == 'C') {
        _output = '0';
        _currentNumber = '';
        _num1 = 0;
        _num2 = 0;
        _operand = '';
      } else if (buttonText == '+' || buttonText == '-' || buttonText == '×' || buttonText == '÷') {
        _num1 = double.parse(_output);
        _operand = buttonText;
        _currentNumber = '';
      } else if (buttonText == '=') {
        _num2 = double.parse(_output);
        if (_operand == '+') {
          _output = (_num1 + _num2).toString();
        } else if (_operand == '-') {
          _output = (_num1 - _num2).toString();
        } else if (_operand == '×') {
          _output = (_num1 * _num2).toString();
        } else if (_operand == '÷') {
          _output = (_num1 / _num2).toString();
        }
        _currentNumber = _output;
        _operand = '';
      } else if (buttonText == 'x²') {
        double num = double.parse(_output);
        _output = (num * num).toString();
        _currentNumber = _output;
      } else if (buttonText == '√') {
        double num = double.parse(_output);
        _output = sqrt(num).toString();
        _currentNumber = _output;
      } else if (buttonText == '.') {
        if (!_output.contains('.')) {
          _output += buttonText;
          _currentNumber += buttonText;
        }
      } else {
        if (_output == '0' || _operand == '=' || _currentNumber == '') {
          _output = buttonText;
          _currentNumber = buttonText;
        } else {
          _output += buttonText;
          _currentNumber += buttonText;
        }
      }

      // Format output untuk menghilangkan .0 pada hasil integer
      if (_output.endsWith('.0')) {
        _output = _output.substring(0, _output.length - 2);
      }
    });
  }

  Widget _buildButton(String buttonText, {Color? color, Color? textColor}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: () => _buttonPressed(buttonText),
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Colors.white,
            padding: const EdgeInsets.all(24),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 2,
          ),
          child: Text(
            buttonText,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: textColor ?? Colors.black87,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade100,
      child: Column(
        children: [
          // Display
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(24),
              alignment: Alignment.bottomRight,
              child: Text(
                _output,
                style: const TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          // Buttons
          Column(
            children: [
              Row(
                children: [
                  _buildButton('C', color: Colors.red.shade400, textColor: Colors.white),
                  _buildButton('x²', color: Colors.blue.shade100),
                  _buildButton('√', color: Colors.blue.shade100),
                  _buildButton('÷', color: Colors.orange.shade400, textColor: Colors.white),
                ],
              ),
              Row(
                children: [
                  _buildButton('7'),
                  _buildButton('8'),
                  _buildButton('9'),
                  _buildButton('×', color: Colors.orange.shade400, textColor: Colors.white),
                ],
              ),
              Row(
                children: [
                  _buildButton('4'),
                  _buildButton('5'),
                  _buildButton('6'),
                  _buildButton('-', color: Colors.orange.shade400, textColor: Colors.white),
                ],
              ),
              Row(
                children: [
                  _buildButton('1'),
                  _buildButton('2'),
                  _buildButton('3'),
                  _buildButton('+', color: Colors.orange.shade400, textColor: Colors.white),
                ],
              ),
              Row(
                children: [
                  _buildButton('0'),
                  _buildButton('.'),
                  _buildButton('=', color: Colors.green.shade400, textColor: Colors.white),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}