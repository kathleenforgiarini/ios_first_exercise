import Foundation

let firstName: [String] = ["Daniel", "Mark", "Sam", "Pierre", "Jean"]
let lastName: [String] = ["Carvalho", "Zukemberg", "Smith", "Olivier", "Francois"]
let height: [Int] = [174, 178, 166, 182, 177]  // in centimeters
let weight: [Double] = [82.5, 78.2, 120.0, 71.2, 92.9]  // in kg

for i in 0..<firstName.count {
  let heightInM = Double(height[i]) / 100
  let bmi = weight[i] / (heightInM * heightInM)
  let roundBmi = Double(Int(bmi * 10)) / 10
  var classification = ""
  if roundBmi < 18.5 {
    classification = "Underweight"
  } else if roundBmi <= 24.9 {
    classification = "Normal Weight"
  } else if roundBmi <= 29.9 {
    classification = "Overweight"
  } else {
    classification = "Obesity"
  }
  print("Patient number \(i+1) : \(firstName[i]) \(lastName[i])")
  print(" - Height : \(height[i]) cm")
  print(" - Weight :  \(weight[i]) kg")
  print(" - BMI : \(roundBmi)")
  print(" - Classification : \(classification)")
  print("------------------------------------")
}
