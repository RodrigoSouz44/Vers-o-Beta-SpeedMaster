import 'package:flutter/material.dart';

class MotorPage extends StatefulWidget {
  const MotorPage({super.key});

  @override
  State<MotorPage> createState() => _MotorPageState();
}

class _MotorPageState extends State<MotorPage> {
  bool _motorLigado = false;
  double _velocidade = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text('Controle do Motor', style: TextStyle(fontSize: 20)),
          SwitchListTile(
            title: Text(_motorLigado ? 'Motor Ligado' : 'Motor Desligado'),
            value: _motorLigado,
            onChanged: (val) => setState(() => _motorLigado = val),
          ),
          Slider(
            value: _motorLigado ? _velocidade : 0,
            onChanged: _motorLigado ? (val) => setState(() => _velocidade = val) : null,
            min: 0,
            max: 255,
            divisions: 255,
            label: '${_velocidade.toInt()}',
          ),
          const SizedBox(height: 10),
          Text('Velocidade: ${_velocidade.toInt()}'),
        ],
      ),
    );
  }
}
