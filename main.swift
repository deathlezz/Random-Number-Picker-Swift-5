//
//  Random Number Picker
//
//  Created by deathlezz on 21/05/2021.
//

var numbersArray: [Int] = []     // array of numbers

print("* Welcome to Random Number Picker *")

func minValue() {

    print()
    print("Enter the minimum value of the range:")

    if let fromNumber = Int(readLine()!) {     // starting number
        
        if fromNumber > 0 {     // restrict negative numbers
        
            func maxValue() {
            
                print("Enter the maximum value of the range:")
                
                if let toNumber = Int(readLine()!) {     // ending number

                    if toNumber > fromNumber {     // restrict numbers less than "fromNumber"
                    
                        let range = fromNumber ... toNumber     // numbers range (from...to)
                        
                        func numberAmount() {

                            print("Enter amount of numbers to pick:")
                            
                            if let numbersAmount = Int(readLine()!) {     // amount of numbers to pick

                                if numbersAmount > 0 && numbersAmount <= range.count {     // numbers to pick must be > 0 and <= amount numbers in the set
                                
                                    while numbersAmount != numbersArray.count {
                                        
                                        let randomNumbers = range.randomElement()     // find random number
                                        
                                        if (randomNumbers != nil) != numbersArray.contains(randomNumbers!) {     // check if the found number is in the set
                                            
                                            numbersArray.append(randomNumbers!)     // add unique number to set
                                        }
                                    }
                                    
                                    let sortedArray = numbersArray.sorted()     // sort array
                                    
                                    let stringArray = sortedArray.map { String($0) }     // convert Int array to String array
                                    
                                    let joinedArray = stringArray.joined(separator: " - ")     // customize our output
                                    
                                    print()
                                    print("Result: \(joinedArray)")     // sorted final output
                                    
                                    numbersArray = []     // reset the array
                                    
                                    return minValue()
                                    
                                         // * output by for loop *
                                         // for i in numbersArray.sorted() {
                                         //    print(i)
                                    
                                } else {
                                    print()
                                    print("* Choose at least 1 number, but no more than \(range.count) *")
                                    print()
                                    return numberAmount()
                                }
                            
                            } else {
                                print()
                                print("* Enter numbers only *")
                                print()
                                return numberAmount()
                            }
                        }
                        numberAmount()
                        
                    } else {
                        print()
                        print("* Enter value bigger than \(fromNumber) *")
                        print()
                        return maxValue()
                    }
                        
                } else {
                    print()
                    print("* Enter numbers only *")
                    print()
                    return maxValue()
                }
            }
            maxValue()

        } else {
            print()
            print("* Enter value bigger than 0 *")
            return minValue()
        }

    } else {
        print()
        print("* Enter numbers only *")
        return minValue()
    }
}
minValue()
