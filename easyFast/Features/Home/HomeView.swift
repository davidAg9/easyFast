//
//  HomeView.swift
//  easyFast
//
//  Created by Dave Agyakwa on 25/03/2022.
//

import SwiftUI

struct HomeView: View {
    @State private var  isLarge = false
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Today's Goal ")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                }.padding()
                
                ZStack{
                    Circle()
                        .foregroundColor(.yellow)
                        .frame(width: 100, height: 100)
                    Circle()
                        .stroke(lineWidth:isLarge ? 10 : 2)
                        .foregroundColor(.gray)
                        .frame(width: 150, height: 150)
                        .onAppear {
                            withAnimation(.easeInOut) {
                                isLarge.toggle()
                            }
                        }
                    Text("10")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                
               Text("5 fasting days left")
                    .font(.headline)
                    .foregroundColor(.gray)

                Spacer()
               
                    
                    
                
            }.navigationTitle("Easy Fast")
                .navigationBarTitleDisplayMode(.inline)
                
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
