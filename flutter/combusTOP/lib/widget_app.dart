import 'package:flutter/material.dart';

// ARQUIVO ONDE AS CLASSES/WIDGETS SERÃO CRIADOS PARA NÃO POLUIR O MAIN

// CLASSE STATEFUL WIDGET QUE É A BASE PARA AS OUTRAS
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// CLASSE QUE REPRESENTA O ESTADO DA PAGINA INICIAL
class _HomeState extends State<Home> {

  //SETANDO CHAVE DO FORMULARIO
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  // INSTANCIANDO OBJETOS DO WIDGET PARA CAPTAR O INPUT
  TextEditingController gasolinaController = TextEditingController();
  TextEditingController etanolController = TextEditingController();

  // STRING QUE ARMAZENARÁ AS MENSAGENS ENVIADAS AO USUÁRIO
  String _infotext = "Informe o valor de cada combustível";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(

        // DEFININDO PROPRIEDADES DA APPBAR
        title: const Text("Gasolina ou Etanol"),
        centerTitle: true,
        backgroundColor: Colors.transparent,

        actions: <Widget>[
          IconButton(icon: const Icon(Icons.refresh), onPressed: () {
            resetaValores();

          },)
        ],
      ),




        // DEFININDO PROPRIEDADES DO FUNDO DA TELA
        backgroundColor: Colors.orangeAccent,
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(32),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image:  AssetImage('images/fuel.jpg'),
              fit: BoxFit.cover,
          ),
          ),
          // CRIANDO UM WIDGET DE FORMULÁRIO
          child: Form(
            key: _formkey,
            child:
                // DEFININDO PROPRIEDADES DO FORMULÁRIO
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // CENTRALIZA
                  children: <Widget>[


                    const Icon(Icons.directions_car,
                        size: 60.0,
                        color: Colors.white),


                // PARA QUE O CÓDIGO FICASSE MAIS LIMPO, FORAM CRIADOS MÉTODOS
                // COM A LÓGICA DA CRIAÇÃO DOS COMPONENTES VISUAIS

                buildBigSizedBox(),
                buildTextFormFieldGasolina(),
                buildSizedBox(),
                buildTextFormFieldEtanol(),
                buildSizedBox(),
                buildContainerButton(context),
                buildSizedBox(),
                buildTextInfo()
            ],
          ),
          ),
        ),

    );
  }

  buildBigSizedBox(){
    return const SizedBox(
        height: 30.0
    );

  }

  buildSizedBox(){
    return const SizedBox(
      height: 15.0
    );
  }

  // CRIA O WIDGET QUE MOSTRARÁ AS MENSAGENS PARA O USUÁRIO
  buildTextInfo(){
    return Text(_infotext,
    textAlign: TextAlign.center,
    style: const TextStyle(color:Colors.white,fontSize: 20.0),
    );
  }

  // CRIA O CAMPO DE TEXTO DO PREÇO DA GASOLINA
  buildTextFormFieldGasolina(){
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        labelText: "Preço da Gasolina",
        labelStyle: TextStyle(color: Colors.white, fontSize: 20.0)
      ),
      style: const TextStyle(color: Colors.white, fontSize: 28.0),
      controller: gasolinaController,

    );
  }

  // CRIA O CAMPO DE TEXTO DO PREÇO DO ETANOL
  buildTextFormFieldEtanol(){
    return Container(
      color: Colors.white,
      height: 50.0,
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: const InputDecoration(
            labelText: "Preço do Etanol",
            labelStyle: TextStyle(color: Colors.white, fontSize: 20.0)
        ),
        style: const TextStyle(color: Colors.white,fontSize: 28.0),
        controller: etanolController,
      ),
    );
  }

  // CRIA O CONTAINER RESPONSÁVEL PELO BOTÃO
  buildContainerButton(BuildContext context){

     return Container(
       height: 50.0,
       child: TextButton(
        style: ButtonStyle(

          // MUDANDO A COR DO ONPRESSED DO BOTÃO
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Colors.redAccent.withOpacity(0.04);
              }
              if (states.contains(MaterialState.focused) ||
                  states.contains(MaterialState.pressed)) {
                return Colors.redAccent.withOpacity(0.12);
              }
              return null;
            },
          ),
        ),

        // CHAMA O MÉTODO CALCULA
        onPressed: (){
          calcula();
          FocusScope.of(context).requestFocus((FocusNode()));
        },
        child: const Text('Calcular',
          style: TextStyle(color: Colors.black87,fontSize: 20.0)
        ),
      ),
    );

  }


  // MÉTODO RESPONSÁVEL PELA LÓGICA DO BOTÃO CALCULAR
  void calcula(){
    setState(() {


      double gasolina = double.parse(gasolinaController.text);
      double etanol = double.parse(etanolController.text);
      double resultado = (etanol / gasolina);

      if(gasolina ==0 || etanol == 0 || gasolina.isNaN || etanol.isNaN){
        _infotext = "\nERRO: preencha os campos corretamente";
      } else {
        if (resultado >0.7){
          _infotext = "\nRazão etanol/gasolina: (${resultado.toStringAsPrecision(2)}) \n\n Abasteça com gasolina";
        } else{
          _infotext = "\nRazão etanol/gasolina: (${resultado.toStringAsPrecision(2)}) \n\n Abasteça com etanol";
        }
      }


    });
  }

  void resetaValores(){
    setState(() {
      gasolinaController.text="";
      etanolController.text="";
      _infotext = "Informe o valor de cada combustível";

    });
  }
}
