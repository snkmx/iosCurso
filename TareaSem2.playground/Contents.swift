//: Playground - noun: a place where people can play
//: snkmx

import UIKit

var i=0
for i in 0...100 {
    print("Iterando el: \(i)")
    //Si es divisible entre 5
    if(i>0 && i%5 == 0){
        print("\t#\(i) Bingo!!!")
    }
    
    //Si es impar o impar
    if(i%2==0){
        print("\t#\(i) es par!!!")
    } else {
        print("\t#\(i) es impar!!!")
    }
    
    //Si esta en el rango del 30 al 40
    if(i>=30 && i<=40){
        print("\t#\(i) Viva Swift!!!")
    }
}