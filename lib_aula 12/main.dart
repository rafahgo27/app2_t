import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Map<String, String> paises = {
  "Brasil":
      "https://images-americanas.b2w.io/produtos/42499508/imagens/adesivo-bandeira-do-brasil-externo/42499506_1_large.jpg",
  "Argentina":
      "https://images-americanas.b2w.io/produtos/5423111888/imagens/bandeira-da-argentina-cores-nas-2-faces-para-mastro-e-parede/5423111888_1_large.jpg",
  "Uruguai":
      "https://images-americanas.b2w.io/produtos/2106390078/imagens/bandeira-oficial-do-uruguai/2106390078_1_large.jpg",
  "Alemanha": "https://cf.shopee.com.br/file/4f993cf89737da5054bd3c6f689a0760",
  "Espanha":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTujOrbxQN-w_yj_DHvw8zmCBW-zAFTGP1etQ&usqp=CAU",
  "Japão":
      "data:image/png;base64,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"
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MyListView(),
    );
  }
}

class MyListView extends StatefulWidget {
  const MyListView({Key? key}) : super(key: key);

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Icon(
          Icons.emoji_people,
          size: 40,
          color: Colors.yellow,
        ),
      ),
      body: ListView.builder(
          itemCount: paises.length,
          itemBuilder: (context, item) {
            return ListTile(
              leading: Image(
                image: NetworkImage(paises.values.elementAt(item)),
              ),
              title: Text(paises.keys.elementAt(item)),
              //subtitle: Text("Uma frase de efeito:"),
              trailing: FlutterLogo(),
              onTap: () {
                final snackBar = SnackBar(
                  content: Text("Vai ${paises.keys.elementAt(item)}"),
                  action: SnackBarAction(
                    label: "Desfazer",
                    onPressed: () {
                      //código para desfazer a ação!
                    },
                  ),
                );
                // Encontra o Scaffold na árvore de widgets
                // e o usa para exibir o SnackBar!
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              tileColor: Colors.amberAccent,
            );
          }),
    );
  }
}
