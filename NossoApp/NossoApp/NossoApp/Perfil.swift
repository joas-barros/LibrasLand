//
//  Perfil.swift
//  NossoApp
//
//  Created by Student12 on 30/10/23.
//

import SwiftUI

struct Perfil: View {
    @State var nickPerfil : String = "Usuario"
    @State var emailPerfil: String = "xxx@xxxx.com"
    @State var idadePerfil: Int = 0
    @State var escolaPerfil: String = "Moreira Dias"
    @State var fotoPerfil: String = "robo"
    
    @State private var showingSheet = false
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    VStack{
                        Text("Perfil").foregroundColor(.white)
                        Image(fotoPerfil).resizable().aspectRatio(contentMode: .fill).frame(width: 200, height: 200).clipShape(Circle())
                        TextField("Usuario", text: $nickPerfil).multilineTextAlignment(.center).fontWeight(.bold).font(.system(size: 30)).foregroundColor(.white)
                        ScrollView(.horizontal){
                            HStack(alignment: .center){
                                ForEach(Array(nickPerfil), id: \.self){letra in VStack{
                                    Image(letra.uppercased()).resizable().scaledToFit().frame(width: 50, height: 50)
                                    Text(letra.uppercased()).foregroundColor(.white)
                                }}
                            }.frame(width: 400, height: 75, alignment: .center)
                        }
                    }
                    HStack{
                        Text("Escolha seu personagem: ").font(.system(size: 20)).foregroundColor(.white)
                        Button(fotoPerfil){
                            showingSheet.toggle()
                            fotoPerfil = Global.ativado
                        }.sheet(isPresented: $showingSheet){
                            Sheetview()
                        }
                    }
                    HStack{
                        Spacer(minLength: 65)
                        Text("Email: ").font(.system(size: 20)).foregroundColor(.white)
                        TextField("xxxx@xxxx.com", text: $emailPerfil).foregroundColor(.white)
                    }
                    HStack{
                        Spacer(minLength: 65)
                        Text("Idade: ").font(.system(size: 20)).foregroundColor(.white)
                        TextField("0", value: $idadePerfil, format: .number).foregroundColor(.white)
                    }
                    HStack{
                        Spacer(minLength: 65)
                        Text("Escola: ").font(.system(size: 20)).foregroundColor(.white)
                        TextField("UFERSA", text: $escolaPerfil).foregroundColor(.white)
                    }
                    
                }
            }.frame(maxWidth: .infinity,maxHeight: .infinity).background(Color("violeta"))
        }
    }
}

struct Perfil_Previews: PreviewProvider {
    static var previews: some View {
        Perfil()
    }
}
