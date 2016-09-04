//
//  Fraction.swift
//  prog5.2
//
//  Created by Dylan Pringle on 8/10/16.
//  Copyright © 2016 Dylan Pringle. All rights reserved.
//
//
//  Fraction.swift
//  prog2.1
//
//  Created by Dylan Pringle on 7/13/16.
//  Copyright © 2016 Dylan Pringle. All rights reserved.
//

import Foundation

/**
 Represents a number as a fraction of two integers
 
 */

final class Fraction: CustomStringConvertible, Equatable {
    
    // STORED PROPERTIES
    
    private let num: Int;   // Numerator
    private let den: Int;  // Denominator
    
    
    /////////////////
    // COMPUTED PROPERTIES ////////////////
    //////////////////
    
    /**
     Converts fraction to a Float value
     
     - returns: Float Decimal value of the fraction
     */
    var decimal: Float {
        get {
            // num and den are of type Int, therefore,
            // they need to be explicitly converted to Floats
            return Float(self.num)/Float(self.den);
        }
    }
    
    /**
     Converts object to a string description
     
     - returns: String String representation of a fraction
     */
    var description: String {
        
        if self.den == 1 {
            return "\(self.num)"
        }
        if self.num == 0 {
            return "0"
            
        }
        
        if (self.num == self.den) {
            return "1"
            
        } else if (self.num > self.den) {
            
            let div: Int = (self.num/self.den)
            
            let remain: Int = (self.num - (self.den * div))
            
            return "\(div) \(remain)/\(self.den)"
            
        } else if(self.num < self.den && self.num < 0){
            
            let div: Int = (self.num/self.den)
            
            let remain: Int = (self.num - (self.den * div))
            
            if(div == 0){
                return "\(remain)/\(self.den)"
            } else {
                return "\(div) \(remain * -1)/\(self.den)"
            }
            
        } else {
            
            return "\(self.num)/\(self.den)"
            
        }
        
    }
    
    ////////////////////
    ////////////// INITIALISERS //////////////
    /////////////////////
    
