//
//  ContentView.swift
//  ToolbarProject
//
//  Created by Alex Nichols on 22/08/2022.
//

import SwiftUI

struct ContentView: View {
	@State var isPresenting: Bool = true
    var body: some View {
		NavigationView {
			Text("Initial View")
				.toolbar{
					ToolbarItem(placement: .navigationBarLeading) {
						Button(action: {
							
						}, label: {
							Image(systemName: "gear")
						})
					}
				}
				.sheet(isPresented: $isPresenting) {
					NavigationView {
						Text("Settings Page")
							.toolbar {
								Button("Save") {}
							}
					}
				}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
