//
//  ProfileView.swift
//  Technical-Test-Farah-Torkhani
//
//  Created by Farah Torkhani on 21/2/2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        NavigationView{
            VStack {
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                    }
                    Spacer()
                    Text("LunaBee Shop")
                        .font(.title)
                    Spacer()
                    Image("icon")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                    
                }
                .padding()
                
                HStack {
                    Image("Feature6")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .padding(.trailing, 10)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Farah Torkhani")
                            .font(.headline)
                            .foregroundColor(.black)
                        Text("Farah.torkhani@esprit.tn")
                            .font(.system(size: 12))
                            .fontWeight(.light)
                        .foregroundColor(.secondary)
                    }
                    
                    Spacer()
                    Image(systemName: "gearshape")
                        .foregroundColor(.black)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                }.padding(.horizontal, 20)
                
                VStack(alignment: .leading, spacing: 30) {
                    HStack {
                        Image(systemName: "person.circle")
                        Text("Informations personelles")
                            .font(.headline)
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    Divider()
                    HStack {
                        Image(systemName: "lock.circle")
                        Text("Politique de confidentialité")
                            .font(.headline)
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    Divider()
                    HStack {
                        Image(systemName: "questionmark.circle")
                        Text("Aide")
                            .font(.headline)
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    Divider()
                    HStack {
                        Image(systemName: "power.circle")
                        Text("Déconnexion")
                            .font(.headline)
                        Spacer()
                        Image(systemName: "arrow.right")
                    }
                    Divider()
                }.padding(.top, 20)
                .padding(.horizontal, 20)
                    .frame(width: UIScreen.main.bounds.width - 40)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                    .padding(.top, 30)
                
                Spacer()
                
            }.accentColor(.black)
        }
    }
    
}
#Preview {
    ProfileView()
}
