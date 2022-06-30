//
//  ContentView.swift
//  Shared
//
//  Created by Felipe Marques Ramos on 6/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Test Array")
            .padding()
            .onTapGesture {
                testArray()
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

        array.remove(aluno: Membro(nome: "Gabriel"))

        array.imprimir()

        print("tamanho: \(array.tamanho())")
        print("E o Rogi? ta lá? \(array.contains(aluno: Membro(nome: "Roger")))")
        print("E o Mathias? ta lá? \(array.contains(aluno: Membro(nome: "Mathias")))")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
