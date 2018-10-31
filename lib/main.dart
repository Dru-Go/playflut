import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      title: 'My App',
      home: new App2(),
    ));

class Textclass extends StatelessWidget {
  // This widget is just a text widget
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new Text(
        'Wolo',
        textDirection: TextDirection.ltr,
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation',
            onPressed: null,
          ),
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
              'Bee',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Stack(
            alignment: const Alignment(0.6, 0.6),
            children: <Widget>[
              new Image.asset('images/woman.jpg'),
              new Container(
                // padding: const EdgeInsets.symmetric(vertical: 200.0),

                margin: EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 150.0, 470.0),
                child: new Text(
                  'Arctic',
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class App2 extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Wee',
      home: new Scaffold(
        appBar: new AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'menu',
            onPressed: null,
          ),
          title: new Text('Hello Flutter'),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'search',
              onPressed: null,
            )
          ],
        ),
        body: new Stack(
          alignment: const Alignment(0.6, 0.6),
          children: <Widget>[
            new Image.asset('images/woman.jpg'),
            new Container(
              margin: EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 150.0, 470.0),
              child: new Text(
                'Arctic',
                style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white30,
                ),
              ),
            ),
            new Container(
                margin: EdgeInsetsDirectional.fromSTEB(60.0, 0.0, 150.0, 470.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      new Icon(Icons.call),
                      new Container(
                        child: new Text(
                          'Call',
                          style: new TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        ),
                      ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class fellowcolls extends StatelessWidget {
  Widget build(BuildContext context) {
    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }
  }
}
