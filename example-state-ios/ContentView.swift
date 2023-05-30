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
    
    
    private func addFriends() {
        if !desactivar {
            self.friends.append(Amigos(name: "Pedro",
                                       lastName: "Rodriguez",
                                       imagen: "user1",
                                       isFriend: true))
            self.friends.append(Amigos(name: "Pablo",
                                       lastName: "Perez",
                                       imagen: "user1",
                                       isFriend: true))
            self.friends.append(Amigos(name: "Juan",
                                       lastName: "Gomez",
                                       imagen: "user1",
                                       isFriend: true))
            self.friends.append(Amigos(name: "Raul",
                                       lastName: "Ramirez",
                                       imagen: "user1",
                                       isFriend: true))
            self.desactivar = true
        }
    }
    
    var body: some View {
        VStack {
            Button(action: addFriends) {
                Text("Agregar")
            }
            List {
                ForEach(friends) { friend in
                    /*@START_MENU_TOKEN@*/Text(friend.name)/*@END_MENU_TOKEN@*/
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
