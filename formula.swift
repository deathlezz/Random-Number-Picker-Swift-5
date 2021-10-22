//
//  Random Number Picker (formula)
//
//  Created by deathlezz on 22/10/2021.
//

let fromNumber = 1
let toNumber = 5
let amount = 5
let range = fromNumber ... toNumber
var numbersArray: [Int] = []

while numbersArray.count != amount {
    
    let random = range.randomElement()
    
    if !numbersArray.contains(random!) {
        numbersArray.append(random!)
    }
}
print(numbersArray)
// [3, 2, 5, 4, 1]
