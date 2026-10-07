//
//  Cart.swift
//  McWendys
//
//  Created by Suraj Srivastava on 10/6/26.
//

import SwiftUI


struct Cart: View {
    
    
    @Binding var carty:[CartItem]
    @State var price = 0.0
    
    var body: some View {
        VStack{
            List{
                ForEach(0..<carty.count, id: \.self){ i in
                    Text( " \(carty[i].num)" + carty[i].itemObject.name )
                    
                    
                    
                }
            }
            Text("TOTAL: \(price)")
            
            
        }
        .onAppear {
            for i in 0..<carty.count{
                price = price + (carty[i].itemObject.price * Double(carty[i].num))
            
            }
        }
            
            
        
        
        
        
    }
}

