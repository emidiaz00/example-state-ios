//
//  ContentView.swift
//  example-state-ios
//
//  Created by Emiliano Diaz on 29/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var friends = [Amigos]()
    @State private var desactivar = false
    @State private var isFriend = false
    
    
    private func addFriends() {
        if !desactivar {
            self.friends.append(Amigos(name: "Pedro",
                                       lastName: "Rodriguez",
                                       imagen: "user1",
                                       isFriend: true))
            self.friends.append(Amigos(name: "Pablo",
                                       lastName: "Perez",
                                       imagen: "user2",
                                       isFriend: true))
            self.friends.append(Amigos(name: "Juan",
                                       lastName: "Gomez",
                                       imagen: "user3",
                                       isFriend: false))
            self.friends.append(Amigos(name: "Raul",
                                       lastName: "Ramirez",
                                       imagen: "user4",
                                       isFriend: false))
            self.desactivar = true
        }
    }
    var body: some View {
        VStack {
            Button(action: addFriends) {
                Text("Agregar")
            }
            List {
                Toggle(isOn: self.$isFriend) {
                    Text("Filtrar amigos")
                }
                ForEach(friends.filter{$0.isFriend == self.isFriend}) { friend in
                    HStack {
                        Image(friend.imagen)
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text(friend.name)
                    }
                }
            }
        }
        .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
