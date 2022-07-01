//
//  Stacks.swift
//  DataStructy (iOS)
//
//  Created by Felipe Marques on 01/07/22.
//

import Foundation


// Stacks in Computer Science works just likes Stacks in real life, or a pile. Imagine a Pile(Stack) of plates, you have to take the top ones out, that are the last ones to come to the pile, fisrt and only then  you can get to the other ones. That is called LIFO, Last In First Out

struct Stack<Element> {
    private var storage = [Element]()

    init(){ }

    init (_ items: [Element]) {
        self.storage = items
    }

    var count: Int {
        storage.count
    }

    var isEmpty: Bool {
        storage.isEmpty
    }

    mutating func push(_ element: Element){
        storage.append(element)
    }

    mutating func pop() -> Element? {
        storage.popLast()
    }

    func peek() -> Element? {
        storage.last
    }
}

extension Stack: ExpressibleByArrayLiteral {
    init(arrayLiteral elements: Element...) {
        self.storage = elements
    }
}

extension Stack: CustomDebugStringConvertible {
    var debugDescription: String {
        var result = "["
        var first = true

        for item in storage {
            if first {
                first = false
            } else {
                result += ", "
            }

            debugPrint(item, terminator: "", to: &result)
        }

        result += "]"

        return result
    }
}


extension Stack: Equatable where Element: Equatable { }
extension Stack: Hashable where Element: Hashable { }
extension Stack: Encodable where Element: Encodable { }
extension Stack: Decodable where Element: Decodable { }
