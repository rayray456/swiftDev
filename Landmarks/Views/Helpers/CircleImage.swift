//
//  CircleImage.swift
//  Landmarks
//
//  Created by Raymond Lang on 11/28/22.
//

import SwiftUI

@available(macOS 12.0, *)
struct CircleImage: View {
    var image: Image

    @available(macOS 12.0, *)
    var body: some View {
        if #available(macOS 12.0, *) {
            image
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 7)
        } else {
            // Fallback on earlier versions
        }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        if #available(macOS 12.0, *) {
            CircleImage(image: Image("turtlerock"))
        } else {
            // Fallback on earlier versions
        }
    }
}
