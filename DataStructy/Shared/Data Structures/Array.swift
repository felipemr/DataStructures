//
//  Array.swift
//  DataStructy
//
//  Created by Felipe Marques Ramos on 6/28/22.
//

import Foundation

struct Membro {
    let nome: String
}

class FamilyList {
    private var Membros = [Membro?]()
    private var totalDeMembros: Int = 0
    private let size = 10

    init() {
        for _ in 0..<size {
            Membros.append(nil)
        }
    }

    func add(_ newMembro: Membro){
        Membros[totalDeMembros] = newMembro
        totalDeMembros += 1
    }

    func add(_ newMembro: Membro, at position: Int){
        for index in stride(from: totalDeMembros, to: position-1, by: -1){
            Membros[index+1] = Membros[index]
        }
        Membros[position] = newMembro
        totalDeMembros += 1
    }

    func get(at index: Int) -> Membro? {
        guard index < 0, index > totalDeMembros else{
            return nil
        }
        return Membros[index]
    }

    func remove(at position: Int) {
        for index in position..<totalDeMembros{
            Membros[index] = Membros[index+1]
        }
        totalDeMembros -= 1
    }

    func remove(Membro oldMembro: Membro) {
        for index in 0..<totalDeMembros {
            if let existingMembro = Membros[index], existingMembro.nome == oldMembro.nome {
                remove(at: index)
            }
        }
    }

    func contains(Membro newMembro : Membro) -> Bool {
        for index in 0..<totalDeMembros {
            if let existingMembro = Membros[index], existingMembro.nome == newMembro.nome {
                return true
            }
        }
        return false
    }

    func tamanho() -> Int {
        return totalDeMembros
    }

    func imprimir() {
        print("[")
        for index in 0..<size {
            let nome = Membros[index]?.nome ?? "Null"
            print("  \(index): " + nome + ",")
        }
        print("]\n")
    }
}
