import 'linkedList.dart';

var INSTRUCTION = "hover on a method to see what it does";
void main() {
  LinkedList linkedList = LinkedList();

  // add elements
  linkedList.append("1");
  linkedList.addAll(["2", "3", "4", "5", "6", "7"]);
  linkedList.length();

  // linkedList.getAllElements();

  // remove elements
  linkedList.pop();
  linkedList.shift();
  linkedList.remove("0");
  linkedList.removeAll(["2", "3"]);

  linkedList.getAllElements();
}
