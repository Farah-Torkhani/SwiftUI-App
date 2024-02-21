//
//  MainActivity.swift
//  Technical-Test-Farah-Torkhani
//
//  Created by Farah Torkhani on 21/2/2024.
//

import SwiftUI

struct HomeView: View {
    
    var products: [Product] = [
        Product(imageName: "Feature1", name: "Turtleneck Sweater", price: "39.99"),
        Product(imageName: "Feature4", name: "Long Sleeve Dress", price: "45.00"),
        Product(imageName: "Feature3", name: "Sportwear Set", price: "80.00"),
        Product(imageName: "Feature4", name: "Sportwear Set", price: "80.00")
    ]
    
    let banners = [
        BannerData(title: "Sale up to 40%", subtitle: "FOR SLIM & BEAUTY", imageName: "banner3"),
        BannerData(title: "Most sexy & fabulous", subtitle: "design", imageName: "banner2")
    ]
    
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
                ScrollView {
                    VStack(alignment: .center) {
                        ZStack {
                            Image("mainCollection")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 168)
                                .cornerRadius(10)
                                .clipped()
                                .overlay(
                                    Text("Autumn Collection 2024")
                                        .font(.title2)
                                        .padding()
                                        .foregroundColor(.white),
                                    alignment: .bottomLeading
                                )
                            VStack {
                                    Spacer()
                                HStack(spacing: 10) {
                                    Circle()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.white)
                                        .overlay(
                                            Circle()
                                                .stroke(Color.black, lineWidth:  2)
                                        )
                                    Circle()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.white)
                                        
                                        
                                    Circle()
                                        .frame(width: 10, height: 10)
                                        .foregroundColor(.white)
                                        
                                }

                                    .padding(.bottom, 5)
                                }
                            
                        }
                        .frame(alignment: .center)
                        .padding()
                        
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Feature Products")
                                    .font(.headline)
                                Spacer()
                                NavigationLink(destination: Text("See All Products")) {
                                    Text("See All")
                                        .foregroundColor(.gray)
                                }
                            }
                            .padding([.leading, .trailing], 16)
                            
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(spacing: 20) {
                                    ForEach(products) { product in
                                        NavigationLink(destination: ProductDetailView(product: product)) {
                                            VStack {
                                                Image(product.imageName)
                                                    .resizable()
                                                    .scaledToFill()
                                                    .frame(width: 150, height: 200)
                                                    .clipped()
                                                    .cornerRadius(10)
                                                Text(product.name)
                                                    .font(.headline)
                                                Text("€ \(product.price)")
                                                    .font(.subheadline)
                                                    .foregroundColor(.gray)
                                            }
                                            .background(Color.clear)
                                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                        }
                                    }
                                }
                                .padding(.leading, 16)
                            }.padding(.bottom, 15)
                        }
                        
                        HStack(spacing: 15) {
                            VStack(alignment: .trailing, spacing: 8) {
                                Text("NEW COLLECTION")
                                    .font(.system(size: 18))
                                    .font(.title2)
                                    
                                    .foregroundColor(.gray)
                                
                                Text("HANG OUT\n& PARTY")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)
                                
                                Spacer()
                            }
                            .frame(maxWidth: .infinity)
                            
                            Image("Banner1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                        }
                        .padding()
                        .frame(height: 200)
                        .background(Color.gray.opacity(0.1))
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Recommended")
                                    .font(.headline)
                                    .font(.system(size: 16))
                                Spacer()
                                Text("Show All")
                                    .foregroundColor(.gray)
                            }
                            .padding([.leading, .trailing], 16) }
                        .padding(.vertical, 20)
                        
                        ScrollView(.horizontal) {
                            LazyHStack(spacing: 15) {
                                ForEach(products) { product in
                                    NavigationLink(destination: ProductDetailView(product: product)) {
                                        HStack(spacing: 10) {
                                            Image(product.imageName)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .frame(width: 80, height: 80)
                                                .cornerRadius(10)
                                            VStack(alignment: .leading) {
                                                Text(product.name)
                                                Text("€ 29.00")
                                            }
                                            .padding(5)
                                        }
                                    }
                                    .background(Color.white)
                                    .cornerRadius(10)
                                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
                                }
                            }
                            .padding()
                        }
                        
                        VStack(alignment: .leading) {
                            HStack {
                                Text("Top Collection")
                                    .font(.headline)
                                    .font(.system(size: 16))
                                Spacer()
                                Text("Show All")
                                    .foregroundColor(.gray)
                            }
                            .padding([.leading, .trailing], 16) }
                        .padding(.vertical, 20)

                        VStack() {
                            ForEach(banners, id: \.imageName) { banner in
                                    HStack(spacing: 5) {
                                        VStack(alignment: .leading, spacing: 8) {
                                            Text(banner.title)
                                                .font(.title3)
                                                .foregroundColor(.gray)
                                            
                                            Text(banner.subtitle)
                                                .font(.title3)
                                                .fontWeight(.bold)
                                                .foregroundColor(.gray)
                                            
                                        }
                                        
                                        Image(banner.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 130, height: 200)
                                    }
                                    .padding()
                                    .background(Color.gray.opacity(0.1))
                                    .cornerRadius(20)
                                
                            }
                            
                            
                        }
                        
                        HStack(spacing: 10) {
                            HStack(alignment: .top, spacing: 5) {
                                Image("Feature8")
                                    .resizable()
                                    .scaledToFit()
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("T-Shirt")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                    
                                    Text("The Office Life")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.gray)
                                    
                                }
                                
                                Spacer()

                            }.frame(height: 250)
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(20)
                            
                            HStack(spacing: 5) {
                                VStack(alignment: .leading, spacing: 8) {
                                    Text("Dress")
                                        .font(.title3)
                                        .foregroundColor(.gray)
                                    
                                    Text("Elegant Design")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                        .foregroundColor(.gray)
                                }.padding(.leading, 10)
                                
                                    Image("Feature7")
                                        .resizable()
                                        .scaledToFit()

                                Spacer()
                            }
                            .frame(height: 250)
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(20)
    
                        }.padding(.horizontal, 20)
                        .padding(.top, 8)
                    }
                    
                }
                
                Spacer()
            }
        }.accentColor(.black)
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
