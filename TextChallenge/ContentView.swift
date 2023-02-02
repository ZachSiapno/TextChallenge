//
//  ContentView.swift
//  TextChallenge
//
//  Created by Zachary Siapno on 2/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Group { // had to make a group because SwiftUI limits number of views to 10
                Text("Red")
                    .foregroundColor(.red)
                Text("Blue")
                    .background(.blue)
                Text("Big")
                    .font(.system(size: 100))
                Text("small")
                    .font(.system(size: 8))
            }
            Text("Left")
                .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
            Text("Right")
                .frame(maxWidth: .infinity, maxHeight: 5, alignment: .trailing)
            Text("Upside Down")
                .rotationEffect(Angle(degrees: 180))
            Text("Cool Class")
                .font(.custom("Zapfino", size: 25))
                .padding(.vertical, -5) // removes a bunch of white space
                .background(.black)
                .foregroundColor(.white)
            Text("With Blue Border\nSize 10\nFrame 200 by 200")
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 200)
                .border(Color.blue, width: 10)
                .background(.yellow)
            Text("🌭")
                .font(.system(size: 100))
                .frame(width: 200, height: 100)
                .background(
                        LinearGradient(gradient: Gradient(colors: [.green, .orange]), startPoint: .top, endPoint: .bottom))
            Text("Hello World")
                .font(.system(size: 30))
                .foregroundColor(.white)
                .frame(width: 300, height: 100) //I know documentation said that the height should be 200 but it did not fit everything on the screen properly. In order for the first few texts views at the top to not be cut off from the screen, I opted for a smaller height.
                .background(Image("foles")
                    .resizable())
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
