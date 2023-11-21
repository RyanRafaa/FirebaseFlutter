
import 'package:cloud_firestore/cloud_firestore.dart';

class Despesa{
  String nome;
  String descricao;
  double valor;
  String data;

  Despesa({
    this.nome = "", this.descricao ="", this.valor = 0, this.data = ""});

  factory Despesa.fromDoc(DocumentSnapshot<Object?> data){
    return Despesa(
      nome: data['nome'],
      descricao: data['descricao'],
      valor: data['valor'],
      data: data['data']);
  }
}