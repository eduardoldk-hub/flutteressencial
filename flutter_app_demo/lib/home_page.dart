import 'package:flutter/material.dart';

//Widget criado para pagina principal - Home Page -----------------------------

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }
}

// Metodo responsavel pelo body ------------------------------------------------
_body(context) {


  Size size = MediaQuery.of(context).size;

  return Container(
    height: size.height,
    color: Colors.green,
//    In the child bellow i can set a SizedBox.expand ho aloud the image fill
//    the hole white space on the screen
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _button(),
        _button(),
        _button(),
      ],
    ),
  );
}

/* Exemplo de metodo com children, a marioria dos widgets recebem um unico filho,
porem há casos como em listview que ele recebe uma lista de valores, children. 
_body() {
  return Container(
    color: Colors.white,
    child: ListView(
      children: <Widget> [
        _img(),
        _img(),
        _img(),
      ]
    ),
  );
}
*/
_button() {
  return RaisedButton(
    color: Colors.blue,
    child: Text(
      "Ok",
      style: TextStyle(
        color: Colors.white,
        fontSize: 30,
      ),
    ),
    // => arrow functions are utilized wen the function has just one line, are
    //substitution for () {print("Clicou no botão")}
    onPressed: () => _onClickButton(),
  );
}

//This is the method for the onpressed button.
void _onClickButton() {
  print("Clicou no botão!");
}

// This methot is responsable for the text ----------------------------------
_img() {
  return Image.asset(
    "assets/images/dog1.png",
//     width: 100, is about how wide something is
//     height: 100, idem is about how tall that something is
    fit: BoxFit.cover,
  );
}

// This methot is responsable for the text ----------------------------------
_text() {
  return Text(
    "Hello Word",
    style: TextStyle(
      fontSize: 30,
      color: Colors.yellow,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.italic,
      decoration: TextDecoration.underline,
      decorationColor: Colors.red,
      decorationStyle: TextDecorationStyle.dashed,
    ),
  );
}
