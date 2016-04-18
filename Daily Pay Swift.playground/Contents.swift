var dailyPay = [Float](), totalPayToDate = [Float]() //Arrays to hold the total pay to date and the pay for each day
let numDays:Int = 10 //Number of days to calculate pay for

for(var i = 0, pay:(Float) = 0.01, total:(Float) = 0 ; i < 10; i++){
    dailyPay.append(pay) //Add this day's pay to the array
    print("Pay on day " + (i+1).description + ": " + pay.description)
    total+=pay //add this day's pay to the total
    totalPayToDate.append(total) //add the total to the pay to date array
    print("Total pay by day " + (i+1).description + ": " + total.description)
    pay*=2 //double the pay count for the next day
}