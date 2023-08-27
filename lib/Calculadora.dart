import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora 2.0"),
      ),

      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
          // Texto que mostra o Resultado do cálculo
            Text(
              "Resultado: $resultado",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.deepPurple)
              ),
          
          // Espaçamento depois do mostra Resultado
              Padding(padding: const EdgeInsets.only(top: 20)),

          // Campo de Texto (input do valor 1)
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Informe o 1º valor"),
              controller: campoValor1,
            ),

          // Campo de Texto (input do valor 2)
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Informe o 2º valor"),
              controller: campoValor2,
            ),

          // Espaçamento depois dos inputs
            Padding(padding: const EdgeInsets.only(top: 60)),

          // Nova linha (row)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
          // Botão Somar
                MaterialButton(
      
          //child: Botão Somar("+"),

                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  ),

                  color: Colors.blueAccent,
                  onPressed: somar,
                ),

                MaterialButton(

          //child: Botão Subtrair("-"),

                  child: Text(
                  "-",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                  ),

                  color: Colors.red,
                  onPressed: subtrair,               
                  ),
                
                MaterialButton(

          //child: Botão multiplicar("*"),

                  child: Text(
                  "*",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                  ),

                  color: Color.fromARGB(255, 16, 190, 1),
                  onPressed: multiplicar,               
                  ),
                
                MaterialButton(

          //child: Botão dividir("/"),

                  child: Text(
                  "/",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                  ),

                  color: Color.fromARGB(255, 238, 115, 0),
                  onPressed: dividir,               
                  ),
              ],
            ),

            /// Espaçamento depois dos Botões
            Padding(padding: const EdgeInsets.only(top: 60)),

            // Botão Limpar valores
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MaterialButton(
                    child: new Text("Limpar valores"),
                    color: Colors.grey,
                    onPressed: limpar)
              ],
            )
          ],
        ),
      ),
    );
  } // fecha o método build

  // Atributos
  var num1;
  var num2;
  var resultado = 0;

  TextEditingController campoValor1 = TextEditingController(text: "");
  TextEditingController campoValor2 = TextEditingController(text: "");

  // Métodos
  void somar() {
    setState(() {
      num1 = int.parse(campoValor1.text);
      num2 = int.parse(campoValor2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = int.parse(campoValor1.text);
      num2 = int.parse(campoValor2.text);
      resultado = num1 - num2;
    });
  }
  
  void multiplicar() {
    setState(() {
      num1 = int.parse(campoValor1.text);
      num2 = int.parse(campoValor2.text);
      resultado = num1 * num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = int.parse(campoValor1.text);
      num2 = int.parse(campoValor2.text);
      resultado = num1 / num2;
    });
  }

  void limpar() {
    setState(() {
      campoValor1.text = "";
      campoValor2.text = "";
      resultado = 0;
    });
  }
} // fecha a classe CalculadoraState

// NADA deve ser adicionado depois do RETURN, porque não será lido