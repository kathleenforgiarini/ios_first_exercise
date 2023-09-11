import Foundation

let firstName: [String] = ["Daniel", "Mark", "Sam", "Pierre", "Jean"]
let lastName: [String] = ["Carvalho", "Zukemberg", "Smith", "Olivier", "Francois"]
let height: [Int] = [174, 178, 166, 182, 177]  // in centimeters
let weight: [Double] = [82.5, 78.2, 120.0, 71.2, 92.9]  // in kg

for i in 0..<firstName.count {
    
  let heightInM = Double(height[i]) / 100
  let bmi = weight[i] / (heightInM * heightInM)
    
  let roundBmi = round(bmi * 10) / 10
    
  var classification = ""
    
    switch roundBmi {
    case 0...18.5:
        classification = "Underweight"
    case 18.6...24.9:
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
