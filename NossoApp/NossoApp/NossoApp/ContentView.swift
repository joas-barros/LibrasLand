//
//  ContentView.swift
//  NossoApp
//
//  Created by Student12 on 30/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var nick : String = "Megatron"
    @State var email: String = ""
    @State var idade: Int = 0
    @State var escola: String = ""
    @State var sexo: String = "???"
    @State var foto: String = ""
    var body: some View {
        NavigationStack{
            ZStack{
                VStack {
                    VStack{
                        Text("Bem vindos ao LibrasLand")
                        Text("Nick:")
                        TextField("MegaTron", text: $nick).multilineTextAlignment(.center)
                        Text("Email:")
                        TextField("xxxx@xxxx.com", text: $email).multilineTextAlignment(.center)
                        Text("Idade: ")
                        TextField("0", value: $idade, format: .number).multilineTextAlignment(.center)
                    }
                    VStack{
                        Text("Escola: ")
                        TextField("Moreira Dias", text: $escola).multilineTextAlignment(.center)
                        HStack{
                            Text("Genero: ")
                            Button("M"){
                                sexo = "M"
                            }
                            Button("F"){
                                sexo = "F"
                            }
                        }
                        Text(sexo)
                        
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
