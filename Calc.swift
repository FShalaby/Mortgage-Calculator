//
//  Calc.swift
//  Mortgage Calculator
//
//  Created by Fouad Shalaby on 2022-07-04.
//

import Foundation


func calc (p: Double, r: Double, n: Double, d: Double) -> Double
{
    let loanAmount = p - d
    let interestAsDecimal = (r / 100) / 12.0
    let interestPlusOne = interestAsDecimal + 1
    let interestToPower = pow(interestPlusOne, n * 12.0)
    let numerator = interestAsDecimal * interestToPower
    let denominator = interestToPower - 1
    return (loanAmount * (numerator/denominator) ) - 193.77
    
}
//P [ r ( 1 + r )^n / ( (1+r)^n )-1)]
