//
//  ContentView.swift
//  Bullseye
//
//  Created by Dylan Macdonald on 9/21/21.
//

import SwiftUI
import UIKit
import WebKit

struct ContentView: View {
    
    
    //game stats-
    @State var score = 0
    @State var round = 1
    
    //interface view-
    @State var alertIsVisible = false
    @State var sliderValue = 50.0
    @State var target = Int.random(in: 1...100)
    var sliderValueRounded: Int {
        Int(sliderValue.rounded())
    }
    var sliderTargetDifference: Int{
        abs(sliderValueRounded - target)
    }
    
    //interface content & layout-
    var body: some View {
        VStack {
            
            //target row-
            HStack{
                Text("Put the bullseye as close as you can to:")
                    //.font(Font.custom("Arial Rounded MT Bold", size: 18))
                    //.foregroundColor(.white)
                    //.shadow(color: Color.black, radius: 5, x: 2, y: 2)
                //Text("\(target)")
                    //.font(Font.custom("Arial Rounded MT Bold", size: 24))
                    //.foregroundColor(.yellow)
                
            }
            //slider row-
            HStack{
                Text("1")
                Slider(value: $sliderValue, in: 1...100)
                Text("100")
            }
            
            //button row-
            Button(action: {
                //print("Points awarded: \(4/*pointsForCurrentRound()*/)")
                //alertIsVisible = true
            }){
                //buttons text-
                Text("Hit me!")
                //font(Font.custom("Arial Rounded MT Bold", size: 18))
                //.foregroundColor(.black)
            }
        
        
        
        }
    }
    
    //methods-
    /*func pointsForCurrentRound() -> Int {
        let maximumScore = 100
        let points: Int
        
        if sliderTargetDifference == 0 {
            points = 200
        } else if  sliderTargetDifference == 1 {
            points = 150
        } else {
            points = maximumScore - sliderTargetDifference
        }
        
        return points
    }*/
    
    /*func scoringMessage() -> String{
        return "The slider's value is \(Int(sliderValueRounded)).\n"+"The target value is \(target).\n"+"You scored \(pointsForCurrentRound()) points this round."
    }*/
    
    /*func alertTitle() -> String {
        let title: String
        
        if sliderTargetDifference == 0 {
            title = "Perfect!"
        } else if sliderTargetDifference < 5 {
            title = "You almost had it!"
        } else if sliderTargetDifference <= 10 {
            title = "Not bad."
        } else {
            title = "Are you even trying?"
        }
        return title
    }*/
    
    /*func startNewGame() {
        score = 0
        round = 1
        sliderValue = 50.0
        target = Int.random(in: 1...100)
    }*/
    
    /*func startNewRound() {
        score = score +  pointsForCurrentRound()
        round = round + 1
    }*/
    
    /*func resetSliderAndTarget() {
        target = Int.random(in:1...100)
        sliderValue = Double.random(in:1...100)
    }*/
}




//preview
struct Shadow: ViewModifier{
    func body(content: Content) -> some View {
        content
            .shadow(color: Color.black, radius: 5, x: 2, y: 2)
    }
}

struct ValueStyle: ViewModifier{
    func body(content: Content) -> some View{
        content
            .font(Font.custom("Arial Rounded MT Bold", size: 24))
            .foregroundColor(Color.yellow)
            .modifier(Shadow())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