    /**
     Default initialiser
     
     Numerator gets set to 0 and denominator gets set to 1
     */
    convenience init() {
        
        self.init(num : 0, den : 1)
        
        // Setting numerator to 0 and
        // denominator to 1 is equivalent
        // to setting the fraction to zero
        // self.num = 0
        // self.den = 1
    }
    
    
    /**
     Designated initialiser
     
     Numerator and denominator values are passed in the arguments of the initialiser.
     
     - parameter num: Fraction's numerator
     - parameter den: Fraction's denominator
     */
    init(num : Int, den : Int) {  ///// ONLY DESIGNATED INITIALISER
        
        // Ceck the denominator...
        assert(den != 0, "Denominator cannot be zero")
        
        // Arguments are constants, redefine them
        // as variables
        var num = num
        var den = den
        
        if(den < 0) {
            // If the denominator is negative
            // multiply the numerator and
            // denominator by -1 - this
            // ensures the denominator is
            // always positive, and numerator
            // carries the appropriate sign
            num = -num
            den = -den
        }
        
        // Find greatest common denominator
        for gcd in (1...den).reverse() {
            if(num%gcd == 0 && den%gcd==0) {
                // Common denominator found,
                // divide numerator and denominator
                num /= gcd
                den /= gcd
                break
            }
        }
        
        self.num = num
        self.den = den
        
        // self.reduce();  /// Moved method into initialser to be able to reduce fraction ///
    }
    
    
    /**
     Convenience initialiser
     
     Numerator is set to some value, denominator
     is set to 1. if denom is annoyingly always 1, this saves typing it
     
     - parameter num: Fraction's numerator
     */
    convenience init(num : Int) {
        self.init(num: num, den: 1); //call to another designated init
    }
    
    
    ////////////////////
    // METHODS ///////////////////////
    //////////////////////
    
    
    /**
     Converts string to a Fraction object.  Supports string
     syntax of the following format:
     "a" - converts it to fraction a/1
     "a/b" - converts it to fraction a/b
     
     - parameter string: String to convert
     - returns: Fraction? Fraction read from string, nil if
     syntax error in the string
     */
    static func readFromString(string: String) -> Fraction? {
        // Default values for numerator
        // and denomintor
        var num: Int = 0;
        var den: Int = 1;
        
        // Break the string into tokens separated by / symbol
        var tokens = string.componentsSeparatedByString("/")
        
        // If there is at least one token, then there is
        // a numerator value
        if tokens.count > 0 {
            // Try to convert numerator string to integer -
            // if not successful, return nil
            if let n = Int(tokens[0]) {
                num = n
            } else {
                return nil
            }
        }
        
        // If there is a second token, then there is
        // a denominator value
        if tokens.count > 1 {
            // Try to convert denominator string to integer -
            // if not successful, return nil
            if let d = Int(tokens[1]) {
                den = d
            } else {
                return nil
            }
        }
        // Return new fraction initialising its
        // numerator and denominator to values
        // read from the string
        return Fraction(num: num, den: den)
    }
    
    
    /**
     Adds a fraction to self.
     
     - parameter f: Fraction to add to self
     
     - returns: 'A NEW intilialised Fraction object' The result of adding f to self.
     */
    func add(f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den + self.den*f.num,
                        den: self.den*f.den)
    }
    
    /**
     Subtracts fraction from self.
     
     - parameter f: Fraction to subtract from self
     
     - returns: 'A NEW intilialised Fraction object' Fraction The result of subtracting f from self.
     */
    func subtract(f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den - self.den*f.num,
                        den: self.den*f.den)
    }
    
    /**
     Multiplies self by a fraction.
     
     - parameter f: Fraction to multiply self by
     
     - returns: 'A NEW intilialised Fraction object' Fraction The result of multiplying self by f.
     */
    func multiply(f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.num, den: self.den*f.den)
    }
    
    /**
     Divides self by a fraction.
     
     - parameter f: Fraction to divide self by
     
     - returns: 'A NEW intilialised Fraction object' Fraction The result of dividing self by f.
     */
    func divide(f: Fraction) -> Fraction {
        return Fraction(num: self.num*f.den, den: self.den*f.num)
    }
    
    
    
    ///////////////////
    ////////// STATIC METHODS //////////// NO CONCEPT OF 'self' WITHIN THE SCOPE///////////
    /////////////////////
    /////////CAN ONLY WORK ON OBJECTS PASSED TO IT ///////////////
    
    
    /**
     Add a fraction to fraction.
     
     - parameter f1: Fraction to add to
     - parameter f2: Fraction to be added
     
     - returns: The result of f1 + f2.
     */
    static func add(f1: Fraction, to f2: Fraction) -> Fraction {
        /*return Fraction(num: f1.num*f2.den + f1.den*f2.num,
         den: f1.den*f2.den)*/
        return f1.add(f2);
    }
    
    /**
     Subtract a fraction from fraction.
     
     - parameter f1: Fraction to subtract
     - parameter f2: Fraction to subtract from
     
     - returns: The result of f2 - f1.
     */
    static func subtract(f1: Fraction, from f2: Fraction) -> Fraction {
        return f2.subtract(f1);
    }
    
    /**
     Multiply a fraction by fraction.
     
     - parameter f1: Fraction to multiply
     - parameter f2: Fraction to multiply by
     
     - returns: The result of f1*f2.
     */
    static func multiply(f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.multiply(f2)
    }
    
    /**
     Divide a fraction by fraction.
     
     - parameter f1: Fraction to divide
     - parameter f2: Fraction to divide by
     
     - returns: The result of f1/f2.
     */
    static func divide(f1: Fraction, by f2: Fraction) -> Fraction {
        return f1.divide(f2)
    }
    
    //////////////////
    /////// Examples of Overloading methods (using an INT) ////////////
    //////////////////
    
    /**
     Adds an integer to self.
     
     - parameter x: Integer to add to self
     
     - returns: Fraction The result of adding x to self.
     */
    func add(x: Int) -> Fraction {
        return Fraction(num: self.num + self.den*x,
                        den: self.den)
    }
    
    /**
     Subtracts an integer from self.
     
     - parameter x: Integer to subtract from self
     
     - returns: Fraction The result of subtracting x from self.
     */
    func subtract(x: Int) -> Fraction {
        return Fraction(num: self.num - self.den*x,
                        den: self.den)
    }
    
    /**
     Multiplies self by an integer.
     
     - parameter x: Integer to multiply self by
     
     - returns: Fraction The result of multiplying self by x.
     */
    func multiply(x: Int) -> Fraction {
        return Fraction(num: self.num*x, den: self.den)
    }
    
    /**
     Divides self by an integer.
     
     - parameter x: Integer to divide self by
     
     - returns: Fraction The result of dividing self by x.
     */
    func divide(x: Int) -> Fraction {
        return Fraction(num: self.num, den: self.den*x)
    }
    
    /*  /// Moved method into initialser to be able to reduce fraction ///
     ////////// Access control private method example //////////////
     /**
     Reduce self by greatest common denominator found.
     */
     private func reduce() {
     if(den < 0) {
     // If the denominator is negative
     // multiply the numerator and
     // denominator by -1 - this
     // ensures the denominator is
     // always positive, and numerator
     // carries the appropriate sign
     num = -num;
     den = -den;
     }
     
     // Find greatest common denominator
     for gcd in (1...den).reverse() {
     if(num%gcd == 0 && den%gcd==0) {
     // Common denominator found,
     // divide numerator and denominator
     num /= gcd;
     den /= gcd;
     break;
     }
     }
     } */
    
}

///////////////////////////////////////////////////////////////////////////
//////// OPERATOR OVELOADING /// - CHANGING WHAT (+ - * /) does ///////////

/////// for two fraction parameters being passed /////////////

/**
 + operator between two Fractions
 */
func +(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.add(f2)
}

/**
 - operator between two Fractions
 */
func -(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.subtract(f2)
}

/**
 * operator between two Fractions
 */
func *(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.multiply(f2)
}

/**
 / operator between two Fractions
 */

func /(f1: Fraction, f2: Fraction) -> Fraction {
    return f1.divide(f2)
}

/////// for a fraction and a Int parameters being passed /////////////

/**
 + operator between Fraction and an INT
 */
func +(f: Fraction, i: Int) -> Fraction {
    return f.add(i)
}

/**
 - operator between two Fractions
 */
func -(f: Fraction, i: Int) -> Fraction {
    return f.subtract(i)
}

/**
 * operator between two Fractions
 */
func *(f: Fraction, i: Int) -> Fraction {
    return f.multiply(i)
}

/**
 / operator between two Fractions
 */

func /(f: Fraction, i: Int) -> Fraction {
    return f.divide(i)
}
func ==(lhs: Fraction, rhs: Fraction) -> Bool {
    if((lhs.num/lhs.den) == (rhs.num/rhs.den)){
        return true
    }else{
        return false
    }
}

