/*
import SwiftUI

struct Character : Identifiable, Codable {
    let id: Int
    let name: String?
    let imageUrl: String?
    let region: String?
    let contents: [Topic]?
};

struct Topic : Identifiable, Codable {
    var id: Int?
    var name: String?
    var state: Int?
    var messages: [Message]
    var size: Int?
    var iconUrl: String?
}

struct Message : Identifiable, Codable {
    var id: Int?
    var question: String
    var answers: [Answer]
}

struct Answer : Identifiable, Codable {
    var id: Int?
    var answer: String?
    var librasUrl: String?
}

struct escolherTema: View {
    
    @Environment(\.presentationMode) private var presentationMode:Binding<PresentationMode>
    
    @Binding var currentCharacter : Character
    @State var message : String = "Olá! Eu sou o José"
    @State private var showAlertBlocked = false
    @State private var showAlertDone = false
    
    
    var body: some View {
        ZStack{
            //corpo da pagina
            ScrollView{
                HStack{
                    Image("avatar1")
                        .resizable().scaledToFit().frame(width: 80, height: 80).cornerRadius(50).offset(x: 60)
                        
                    
                    HStack{
                        Text(message).fontWeight(.semibold).font(.title2).padding(10).frame(width: 280)
                    }.padding(.leading, 30).background(Color("LightOrange")).cornerRadius(6).zIndex(-1)
                    Spacer()
                }.offset(x: -30)
                
                HStack{
                    Image("avatar1")
                        .resizable().scaledToFit().frame(width: 80, height: 80).cornerRadius(50).offset(x: 60)
                    HStack{
                        Text("Vamos aprender sobre o que?").fontWeight(.semibold).font(.title2).padding(10).frame(width: 280)
                    }.padding(.leading, 30).background(Color("LightOrange")).cornerRadius(6).zIndex(-1)
                    Spacer()
                }.offset(x: -30)
                
                VStack{
                    ForEach(currentCharacter.contents!){ teste in
                        NavigationLink(destination: ChatConversation(topic: teste, imageUrlChar: currentCharacter.imageUrl!)){
                            HStack{
                                AsyncImage(url: URL(string: teste.iconUrl!)){ image in
                                    image.resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                } placeholder: {
                                    ProgressView()
                                        .progressViewStyle(.circular)
                                }
                                
                                Text(teste.name!).fontWeight(.semibold).font(.title3)
                                
                            }.frame(width: 250, height: 80)
                                .background(Color("LightOrange")).cornerRadius(6)
                        }
                    }
                }
                
            }.padding(20)
                .navigationTitle(currentCharacter.region!).toolbarColorScheme(.dark)
                .toolbarBackground(
                    Color("DarkOrange"),
                    for: .navigationBar).toolbarBackground(.visible, for: .navigationBar)
      
            Button { //botao que desativa a barra
                if(Global.ativar == 0) {
                    Global.ativar = 1
                } else {
                    Global.ativar = 0
                }
            } label: {
                Image(systemName:"rectangle.filled.and.hand.point.up.left")
                    .foregroundColor(.white)
            } .padding(.leading, 300)
                .padding(.top, 495)
                .font(.system(size: 30))
            
            
            VStack{ //barra de cima com nome da pagina
                HStack{
                    Text("Nordeste")
                        .font(.title2)
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 35.0)
                }
                .frame(width:390, height: 100)
                .background(Color(red: 0.9568627450980393, green: 0.34901960784313724, blue: 0.0196078431372549))
                .cornerRadius(100)
                .padding(.bottom, 680.0)
            }
            
            //botao back modificado
            .navigationBarBackButtonHidden(true)
            .toolbar(content: {
                ToolbarItem (placement: .navigationBarLeading)  {
                    
                    
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                        Global.ativar = 1
                    }, label: {
                        Image(systemName: "arrowtriangle.backward.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 25))
                    })
                }
            }).frame(width:10, height: 50)
            
        }
    }
}
struct escolherTema_Previews: PreviewProvider {
    static var previews: some View {
        escolherTema(currentCharacter: .constant(Character(id: 1, name: "Sudayn", imageUrl: "https://i.redd.it/8znyl93ec8x71.png", region: "Sudeste", contents: [
            Topic(id: 1, name: "Saudações", state: 1, messages: [], iconUrl: "https://i.imgur.com/xZZXrNe.png"),
            Topic(id: 2, name: "Animais", state: 1, messages: [], iconUrl: "https://i.imgur.com/sRCG3fr.png"),
            Topic(id: 4, name: "Comidas", state: 2, messages: [], iconUrl: "https://i.imgur.com/8JdJLCC.png"),
            Topic(id: 5, name: "Clima", state: 2, messages: [], iconUrl: "https://i.imgur.com/Row0lgx.png"),
            Topic(id: 6, name: "Profissões", state: 3, messages: [], iconUrl: "https://i.imgur.com/041jmlc.png")])))
    }
}
*/
