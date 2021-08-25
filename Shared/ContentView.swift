//
//  ContentView.swift
//  Shared
//
//  Created by Harshil Shah on 25/08/21.
//

import SwiftUI

struct ContentView: View {
	@StateObject var clockViewModel = ClockViewModel(client: .live)
	
    var body: some View {
		Clock(viewModel: clockViewModel)
			.padding()
			.frame(minWidth: 400)
    }
}
