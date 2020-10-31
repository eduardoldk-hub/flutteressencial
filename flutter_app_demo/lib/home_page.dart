import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: _body(),
    );
  }
// ------------------------------------------------------ About the body--------
  _body() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          Container(
            height: 300,
            child: PageView(
              children: <Widget>[
                _img("assets/images/img1.jpg"),
                _img("assets/images/img2.jpg"),
                _img("assets/images/img3.jpg"),
                _img("assets/images/img4.jpg"),
                _img("assets/images/img5.jpg"),
              ],
            ),
          ),
          _buttons()
        ]
      ),
    );
  }

// ------------------- About the Colunm from the body, related to buttons ------
  _buttons() {
    return Column(
          children: <Widget>[
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button("ListViewe"),
            _button("Page 2"),
            _button("Page 3")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _button("Snack"),
            _button("Dialog"),
            _button("Toast")
          ],
        )
      ],
    );
  }

// --------------------------------------------------- About the buttons -------
  _button(String text) {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: _onClickOk
    );
  }

// ------------------------------------ About the Onclick on the buttons -------
  void _onClickOk() {
    print("Clicou no botão!");
  }

// --------------------------------------------------- About the imagens -------
  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }

// ------------------------------------- About the text on the container -------
  _text() {
    return Text(
      "Hello World",
      style: TextStyle(
          color: Colors.blue,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: Colors.red,
          decorationStyle: TextDecorationStyle.wavy),
    );
  }
}
