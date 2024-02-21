//
//  MainActivity.swift
//  Technical-Test-Farah-Torkhani
//
//  Created by Farah Torkhani on 21/2/2024.
//

import SwiftUI

struct CartItem: Identifiable {
    let id = UUID()
    var name: String
    var image: String
    var price: Double
    var size: String
    var color: String
    var quantity: Int
}

struct CartView: View {
    @State private var cartItems: [CartItem] = [
        CartItem(name: "Sportswear Set", image: "Feature6", price: 80.00, size: "L", color: "Gray", quantity: 1),
        CartItem(name: "Sports Sweater", image: "Feature5", price: 39.99, size: "M", color: "Blue", quantity: 1),
        CartItem(name: "Cotton T-shirt", image: "Feature4", price: 30.00, size: "L", color: "Black", quantity: 1)
    ]
    
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    Button(action: {
                        
                    }) {
                        Image(systemName: "line.horizontal.3")
                            .foregroundColor(.black)
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
                ScrollView {
                    VStack(spacing: 40) {
                        ForEach($cartItems) { $item in
                            HStack {
                                Image(item.image)
                                    .resizable()
                                    .frame(width: 80, height: 100)
                                    .cornerRadius(8)
                                
                                VStack(alignment: .leading, spacing: 20) {
                                    Text(item.name)
                                        .font(.system(size: 16))
                                        .fontWeight(.medium)
                                    
                                    Text("Size: \(item.size) | Color: \(item.color)")
                                        .font(.system(size: 14))
                                        .foregroundColor(.secondary)
                                }
                                VStack(alignment: .center) {
                                    Text("\(item.quantity)")
                                        .scaleEffect(0.7)
                                    Stepper(value: $item.quantity, in: 1...10) {
                                        EmptyView()
                                    }.scaleEffect(0.7)
                                }
                            }.frame(height: 100)
                                .background(Color.white)
                                .cornerRadius(10)
                                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                        }.onDelete(perform: deleteItems)
                            .padding(.horizontal, 20)
                        
                        VStack(spacing: 30) {
                            HStack {
                                Text("Products")
                                    .font(.headline)
                                Spacer()
                                Text("€ \(calculateTotal(), specifier: "%.2f")")
                                    .font(.headline)
                            }.padding(.horizontal, 10)
                                .padding(.top, 20)
                            
                            Divider().padding(.horizontal, 10)
                            HStack {
                                Text("Shipping")
                                    .font(.headline)
                                Spacer()
                                Text("Free")
                                    .font(.headline)
                            }.padding(.horizontal, 10)
                            Divider().padding(.horizontal, 10)
                            HStack {
                                Text("SubTotal")
                                    .font(.headline)
                                Spacer()
                                Text("€ \(calculateTotal(), specifier: "%.2f")")
                                    .font(.headline)
                            }.padding(.horizontal, 10)
                            
                            Spacer()
                            
                            Button(action: {
                                // Handle checkout action
                            }) {
                                Text("Proceed to Checkout")
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .padding()
                                    .background(Color.black)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .padding()
                        }
                        .background(Color.white)
                        .cornerRadius(25)
                        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -1)
                        
                        
                        
                    }
                }
            }
        }
    }
    
    func calculateTotal() -> Double {
        cartItems.reduce(0) { $0 + $1.price * Double($1.quantity) }
    }
    
    func deleteItems(at offsets: IndexSet) {
        cartItems.remove(atOffsets: offsets)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
