//
//  MainActivity.swift
//  Technical-Test-Farah-Torkhani
//
//  Created by Farah Torkhani on 21/2/2024.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    
func colorFromString(_ colorString: String) -> Color {
    switch colorString {
    case "red":
        return Color.brown
    case "black":
        return Color.black
    case "blue":
        return Color.cyan
    default:
        return Color.gray
    }
}
    var body: some View {
        ScrollView {
            VStack {
                ZStack {
                    Image(product.imageName)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width, height: 300)
                    
                    VStack {
                        Spacer()
                        HStack(spacing: 10) {
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.white)
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.white)
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.white)
                        }
                        .padding(.bottom, 40)
                    }
                }
                
                VStack(spacing: 20) {
                    HStack {
                        Text(product.name)
                            .font(.title2)
                        Spacer()
                        Text("€ \(product.price)")
                            .font(.title2)
                    }.padding(.horizontal, 20)
                        .padding(.top, 20)
                    
                    HStack {
                        ForEach(0..<5, id: \.self) { _ in
                            Image(systemName: "star.fill")
                                .foregroundColor(.brown)
                        }
                        Text("(83)")
                            .foregroundColor(.secondary)
                        Spacer()
                    }.padding(.horizontal, 20)
                    
                    Divider()
                        .padding(.horizontal, 20)
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Color:")
                            
                            HStack {
                                ForEach(["red", "black", "blue"], id: \.self) { color in
                                    Circle()
                                        .fill(self.colorFromString(color))
                                        .frame(width: 35, height: 35)
                                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                }
                            }
                        }
                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text("Size:")
                            
                            HStack {
                                ForEach(["S", "M", "L"], id: \.self) { size in
                                    ZStack {
                                        Circle()
                                            .fill(Color.gray.opacity(0.4))
                                            .frame(width: 35, height: 35)
                                            .overlay(Circle().stroke(Color.white, lineWidth: 2))

                                        Text(size)
                                            .foregroundColor(.white)
                                            .font(.system(size: 14, weight: .bold))
                                    }
                                }
                            }

                        }
                    }.padding(.horizontal, 20)
                    Divider()
                        .padding(.horizontal, 20)
                    
                    HStack {
                        Text("Description")
                            .font(.headline)
                        Spacer()
                        Image(systemName: "arrow.down")
                    }.padding(.horizontal, 20)
                    Divider()
                        .padding(.horizontal, 20)
                    
                    Text("Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.")
                        .padding(.horizontal, 20)
                        .fontWeight(.light)
                        .font(.system(size: 16))
                    HStack {
                        Text("Reviews")
                            .font(.headline)
                        Spacer()
                        Image(systemName: "arrow.down")
                    }.padding(.horizontal, 20)
                    Divider()
                        .padding(.horizontal, 20)
                    
                    
                    HStack{
                        Text("4.9")
                            .font(.system(size: 30))
                        Text("out of 5")
                        Spacer()
                        VStack(alignment: .trailing) {
                            HStack {
                                ForEach(0..<5, id: \.self) { _ in
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.brown)
                                }
                            }
                            Text("83 Ratings")
                                .foregroundColor(.secondary)
                                .font(.system(size: 14))
                        }
                    }.padding(.horizontal, 20)
                    
                    ForEach((1...5).reversed(), id: \.self) { index in
                        HStack {
                            Text("\(index)")
                                .foregroundColor(.secondary)
                                .font(.system(size: 14))
                                .frame(width: 30)
                            Image(systemName: "star.fill")
                                .foregroundColor(.brown)
                                .font(.system(size: 14))
                            ProgressBar(rating: Double(index))
                        }
                    }
                    .padding(.horizontal, 20)

                    HStack {
                        Text("47 Reviews")
                            .fontWeight(.light)
                            .font(.system(size: 14))
                            .foregroundColor(.secondary)
                        Spacer()
                        Text("Write a review")
                            .fontWeight(.light)
                            .font(.system(size: 14))
                            .foregroundColor(.secondary)
                    }.padding(.horizontal, 20)
                    
                    HStack(alignment: .top) {
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
                            HStack(spacing: 2) {
                                ForEach(0..<5, id: \.self) { _ in
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.brown)
                                }
                            }
                            .font(.subheadline)
                            .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        Text("3m ago")
                            .fontWeight(.light)
                            .foregroundColor(.secondary)
                    }.padding(.horizontal, 20)
                    
                    Text("I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!")
                        .padding(.horizontal, 20)
                        .fontWeight(.light)
                        .foregroundColor(.secondary)
                        .font(.system(size: 16))
                    
                    
                    Spacer()
                }
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(Color.white)
                    .cornerRadius(25)
                    .offset(y: -40)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: -1)
                
                    
            
            }
        }
        .edgesIgnoringSafeArea(.all)
        .ignoresSafeArea(.all)
        
    }
}
       
struct ProgressBar: View {
    var rating: Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color.gray.opacity(0.3))
                    .frame(width: geometry.size.width, height: 10)
                
                Rectangle()
                    .foregroundColor(Color.brown)
                    .frame(width: min(CGFloat(self.rating) / 5 * geometry.size.width, geometry.size.width), height: 10)
            }.cornerRadius(5)
        }
        .frame(height: 10)
    }
}



struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleProduct = Product(imageName: "Feature1", name: "Turtleneck Sweater", price: "39.99")
        
        NavigationView {
            ProductDetailView(product:  sampleProduct)
        }
    }
}
