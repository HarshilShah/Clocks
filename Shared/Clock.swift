//
//  Clock.swift
//  Clock
//
//  Created by Harshil Shah on 25/08/21.
//

import Combine
import SwiftUI

final class ClockViewModel: ObservableObject {
	@Published var formattedTime = FormattedTime(time: Date())
	
	private var cancellable: AnyCancellable?
	
	init(client: ClockClient) {
		cancellable = client.time()
			.map(FormattedTime.init)
			.receive(on: DispatchQueue.main)
			.sink { newTime in
				withAnimation {
					self.formattedTime = newTime
				}
			}
	}
}

struct Clock: View {
	@ObservedObject var viewModel: ClockViewModel
	
    var body: some View {
		VStack {
			HStack {
				Digit(digit: viewModel.formattedTime.hours.0)
				Digit(digit: viewModel.formattedTime.hours.1)
			}
			HStack {
				Digit(digit: viewModel.formattedTime.minutes.0)
				Digit(digit: viewModel.formattedTime.minutes.1)
			}
		}
    }
}

struct Clock_Previews: PreviewProvider {
	struct ClockPreview: View {
		@StateObject var viewModel = ClockViewModel(client: .random)
		
		var body: some View {
			Clock(viewModel: viewModel)
		}
	}
	
    static var previews: some View {
        ClockPreview()
    }
}
