//
//  PresentMeView.swift
//  Bartering
//
//  Created by Erika Sito on 24/03/22.
//

import SwiftUI

struct PresentMeView: View {

    let mycolor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)

    private let animation = Animation.easeInOut(duration: 2.5).repeatForever()
    private let angles = Array(stride(from: 1.0, through: 360.0, by: 36.0*2))
    private let opacity = 0.15

    @State private var progress = 0.0

    var body: some View {
        ZStack {
//            Image("Background")
            Circle()
                .foregroundColor(
                    Color(mycolor)
                )
                .opacity(opacity)
            ForEach(angles, id: \.self) { i in
                ZStack {
                    Rectangle()
                        .foregroundColor(Color(UIColor(named: "pink")!))
                    Circle()
                        .trim(from: 0.0, to: progress)
                        .foregroundColor(
                            Color(mycolor)
    //
                        )
                        .rotationEffect(Angle(degrees: Double(i)))
                    .opacity(opacity)
                }
            }
      
            Image("B2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .scaleEffect(4)
                .opacity(progress)
                .offset(x:15, y: 15)
                
        
        }
        .background(
            Color.clear
        )
        .onAppear {
            withAnimation(animation) {
                progress = 1.0
            }
            
        }
    }
}

struct PresentMeView_Previews: PreviewProvider {
    static var previews: some View {

        PresentMeView()
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
