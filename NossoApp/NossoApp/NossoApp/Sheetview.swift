//
//  Sheetview.swift
//  NossoApp
//
//  Created by Student12 on 06/11/23.
//

import SwiftUI

struct Sheetview: View {
    @Environment(\.dismiss) var presentationMode
    var opcoes = [
        Sugestoes(id: 1, nome: "menino"),
        Sugestoes(id: 2, nome: "menina"),
        Sugestoes(id: 3, nome: "cao"),
        Sugestoes(id: 4, nome: "gato"),
        Sugestoes(id: 5, nome: "robo")
    ]
    @State var nome : String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    ForEach(opcoes) { opcao in Button(action: {
                        Global.ativado = opcao.nome
                        presentationMode()
                    }, label: {
                        Image(opcao.nome).resizable().aspectRatio(contentMode: .fill).frame(width: 50, height: 50).clipShape(Circle())
                        Text(opcao.nome)
                    })
                    }
                }
            }
        }
    }
}

struct Sheetview_Previews: PreviewProvider {
    static var previews: some View {
        Sheetview()
    }
}
