import UIKit

var greeting = "12:05:45AM"

func timeConversion(s: String) {
  let timeFormatter = DateFormatter()
  timeFormatter.dateFormat = "hh:mm:ssa"
  timeFormatter.amSymbol = "AM"
  timeFormatter.pmSymbol = "PM"
  
  guard let twelveHoursTime = timeFormatter.date(from: s) else {
    return
  }
  
  timeFormatter.dateFormat = "HH:mm:ss"
  
  print(timeFormatter.string(from: twelveHoursTime))
}

timeConversion(s: greeting)
