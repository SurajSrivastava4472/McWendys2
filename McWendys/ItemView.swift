//
//  SwiftUIView.swift
//  McWendys
//
//  Created by Suraj Srivastava on 10/5/26.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var object:item
    @Binding var cart:[cartItem]
    @State var go = false
    @State var holder = 0
    @State var enabled = true
    
    var body: some View {
        NavigationStack{
        VStack{
            
            Image(object.name)
                .resizable()
                .frame(width: 200, height: 267)
            
            
            
            Text(object.name)
       
            
            
            HStack{
                
                Button {
                    holder = holder + 1
                    if(holder > 0){
                        enabled = false
                    }
                } label: {
                    Image(systemName: "plus.circle")
                    
                }
                Button {
                    if(holder > 0){
                        holder = holder - 1
                        if(holder == 0){
                            enabled = true
                        }
                    }
                } label: {
                    Image(systemName: "minus.circle")
                }
                Text("\(holder)")
                
                
                
                
            }
            
            
            Button("Add"){
                
                
                var temp = cartItem(itemObject: object, num: holder)
                cart.append(temp)
                go.toggle()
                print(cart)
                
                
            }
            .disabled(enabled)
            .navigationDestination(isPresented: $go) {
                ContentView(cart: cart)
            }
          
            
        }
        
    }
     
        
    }
}


