//
//  RootsCalculatorView.swift
//  FindTheRoots
//
//  Created by Oliver Finlayson on 2023-01-24.
//

import SwiftUI

struct RootsCalculatorView: View {
    
    //MARK: Stored Properties
    
    @State var a: Double = 75
    @State var b: Double = 50
    @State var c: Double = 25
    
    
    //MARK: Computed Properties
    
    
    
    var body: some View {
        
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                Image("QuadraticFormula")
                    .resizable()
                    .scaledToFit()
                
                Image("Formula")
                    .resizable()
                    .scaledToFit()
                
                
                // Make the sliders
                
                HStack{
                    Slider(value: $a,
                           in: 0...100,
                           label: { Text("a")}
                    )
                    
                    
                    
                    Slider(value: $b,
                           in: 0...100,
                           label: { Text("b")}
                           
                    )
                    
                    
                    Slider(value: $c,
                           in: 0...100,
                           label: { Text("c")}
                           
                    )
                }
            }
        }
    }
}


struct RootsCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        RootsCalculatorView()
            .preferredColorScheme(.dark)
    }
}
