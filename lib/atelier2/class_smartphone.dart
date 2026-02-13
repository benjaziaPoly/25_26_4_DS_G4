class Smartphone {
  //att+getters/stters + custrutor + methode
  int _code = 0;
  String _marque = "";

  int get code => _code;
  String get marque => _marque;

  set code(int c) => _code = c;
  set marque(String m) => _marque = m;

  Smartphone() {
    _code = 0;
    _marque = "";
  }
  Smartphone.avecParam(int code, String marque) {
    _code = code;
    _marque = marque;
  }
  Smartphone.avecParamOpt(int code, String marque);

  Smartphone.avecParamOptNomme({int code = 0, required String marque});

  ///

  @override
  String toString() {
    return "Smartphone:Code=$_code, Marque=$_marque";
  }
}

void main() {
  var s = Smartphone();
  var s1 = Smartphone.avecParam(10, "xx");
  var s2 = Smartphone.avecParamOpt(20, "xxx");
  var s3 = Smartphone.avecParamOptNomme(marque: "ee", code: 30); //Flutter
}
// 
/*classe=> Widget => A majus
attribut => min

Widget1(child:Widget2(child:Widget3(children:[ 
  widget4(chi),
  widget5(),
])))
1 x MaterailApp()=> Tout le prpojet:
    - config de l'app: theme, routage, menu, langue, 
  Scaffold(): pour chauque ecran screen page  
*/
