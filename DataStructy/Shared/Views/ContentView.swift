//
//  ContentView.swift
//  Shared
//
//  Created by Felipe Marques Ramos on 6/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Data Structs")
                .padding()
                .font(.largeTitle.bold())
            Button("Test Array") {
                testArray()
            }
            .padding()
            .buttonStyle(.bordered)
            Button("Test Stack") {
                testStack()
            }
            .padding()
            .buttonStyle(.bordered)
        }
    }

    func testArray() {
        let array = FamilyList()

        array.add(Membro(nome: "Felipe"))
        array.add(Membro(nome: "Vanessa"))
        array.add(Membro(nome: "Todd"))
        array.add(Membro(nome: "Roger"))
        array.add(Membro(nome: "Paolo"))
        array.add(Membro(nome: "Jade"))
        array.add(Membro(nome: "Caio"))

        array.imprimir()

        array.add(Membro(nome: "Gabriel"), at: 3)

        array.imprimir()

        array.remove(Membro: Membro(nome: "Gabriel"))

        array.imprimir()

        print("tamanho: \(array.tamanho())")
        print("E o Rogi? ta lá? \(array.contains(Membro: Membro(nome: "Roger")))")
        print("E o Mathias? ta lá? \(array.contains(Membro: Membro(nome: "Mathias")))")
    }

    func testStack() {
        var stack: Stack = [1,3,5,7,9]
        print("Stack created: \(stack)")
        stack.push(2)
        print("Wrong number added: \(stack)")
        _ = stack.pop()
        print("Now its fixed again! \(stack)")

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
