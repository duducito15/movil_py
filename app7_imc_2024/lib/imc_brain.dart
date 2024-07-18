import 'dart:math';

class IMCBrain {
  // Atributos
  double weight;
  double height;

  double imc = 0;
  // Constructor
  IMCBrain({
    required this.weight,
    required this.height,
  });
  // Metodos
  double calculateIMC() {
    imc = weight / pow((height / 100), 2);
    return imc;
  }

  String getResult() {
    String result = "";
    if (imc < 18.5) {
      result = "Bajo peso";
    } else if (imc <= 24.9) {
      result = "Normal";
    } else if (imc <= 29.9) {
      result = "Sobrepeso";
    } else {
      result = "Obesidad";
    }
    return result;
  }

  String getRecomendation() {
    String recomendation = "";
    if (imc < 18.5) {
      recomendation = "Debes alimentarte mejor";
    } else if (imc <= 24.9) {
      recomendation =
          "Buen trabajo, sigue comiendo saludable y realiza actividad física";
    } else if (imc <= 29.9) {
      recomendation =
          "Toma agua simple,evita el consumo de refrescos, jugos o cualquier bebida que contenga azúcar. Realiza actividad física.";
    } else {
      recomendation = "Acude a un especialista, lo importante es tu salud";
    }
    return recomendation;
  }

  String getImage() {
    String image = "";
    if (imc < 18.5) {
      image = "assets/img/image1.png";
    } else if (imc <= 24.9) {
      image = "assets/img/image2.png";
    } else if (imc <= 29.9) {
      image = "assets/img/image3.png";
    } else {
      image = "assets/img/image4.png";
    }
    return image;
  }
}
