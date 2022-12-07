class Carro {
  var _marca;
  var _modelo;
  var _ano;
  var _chassi;

  Carro({var marca, var modelo, var ano, var chassi}) {
    this._marca = marca;
    this._modelo = modelo;
    this._ano = ano;
    this._chassi = chassi;
  }

  @override
  String toString() {
    return "Marca: ${this._marca}\n" +
        "Modelo: ${this._modelo}\n" +
        "Ano: ${this._ano}\n" +
        "Chassi: ${this._chassi}\n";
  }
}
