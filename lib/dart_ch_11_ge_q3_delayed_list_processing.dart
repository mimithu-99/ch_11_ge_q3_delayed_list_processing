/// Support for doing something awesome.
///
/// More dartdocs go here.
// ignore_for_file: dead_code

library;
import 'dart:async';
export 'src/dart_ch_11_ge_q3_delayed_list_processing_base.dart';

// TODO: Export any libraries intended for clients of this package.
Future<List<int>> processListAsync(List<int> input) async{
  // return input.map((e) => e * 2).toList();
  // List<int> ans;
  // ans = [];
  // for(int indivInt in input){
  //   Future.delayed(Duration(milliseconds: 10)).then((_) => ans.add(indivInt * 2));
  // }
  // return ans;
  List<int> ans = [];
  await for (int indivInt in Stream.fromIterable(input)){
    await Future.delayed(Duration(milliseconds: 10)).then((_) => ans.add(indivInt * 2));
  }

  return ans;
 }