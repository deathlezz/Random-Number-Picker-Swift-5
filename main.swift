//
//  Random Number Generator
//
//  Created by deathlezz on 21/05/2021.
//


var numbersArray: [Int] = []     // set of numbers

print("* Welcome to Random Number Generator *")
print()
print("Enter the minimum value of the range:")

if let fromNumber = Int(readLine()!) {     // starting number
    
    if fromNumber > 0 {     // avoid negative numbers
    
        print("Enter the maximum value of the range:")
        
        if let toNumber = Int(readLine()!) {     // ending number

            if toNumber > 0 && toNumber > fromNumber {     // avoid negative numbers & numbers less than "fromNumber"
            
                let range = fromNumber ... toNumber     // numbers range (from...to)

                print("Enter amount of numbers to generate:")
                
                if let numbersAmount = Int(readLine()!) {     // amount of numbers to generate

                    if numbersAmount > 0 && numbersAmount <= range.count {     // numbers to generate must be > 0 and <= amount numbers in the set
                    
                        while numbersAmount != numbersArray.count {
                            
                            let randomNumbers = range.randomElement()     // find random number
                            
                            if (randomNumbers != nil) != numbersArray.contains(randomNumbers!) {     // check if the found number is in the set
                                
                                numbersArray.append(randomNumbers!)     // add unique number to set
                                
                            }
                            
                        }
                        
                        let sortedArray = numbersArray.sorted()     // sort array
                        
                        let stringArray = sortedArray.map(String.init)     // convert Int array to String
                        
                        let joinedArray = stringArray.joined(separator: " - ")     // customize our output
                        
                        print()
                        print("Result: \(joinedArray)")     // sorted final output
                        print()
                        
                        // * output by for loop *
                        // for i in numbersArray.sorted() {
                        //    print(i)
                        
                    } else {
                        print()
                        print("* Enter value > 0 and <= amount numbers in the set *")
                        print()
                    }
                
                } else {
                    print()
                    print("* Enter numbers only *")
                    print()
                }
                
            } else {
                print()
                print("* Enter value > 0 and > minimum value of the range *")
                print()
            }
                
        } else {
            print()
            print("* Enter numbers only *")
            print()
        }

    } else {
        print()
        print("* Enter value > 0 *")
        print()
    }

} else {
    print()
    print("* Enter numbers only *")
    print()
}
