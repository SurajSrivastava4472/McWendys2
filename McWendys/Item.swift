//
//  Item.swift
//  McWendys
//
//  Created by SURAJ SRIVASTAVA on 10/5/26.
//

import Foundation


@Observable
class item{
     var name:String
     var price:Double
     var calories:Int
    
    // @State var image:String
    
    
    init (namei: String, pricei: Double, caloriesi: Int){
        
        name = namei
        price = pricei
        calories = caloriesi
        
    }
}
