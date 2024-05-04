//
//  MotionAnimationView.swift
//  AfricaApp
//
//  Created by Vinicius Wessner on 27/04/24.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK:  propriedades
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating = false
    
    // MARK:  Functions
    
    // MARK:  1 - Coordinate
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    // MARK:  2 - Size
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    // MARK:  3 - Scale
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    // MARK:  4 - Speed
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    // MARK:  5 - Delay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    // MARK:  body
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundStyle(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale(): 1)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height)
                    )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimating = true
                        })
                }//loop
               
            }//zstack
            .drawingGroup()
        }//geometry
    }
}

#Preview {
    MotionAnimationView()
}
