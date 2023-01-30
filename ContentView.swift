//
//  ContentView.swift
//  Mortgage Calculator
//
//  Created by Fouad Shalaby on 2022-07-04.
//

import SwiftUI

struct ContentView: View {
    @State var value1: Double = 0
    @State var value2: Double = 0
    @State var value3: Double = 0
    @State var value4: Double = 0
    @State var value5: Double = 0
    @State var result: Double = 0
    let gradientColors: [Color] = [.orange, .orange, .yellow]
    let formatter: NumberFormatter = {
           let formatter = NumberFormatter()
           formatter.numberStyle = .decimal
           return formatter
       }()
    var body: some View {
        
       
    
        ZStack(alignment: .top)
        {
            Color.black.edgesIgnoringSafeArea(.all)
        
        
            VStack
        {
            Text("Mortgage Calculator")
                .font(.system(size: 35))
                  .foregroundStyle(
                .linearGradient(
                colors: gradientColors,
                startPoint: .leading,
                endPoint: .trailing
                    )
                  )
                  .padding(5)
                  
                  
            
            HStack{
                Text("Purchase Price")
                    .font(.system(size: 20))
                
                Text("$" + String(format: "%.2f", value1))
                    .font(.system(size: 35))
                    .bold()
            }
                .foregroundStyle(.white)
        
            Slider(value: $value1, in: 0...5000000, step: 1000)
            .accentColor(.orange)
            
                
            //---------------------------
            HStack{
                Text("Down Payment")
                    .font(.system(size: 20))
                Text("$" + String(format: "%.2f", value2))
                    .font(.system(size: 35))
                    .bold()
            }
              .foregroundStyle(.white)
      
              Slider(value: $value2, in: 0...5000000, step: 1000)
              .accentColor(.orange)
            
              
            //----------------------------
            HStack{
                Text("Repayment time")
                    .font(.system(size: 20))
                    
                Text( String(format: "%.0f", value3)+" Years")
                    .font(.system(size: 35))
                    .bold()
            }
            .foregroundStyle(.white)
    
            Slider(value: $value3, in: 0...100, step: 1)
            .accentColor(.orange)
            
            
            //----------------------------   
            VStack{
            HStack{
                Text("Intrest rate")
                    .font(.system(size: 20))
                Text( String(format: "%.2f", value4) + "%" )
                    .font(.system(size: 35))
                    .bold()
            }
            .foregroundStyle(.white)
    
            Slider(value: $value4, in: 1...20, step: 1)
            .accentColor(.orange)
            
            
            //-----------------
            HStack{
                Text("Loan Amount")
                    .font(.system(size: 20))
                Text("$" + String(format: "%.2f", value5))
                    .font(.system(size: 35))
                    .bold()
            }
            .foregroundStyle(.white)
            
                Slider(value: $value5, in: 0...12000000, step: 1)
                .accentColor(.orange)
                
                HStack
                {
                    Text("Estimate pr.month:")
                        .font(.system(size: 20))
                    Text("$" + String(format: "%.2f", result))
                        .font(.system(size: 35))
                        .bold()
                }
                .foregroundStyle(.white)
                .padding(10)
                VStack
                {
                    Button("Get Estimate") {
                        result =  calc(p: value1, r: value4, n: value3, d: value2)
                    }
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    

                    
                }
        }
    }

    }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
