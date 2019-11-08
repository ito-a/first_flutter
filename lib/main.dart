import 'package:flutter/material.dart';
import 'footer.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: Header(),
          body: Center(child: Text("オラオラオラ")),
          bottomNavigationBar: Footer()),
    );
  }
}

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        // AppBarの左側に表示される
        padding: const EdgeInsets.all(8.0),
        child: Icon(Icons.android),
      ),
      actions: [
        // AppBarの右側に表示される。Paddingをコピーすると複数載せれる
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.border_color),
        ),
      ],
      title: Text(
        //leadingとactionsの間に表示される
        'ホーム',
      ),
      backgroundColor: Colors.black87,
      centerTitle: true,
      elevation: 0.0,
    );
  }
}
