//
//  LinkedLists.swift
//  DataStructy (iOS)
//
//  Created by Felipe Marques on 01/07/22.
//

import Foundation

final class LinkedListNode<Element> {
    var value: Element
    var next: LinkedListNode?

    init(value: Element, next: LinkedListNode? = nil) {
        self.value = value
        self.next = next
    }
}

final class LinkedListIterator<Element>: IteratorProtocol {
    var current: LinkedListNode<Element>?

    mutating func next() -> LinkedListNode<Element>? {
        defer {current = current?.next}
        return current
    }
}

final class LinkedList<Element> {
    var start: LinkedListNode<Element>?

    init() { }

    init(array: [Element]) {
        for element in array.reversed() {
            start = LinkedListNode(value: element, next: start)
        }
    }

    init(_ startElement: Element) {
        start = LinkedListNode(value: startElement)
    }
}

extension LinkedList: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        for element in elements.reversed() {
            start = LinkedListNode(value: element, next: start)
        }
    }
}

extension LinkedList: Sequence {
    func makeIterator() -> some IteratorProtocol {
        LinkedListIterator<Element>(current: start)
    }
}




