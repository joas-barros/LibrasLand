//
//  Global.swift
//  LIBRASLand
//
//  Created by Student03 on 06/11/23.
//

import Foundation

struct Global{
    static var ativar: Int = 1
    static var toggerAtivado: Bool = false
}
struct letras: Identifiable{
    var id = UUID()
    var img: String
    var giff: String
}

struct animais: Identifiable{
    var id = UUID()
    var img: String
    var giff: String
}

struct fotoPerfil {
    static var FotoPerfil: String = "Robô"
}



/*
class someClass {

static var globalVar = 1

}
*/
