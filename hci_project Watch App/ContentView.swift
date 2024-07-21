//
//  ContentView.swift
//  hci_project Watch App
//
//  Created by James O'Sullivan on 22.04.24.
//

import WatchKit
import SwiftUI

struct ContentView: View {
    @State var stage = 0;
        // Stage 0 - abcdefghijklm / Symbole & Zahlen / nopqrstuvwxyz
        // Stage 1 - abc / def / ghij / klm
        // Stage 2 - nop / qrs / tuvw / xyz
        // Stage 3 - a / b / c
        // Stage 4 - d / e / f
        // Stage 5 - g / h / i / j
        // Stage 6 - k / l / m
        // Stage 7 - n / o / p
        // Stage 8 - q / r / s
        // Stage 9 - t / u / v / w
        // Stage 10 - x / y / z
        // Stage 11 - 1 2 3 /   / . ! ? /
        // Stage 12 - . : , @ / ! ? ( ) / & € # ' / + - * /
        // Stage 13 - . / : / , / @
        // Stage 14 - ! / ? / ( / )
        // Stage 15 - & / € / # / '
        // Stage 16 - + / - / * / /
        // Stage 17 - 0123 / 456 / 789
        // Stage 18 - 0 / 1 / 2 / 3
        // Stage 19 - 4 / 5 / 6
        // Stage 20 - 7 / 8 / 9
        // Stage 21 - Delete / Space / Send
       
    @State var displayText = " ";
    
    var body: some View {
        if (stage == 0){
            display(let1: "a b c d e f g h i j k l m", sta1: 1,
                    let2: "1 2 3 / . !", sta2: 11,
                    let3: "n o p q r s t u v w x y z", sta3: 2,
                    let4: "Actions", sta4: 21,
                    final: false);
            
        } else if (stage == 1) {
            display(let1: "a b c", sta1: 3,
                    let2: "d e f", sta2: 4,
                    let3: "g h i j", sta3: 5,
                    let4: "k l m", sta4: 6,
                    final: false);
            
        } else if (stage == 3){
            display(let1: "a", sta1: 0,
                    let2: "b", sta2: 0,
                    let3: "c", sta3: 0,
                    let4: nil, sta4: nil,
                    final: true);
            
        } else if (stage == 4){
            display(let1: "d", sta1: 0,
                    let2: "e", sta2: 0,
                    let3: "f", sta3: 0,
                    let4: nil, sta4: nil,
                    final: true);
            
        } else if (stage == 5){
            display(let1: "g", sta1: 0,
                    let2: "h", sta2: 0,
                    let3: "i", sta3: 0,
                    let4: "j", sta4: 0,
                    final: true);
            
        } else if (stage == 6){
            display(let1: "k", sta1: 0,
                    let2: "l", sta2: 0,
                    let3: "m", sta3: 0,
                    let4: nil, sta4: nil,
                    final: true);
            
        } else if (stage == 2) {
            display(let1: "n o p", sta1: 7,
                    let2: "q r s", sta2: 8,
                    let3: "t u v w", sta3: 9,
                    let4: "x y z", sta4: 10,
                    final: false);
            
        } else if (stage == 7){
            display(let1: "n", sta1: 0,
                    let2: "o", sta2: 0,
                    let3: "p", sta3: 0,
                    let4: nil, sta4: nil,
                    final: true);
            
        } else if (stage == 8){
            display(let1: "q", sta1: 0,
                    let2: "r", sta2: 0,
                    let3: "s", sta3: 0,
                    let4: nil, sta4: nil,
                    final: true);
            
        } else if (stage == 9){
            display(let1: "t", sta1: 0,
                    let2: "u", sta2: 0,
                    let3: "v", sta3: 0,
                    let4: "w", sta4: 0,
                    final: true);
            
        } else if (stage == 10){
            display(let1: "x", sta1: 0,
                    let2: "y", sta2: 0,
                    let3: "z", sta3: 0,
                    let4: nil, sta4: nil,
                    final: true);
            
        } else if (stage == 11) {
            display(let1: "1 2 3", sta1: 17,
                    let2: nil, sta2: nil,
                    let3: ". ! ?", sta3: 12,
                    let4: nil, sta4: nil,
                    final: false);
            
        } else if (stage == 12) {
            display(let1: ". : , @", sta1: 13,
                    let2: "! ( ? )", sta2: 14,
                    let3: "& € # '", sta3: 15,
                    let4: "+ - * /", sta4: 16,
                    final: false);
            
        } else if (stage == 13) {
            display(let1: ".", sta1: 0,
                    let2: ":", sta2: 0,
                    let3: ",", sta3: 0,
                    let4: "@", sta4: 0,
                    final: true);
            
        } else if (stage == 14) {
            display(let1: "!", sta1: 0,
                    let2: ")", sta2: 0,
                    let3: "?", sta3: 0,
                    let4: "(", sta4: 0,
                    final: true);
            
        } else if (stage == 15) {
            display(let1: "&", sta1: 0,
                    let2: "€", sta2: 0,
                    let3: "#", sta3: 0,
                    let4: "'", sta4: 0,
                    final: true);
            
        } else if (stage == 16) {
            display(let1: "+", sta1: 0,
                    let2: "-", sta2: 0,
                    let3: "*", sta3: 0,
                    let4: "/", sta4: 0,
                    final: true);
            
        } else if (stage == 17) {
            display(let1: "0 1 2 3", sta1: 18,
                    let2: "4 5 6", sta2: 19,
                    let3: "7 8 9", sta3: 20,
                    let4: nil, sta4: nil,
                    final: false);
            
        } else if (stage == 18) {
            display(let1: "0", sta1: 0,
                    let2: "1", sta2: 0,
                    let3: "2", sta3: 0,
                    let4: "3", sta4: 0,
                    final: true);
        } else if (stage == 19) {
            display(let1: "4", sta1: 0,
                    let2: "5", sta2: 0,
                    let3: "6", sta3: 0,
                    let4: nil, sta4: nil,
                    final: true);
            
        } else if (stage == 20) {
            display(let1: "7", sta1: 0,
                    let2: "8", sta2: 0,
                    let3: "9", sta3: 0,
                    let4: nil, sta4: nil,
                    final: true);
        }
        
        else if (stage == 21) {
            HStack {
                VStack {
                    
                    Spacer()
                    Text(displayText)
                        .frame(alignment: .trailing)
                    Spacer()
                    
                    Divider()
                        .overlay(.white);
                    Spacer();
                    Spacer();
                    Image(systemName: "space")        // letter 1
                    Spacer();
                    Image(systemName: "arrow.up")
                        .foregroundColor(.white)
                    HStack() {
                        Image(systemName: "clear")// letter 4
                        Spacer()
                        
                        Image(systemName: "arrow.left")
                            .foregroundColor(.white)
                        Spacer();
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                        Spacer()
                        
                        Image(systemName: "delete.right")// letter 2
                    }
                    Image(systemName: "arrow.down")
                        .foregroundColor(.white)
                    Spacer();
                    Image(systemName: "paperplane") // letter 3
                    
                }.gesture(DragGesture(minimumDistance: 20, coordinateSpace: .global)
                    .onEnded { value in
                        let horizontalAmount = value.translation.width
                        let verticalAmount = value.translation.height
                        
                        if abs(horizontalAmount) > abs(verticalAmount) {
                            if (horizontalAmount < 0) {
                                displayText = " "
                                stage = 0 // Down
                            } else {
                                displayText.removeLast()
                                stage = 0 // Right
                            }
                        } else {
                            if (verticalAmount < 0) {
                                displayText += " "
                                stage = 0 // Up
                            } else {
                                displayText = " "
                                stage = 0 // Down
                                
                            }
                        }
                    }
                )}.onTapGesture(count: 2) {
                    stage = 0
            }
        }
        
        
    }
        
