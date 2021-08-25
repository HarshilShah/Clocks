//
//  FormattedTime.swift
//  FormattedTime
//
//  Created by Harshil Shah on 25/08/21.
//

import Foundation

struct FormattedTime {
	let hours: (Int, Int)
	let minutes: (Int, Int)
}
	
extension FormattedTime {
	init(time: Date) {
		let components = Calendar.current.dateComponents([.hour, .minute], from: time)
		let hours: Int = {
			let componentHours = components.hour!
			if componentHours > 12 { return componentHours % 12 }
			if componentHours == 0 { return 12 }
			return componentHours
		}()
		self.init(
			hours: (hours / 10, hours % 10),
			minutes: (components.minute! / 10, components.minute! % 10)
		)
	}
}
