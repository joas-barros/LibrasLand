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
    
    @Binding var nome : String
    
    var body: some View {
        NavigationStack{
            ZStack{
                VStack(alignment: .leading){
                    ForEach(opcoes) { opcao in Button(action: {
                        nome = opcao.nome
                        presentationMode()
                    }, label: {
                        HStack{
                            Image(opcao.nome).resizable().aspectRatio(contentMode: .fill).frame(width: 60, height: 60).clipShape(Circle())
                            Text(opcao.nome).font(.system(size: 30)).foregroundColor(.white).fontWeight(.semibold)
                        }.padding()
                        .frame(width: 250,height: 80, alignment: .leading).background(.orange).cornerRadius(8)
                    })
                    }
                }
            }.frame(maxWidth: .infinity,maxHeight: .infinity).background(Color("violeta"))
        }
    }
}

//struct Sheetview_Previews: PreviewProvider {
//    static var previews: some View {
//        Sheetview()
//    }
//}