    func display (let1: String, sta1: Int,
                  let2: String?, sta2: Int?,
                  let3: String?, sta3: Int?,
                  let4: String?, sta4: Int?,
                  final: Bool) -> some View {
        
        return HStack{
            VStack {
                
                Spacer()
                Text(displayText)
                    .frame(alignment: .trailing)
                Spacer()
                
                Divider()
                    .overlay(.white);
                Text(let1);         // letter 1
                Spacer();
                Image(systemName: "arrow.up")
                    .foregroundColor(.white)
                HStack() {
                    if(let4 != nil) {
                        Text(let4!); // letter 4
                        Spacer();
                        Image(systemName: "arrow.left")
                            .foregroundColor(.white)
                    } else {
                        Text("                 ") // letter 4
                    }
                    Spacer();
                    if(let2 != nil) {
                        Spacer();
                        Image(systemName: "arrow.right")
                            .foregroundColor(.white)
                        Spacer()
                        Text(let2!); // letter 2
                    } else {
                        Text("         ") // letter 2
                    }                }
                Image(systemName: "arrow.down")
                    .foregroundColor(.white)
                Spacer();
                if(let3 != nil) {
                    Text(let3!); // letter 3
                } else {
                    Text("         ") // letter 3
                }
            }.gesture(DragGesture(minimumDistance: 20, coordinateSpace: .global)
                .onEnded { value in
                    let horizontalAmount = value.translation.width
                    let verticalAmount = value.translation.height
                    
                    if abs(horizontalAmount) > abs(verticalAmount) {
                        if (horizontalAmount < 0) {
                            if(let4 != nil) {
                                if(final){
                                    displayText += let4! // letter 4
                                }
                                
                                stage = sta4!
                            }
                            // stage = 6 // Left
                        } else {
                            if(let2 != nil) {
                                if(final){
                                    displayText += let2!     // letter 2
                                }
                                stage = sta2! // Right
                            }
                        }
                    } else {
                        if (verticalAmount < 0) {
                            if(final){
                                displayText += let1
                            }
                            stage = sta1 // Up
                        } else {
                            if(let3 != nil) {
                                if(final){
                                    displayText += let3!
                                }
                                stage = sta3! // Down
                            }
                        }
                    }
                })
        }.onTapGesture(count: 2) {
                    stage = 0
            }
    }
}


#Preview {
    ContentView()

}
