import 'package:consulta_cep/modules/home/models/cep_model.dart';
import 'package:consulta_cep/shared/widgets/consult_button_widget.dart';
import 'package:consulta_cep/shared/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/widgets/change_theme_switch_widget.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _cepController = TextEditingController();
  final controller = Modular.get<HomeController>();
  CEPModel? cepModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consulta CEP'),
        actions: const [
          ChangeThemeSwitchWidget(),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Digite o cep desejado:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              TextFieldWidget(
                keyboardType: TextInputType.number,
                controller: _cepController,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ConsultButtonWidget(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final data = await controller.getCEP(_cepController.text);
                    setState(() {
                      cepModel = data;
                    });

                    Modular.to
                        .pushNamed('/result/', arguments: {'result': cepModel});
                  }
                },
                text: 'Consultar',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
