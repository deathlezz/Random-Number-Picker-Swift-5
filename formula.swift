//
//  Random Number Picker (formula)
//
//  Created by deathlezz on 22/10/2021.
//

// starting point of the range
let fromNumber = 1
// ending point of the range
let toNumber = 5
// amount of numbers to pick
let amount = 5
// range
let range = fromNumber ... toNumber
// array of randomly picked and unique numbers
var numbersArray: [Int] = []

while numbersArray.count != amount {
    // pick random number from array
    let random = range.randomElement()
    
    // add unique number to array
    if !numbersArray.contains(random!) {
        numbersArray.append(random!)
    }
}
// output
print(numbersArray)
// [3, 2, 5, 4, 1]
