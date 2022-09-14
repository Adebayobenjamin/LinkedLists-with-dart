/// new instance of Linked List
class LinkedList {
  Element? head = null;

  /// add element to the end of the linked list
  append(dynamic data) {
    // Create new Element instance
    final newElement = Element(data, null);
    if (head == null) {
      // set the head as new Element
      head = newElement;
    } else {
      var currentElement = head;
      // iterate through the elements to get the last element then set the
      // last element next value to the new value
      while (currentElement?.next != null) {
        currentElement = currentElement?.next;
      }
      currentElement?.next = newElement;
    }
  }

  /// add element to the beginning
  /// of the linked list
  void prepend(dynamic data) {
    // Create new Element instance
    final newElement = Element(data, null);
    if (head != null) {
      // set the head as new Element
      head = newElement;
    } else {
      //  assign the head to a variable
      final oldHead = head;
// set the new element next value to the old head
      newElement.next = oldHead;
      // set the new element as the head
      head = newElement;
    }
  }

  /// get all the elements in the linked list
  void getAllElements() {
    var currentElement = head;

    while (currentElement != null) {
      print(currentElement.data);
      currentElement = currentElement.next;
    }
  }

  /// Add multiple elements

  void addAll(List data) {
    int index = 0;
    while (index < data.length) {
      this.append(data[index]);
      index++;
    }
  }

  /// Removethe last element
  /// of the linked list
  void pop() {
    // iterate through the elements to get the second to the ast elemnt
    var currentElement = head;
    while (currentElement?.next?.next != null) {
      currentElement = currentElement?.next;
    }
    // set the second to the last element as null
    currentElement?.next = null;
  }

  /// Remove element from the begining
  /// of the linked list

  void shift() {
    // set new head as the second elemnt
    final newHead = head != null ? head?.next : null;
    // set the head as the new head
    head = newHead;
  }

  /// Remove element from any part of the  linked list
  void remove(dynamic data) {
    // if head is the value to be removed
    if (head?.data == data) {
      head = head?.next;
      return;
    }
    // set value for the first element to the head
    var currentElement = head;
    // get the previous element before the element to be removed
    Element? prevElementBeforeCurrentElement = null;
    // try to find the element from the linked list
    while (currentElement?.data != data && currentElement?.next != null) {
      prevElementBeforeCurrentElement = currentElement;
      currentElement = currentElement?.next;
    }
    // if foud then set the next value of element before the element to be
    // removed as the next value of the element to be removed
    if (currentElement?.data == data) {
      prevElementBeforeCurrentElement?.next = currentElement?.next;
    }
  }

  /// Remove multiple elements from linkedlist
  void removeAll(List data) {
    int index = 0;
    while (index < data.length) {
      this.remove(data[index]);
      index++;
    }
  }

  void length() {
    int length = 0;
    var currentElement = head;

    while (currentElement != null) {
      length++;
      currentElement = currentElement.next;
    }

    print(length);
  }
}

class Element {
  final dynamic data;
  Element? next;

  Element(this.data, this.next);
}
