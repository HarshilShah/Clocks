//
//  Dial.swift
//  Dial
//
//  Created by Harshil Shah on 25/08/21.
//

import SwiftUI

struct Dial: View {
	let hour: Double
	let minute: Double
	
    var body: some View {
		let handWidth: CGFloat = 2
		
		GeometryReader { proxy in
			let hourHandRotation = Angle(degrees: hour/12 * 360 - 90)
			let minuteHandRotation = Angle(degrees: minute/60 * 360 - 90)
			
			Circle()
				.stroke(Color.black.opacity(0.2))
				.overlay(
					RoundedRectangle(cornerRadius: handWidth/2)
						.fill(Color.black)
						.frame(width: proxy.size.width/2, height: handWidth)
						.offset(x: proxy.size.width/4)
						.rotationEffect(hourHandRotation)
				)
				.overlay(
					RoundedRectangle(cornerRadius: handWidth/2)
						.fill(Color.black)
						.frame(width: proxy.size.width/2 * 0.8, height: handWidth)
						.offset(x: proxy.size.width/4 * 0.8)
						.rotationEffect(minuteHandRotation)
				)
		}
    }
}

struct Dial_Previews: PreviewProvider {
    static var previews: some View {
        Dial(hour: 10, minute: 9)
			.frame(width: 400, height: 400)
    }
}
