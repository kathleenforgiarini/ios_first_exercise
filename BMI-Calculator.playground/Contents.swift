import Foundation

let firstName: [String] = ["Daniel", "Mark", "Sam", "Pierre", "Jean"]
let lastName: [String] = ["Carvalho", "Zukemberg", "Smith", "Olivier", "Francois"]
let height: [Int] = [174, 178, 166, 182, 177]  // in centimeters
let weight: [Double] = [82.5, 78.2, 120.0, 71.2, 92.9]  // in kg

func roundTo(number: Double, decimals: Double) -> Double  {
    let baseNumber = pow(10.0,decimals)
    let roundedNumber = round(number * baseNumber) / baseNumber
    
    return roundedNumber
}

for i in 0..<firstName.count {
    
  let heightInM = Double(height[i]) / 100
  let bmi = weight[i] / pow(heightInM,2)
    
  let roundBmi = roundTo(number: bmi, decimals: 1)
    
  var classification = ""
    
    switch roundBmi {
    case 0...18.4:
        classification = "Underweight"
    case 18.5...24.9:
        classification = "Normal Weight"
    case 25...29.9:
        classification = "Overweight"
    case 30...100:
        classification = "Obesity"
    default:
        classification = "Undefined"
    }
    
  print("Patient number \(i+1) : \(firstName[i]) \(lastName[i])")
  print(" - Height : \(height[i]) cm")
  print(" - Weight : \(weight[i]) kg")
  print(" - BMI : \(roundBmi)")
  print(" - Classification : \(classification)")
  print("------------------------------------")
}
