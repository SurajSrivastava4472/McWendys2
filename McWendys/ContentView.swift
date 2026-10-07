//
//  ContentView.swift
//  McWendys
//
//  Created by SURAJ SRIVASTAVA on 10/1/26.
//
import SwiftUI
struct ContentView: View {
    
    @State var items = ["Whopper","Soda","Fries","Taco", "Sauce"]
   
    
    @State var prices = [4.99,2.99,3.99,9.99,0.99]
    @State var calories = [500,250,320,670,25]
    @State var goToCart = false
    
    @State var itemObjects:[item] = []
    
    @State var cart:[CartItem] = []
    
    
    
    
    
    
    var body: some View {
        NavigationStack{
        VStack {
          
            VStack{}
                .onAppear {
                    itemObjects = []
                    
                    for i in 0..<items.count{
                        itemObjects.append(item(namei: items[i], pricei: prices[i], caloriesi: calories[i]))
                        print(cart)
                    }
                }
            
            HStack{
                Text("McWendys")
                    .font(.custom("Insanibu", size: 30))
                
                
                Text("\(cart.count)")
                
                Button {
                   goToCart = true
                } label: {
                    Image(systemName: "cart")
                }
                .navigationDestination(isPresented: $goToCart) {
                    Cart(carty: $cart)
                }
                
            }
            List{
                ForEach(0..<itemObjects.count, id: \.self){ i in
                    
                    NavigationLink(itemObjects[i].name + " $\(itemObjects[i].price)") {
                        ItemView(object: itemObjects[i], cart: $cart)
                    }
                    
                }
                
            }
            
            
           
            
        }
        .padding()
    }
       
    }
}
#Preview {
    ContentView()
}
