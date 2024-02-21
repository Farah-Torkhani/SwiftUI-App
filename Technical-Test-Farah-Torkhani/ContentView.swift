//
//  ContentView.swift
//  Technical-Test-Farah-Torkhani
//
//  Created by Farah Torkhani on 21/2/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State private var selection = 0
    var body: some View {
        VStack {
            switch selection {
            case 0:
                HomeView()
            case 1:
                CartView()
            case 2:
                ProfileView()
            default:
                EmptyView()
            }

            CustomBottomNavBar(selection: $selection)
                .padding(.bottom)
                .background(Color.white)
                .clipShape(RoundedCorner(radius: 25, corners: [.topLeft, .topRight]))
                .shadow(radius: 3)
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
    
    
    struct CustomBottomNavBar: View {
        @Binding var selection: Int
        
        var body: some View {
            HStack {
                Button(action: {
                    self.selection = 0
                }) {
                    Image(systemName: "house")
                        .font(.system(size: 22))
                        .foregroundColor(self.selection == 0 ? .black : .gray.opacity(0.6))
                }
                .padding()
                
                Spacer()
                
                Button(action: {
                    self.selection = 1
                }) {
                    Image(systemName: "cart")
                        .font(.system(size: 22))
                        .foregroundColor(self.selection == 1 ? .black : .gray.opacity(0.6))
                }
                .padding()
                
                Spacer()
                
                Button(action: {
                    self.selection = 2
                }) {
                    Image(systemName: "person")
                        .font(.system(size: 22))
                        .foregroundColor(self.selection == 2 ? .black : .gray.opacity(0.6))
                }
                .padding()
            }
            .padding(.horizontal, 25)
            .font(.title)
        }
    }

    struct RoundedCorner: Shape {
        var radius: CGFloat = .infinity
        var corners: UIRectCorner = .allCorners
        
        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect,
                                    byRoundingCorners: corners,
                                    cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

