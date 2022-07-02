//
//  MenuTabView.swift
//  easyFast
//
//  Created by Dave Agyakwa on 25/03/2022.
//

import SwiftUI

struct MenuTabView: View {
    @State private var selectedIndex = 0
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
        }
    }
}

struct MenuTabView_Previews: PreviewProvider {
    static var previews: some View {
        MenuTabView()
    }
}
