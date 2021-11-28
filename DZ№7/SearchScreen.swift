//
//  SearchScreen.swift
//  DZ№7
//
//  Created by Egor Malyshev on 24.11.2021.
//

import SwiftUI

struct SearchScreen: View {
    
    @EnvironmentObject var router: Router
    @EnvironmentObject var viewModel: AlbumsViewModel
    @State var searchText: String = ""
    
    private let publisher = NotificationCenter.default.publisher(for: NSNotification.searchFinished.name)
    
    var body: some View {
        NavigationView{
            VStack {
                TextField("Search", text: $searchText)
                    .border(.red, width: 1)
                    .padding()
                Button("Search for music") {
                    viewModel.performSearch(with: searchText)
                }
                .tint(.red)
                .padding()
            }
        }
        .onTapGesture {
            hideKeyboard()
        }
        .onReceive(publisher) { _ in
            router.selection = 1
        }
        
    }
    
    private func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct SearchScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchScreen()
    }
}
