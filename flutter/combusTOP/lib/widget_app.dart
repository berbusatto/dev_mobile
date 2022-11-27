import 'package:flutter/material.dart';

// ARQUIVO ONDE AS CLASSES/WIDGETS SERÃO CRIADOS PARA NÃO POLUIR O MAIN


// CLASSE STATEFUL WIDGET QUE É A BASE PARA AS OUTRAS
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}


class _HomeState extends State<Home> {

  //SETANDO CHAVE DO FORMULARIO
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // INSTANCIANDO CONTROLLERS
  TextEditingController gasolinaController = TextEditingController();
  TextEditingController etanolController = TextEditingController();

  String _infotext = "Informe o valor de cada combustível";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(

      // DEFININDO PROPRIEDADES DA TELA PRINCIPAL
      title: const Text("Gasolina ou Etanol"),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,
      actions: <Widget>[
        IconButton(icon: const Icon(Icons.refresh), onPressed: () {},)
      ],
    ),
      backgroundColor: Colors.white,
      body: Form(
        key: _formkey,
        child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Icon(Icons.directions_car,
                    size: 60.0,
                    color: Colors.blueGrey),

            // CRIANDO MÉTODO PARA SETAR OS TEXTFIELD
            buildTextFormFieldGasolina(),
            buildTextFormFieldEtanol(),
            buildContainerButton(context),
            buildTextInfo()


        ],
      ),
      ),
    );
  }

  buildTextInfo(){
    return Text(_infotext,
    textAlign: TextAlign.center,
    style: TextStyle(color:Colors.black54,fontSize: 20.0),
    );
  }

  buildTextFormFieldGasolina(){
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: "Preço da Gasolina",
        labelStyle: TextStyle(color: Colors.black54, fontSize: 20.0)
      ),
      controller: gasolinaController,

    );
  }

  buildTextFormFieldEtanol(){
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
          labelText: "Preço do Etanol",
          labelStyle: TextStyle(color: Colors.black54, fontSize: 20.0)
      ),
      controller: etanolController,
    );
  }

  buildContainerButton(BuildContext context){
     return Container(
      height: 50.0,
      child: TextButton(
        style: ButtonStyle(

          // MUDANDO A COR DO ONPRESSED DO BOTÃO
          foregroundColor: MaterialStateProperty.all<Color>(Colors.black54),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered))
                return Colors.black54.withOpacity(0.04);
              if (states.contains(MaterialState.focused) ||
                  states.contains(MaterialState.pressed))
                return Colors.black54.withOpacity(0.12);
              return null;
            },
          ),
        ),
        onPressed: (){
          //calcula();
          FocusScope.of(context).requestFocus((FocusNode()));
        },
        child: const Text('Calcular',
          style: TextStyle(color: Colors.black54,fontSize: 20.0)
        ),
      ),
    );

  }

}
