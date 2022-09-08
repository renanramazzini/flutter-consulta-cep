import 'package:flutter/material.dart';

import '../../home/models/cep_model.dart';
import '../../../shared/core/font_style.dart';

class ResultPage extends StatefulWidget {
  final CEPModel result;

  const ResultPage({
    super.key,
    required this.result,
  });

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Table(
              border: TableBorder.all(),
              columnWidths: const <int, TableColumnWidth>{
                0: FlexColumnWidth(0.5),
              },
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: <TableRow>[
                TableRow(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                      ),
                      child: Text(' CEP: ', style: FontStyle.field.getText),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green.shade300),
                        child: Text(' ${widget.result.cep}',
                            style: FontStyle.field.getText),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                      ),
                      child:
                          Text(' Logradouro: ', style: FontStyle.field.getText),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green.shade300),
                        child: Text(' ${widget.result.logradouro}',
                            style: FontStyle.field.getText),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                      ),
                      child: Text(' Complemento: ',
                          style: FontStyle.field.getText),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green.shade300),
                        child: Text(' ${widget.result.complemento}',
                            style: FontStyle.field.getText),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                      ),
                      child: Text(' Bairro: ', style: FontStyle.field.getText),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green.shade300),
                        child: Text(' ${widget.result.bairro}',
                            style: FontStyle.field.getText),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                      ),
                      child:
                          Text(' Localidade: ', style: FontStyle.field.getText),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green.shade300),
                        child: Text(' ${widget.result.localidade}',
                            style: FontStyle.field.getText),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                      ),
                      child: Text(' UF: ', style: FontStyle.field.getText),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green.shade300),
                        child: Text(' ${widget.result.uf}',
                            style: FontStyle.field.getText),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                      ),
                      child: Text(' IBGE: ', style: FontStyle.field.getText),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green.shade300),
                        child: Text(' ${widget.result.ibge}',
                            style: FontStyle.field.getText),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                      ),
                      child: Text(' Gia: ', style: FontStyle.field.getText),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green.shade300),
                        child: Text(' ${widget.result.gia}',
                            style: FontStyle.field.getText),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                      ),
                      child: Text(' DDD: ', style: FontStyle.field.getText),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green.shade300),
                        child: Text(' ${widget.result.ddd}',
                            style: FontStyle.field.getText),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                      ),
                      child: Text(' Siafi: ', style: FontStyle.field.getText),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.top,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.green.shade300),
                        child: Text(' ${widget.result.siafi}',
                            style: FontStyle.field.getText),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
