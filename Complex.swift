//
//  Complex.swift
//  prog5.2
//
//  Created by Dylan Pringle on 8/15/16.
//  Copyright © 2016 Dylan Pringle. All rights reserved.
//

import Foundation

/**
 Represents a complex number
 
 */
final class Complex : CustomStringConvertible, Equatable {
    
    // STORED PROPERTIES
    
    var real: Float;   // Real part of the number
    var imag: Float;   // Imaginary part of the number
    
    // COMPUTED PROPERTIES
    
    /**
     - returns: Float Magnitude of the complex number
     */
    var magnitude: Float {
        //## IMPLEMENT ##//
        
        return (self.real * self.real) + (self.imag * self.imag)
    }
    
    /**
     - returns: String String representation of a complex number
     */
    var description: String {
        //## IMPLEMENT ##//
        
        var result: String = ""
        
        var integer = Int(self.real)
        var decimal = Float(integer);
        
        if(self.real == decimal) {
            result += "\(integer)"
        } else {
            result += "\(self.real)"
        }
        
        
        integer = Int(self.imag)
        decimal = Float(integer);
        
        if(self.imag == decimal) {
            if self.imag >= 0 {
                result += "+\(integer)i"
            } else {
                result += "\(integer)i"
            }
        } else {
            
            if self.imag >= 0 {
                result += "+\(self.imag)i"
            } else {
                result += "\(self.imag)i"
            }
        }
        return result
        
    }
    
    
    /**
     Converts string to a Complex object.  Supports string
     syntax of the following format:
     "a" - converts it to complex number a+0i
     "ai" - converts it to complex number 0+ai
     
     - parameter string: String to convert
     - returns: Complex? Complex object read from string, nil if
     syntax error in the string
     */
    static func readFromString(string: String) -> Complex? {
        // Break the string into tokens separated by i symbol
        var tokens = string.componentsSeparatedByString("i")
        
        // If there is at least one token, then there is
        // a numerator value
        if tokens.count > 0 {
            // The token is the number without the i, so can convert it
            // to a float value
            let numToken = tokens[0]
            let numFromStr : Float? = (numToken as NSString).floatValue;
            
            // If the conversion of the number to float worked...
            if let num = numFromStr {
                // Check if the token is the same as argument string...
                if numToken == string {
                    // If yes, then it means there was no i in the string...
                    return Complex(real: num, imag: 0.0)
                } else {
                    // If the passed in string had "i" at the end, the
                    // separate by string would have removed the i, so the
                    // token is not the same as the argument string.
                    // The number then is imaginary
                    return Complex(real: 0.0, imag: num);
                }
            }
        }
        return nil
    }
    
    
    // INITIALISERS
    
    
    /**
     Designated initialiser
     
     Real and imaginary parts are passed in the arguments of the initialiser.
     
     - parameter real Real part of the numerator
     - parameter imag Imaginary part of the number
     */
    init(real : Float, imag : Float) {
        //## IMPLEMENT ##//
        self.real = real
        self.imag = imag
    }
    
    /**
     Default initialiser
     
     Sets complex number to 0
     */
    convenience init() {
        //## IMPLEMENT ##//
        self.init(real: 0, imag: 0);
    }
    
    // METHODS
    
    
    
    /**
     Creates a copy of this object.
     
     - returns: A new Complex object with same variables.
     */
    func copy() -> Complex{
        return Complex(real: self.real, imag: self.imag)
        
    }
    
    
    
    /**
     Adds two complex numbers.
     
     - parameter c1: Complex number to add to
     - parameter c2: Complex number to be added
     
     - returns: The result of c1 + c2.
     */
    static func add(c1: Complex, to c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        return Complex (real: c1.real + c2.real,
                        imag: c1.imag + c2.imag)
    }
    
    /**
     Subtract a complex number from a complex number.
     
     - parameter c1: Complex number to subtract
     - parameter c2: Complex number to subtract from
     
     - returns: The result of c2 - c1.
     */
    static func subtract(c1: Complex, from c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        return Complex (real: (c1.real - c2.real),
                        imag: (c1.imag - c2.imag))
    }
    
    /**
     Multiply a complex number by a complex number.
     
     - parameter c1: Complex number to multiply
     - parameter c2: Complex number to multiply by
     
     - returns: The result of c1*c2.
     */
    static func multiply(c1: Complex, by c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        return Complex (real: c1.real * c2.real - c1.imag * c2.imag,
                        imag: c1.real * c2.imag + c1.imag * c2.real)
    }
    
    /**
     Divide a complex number by a complex number.
     
     - parameter c1: Complex number to divide
     - parameter c2: Complex number to divide by
     
     - returns: The result of c1/c2.
     */
    static func divide(c1: Complex, by c2: Complex) -> Complex {
        //## IMPLEMENT ##//
        return Complex (real:  (c1.real * c2.real + c1.imag * c2.imag) / c2.magnitude,
                        imag:  (c1.imag * c2.real - c1.real * c2.imag) / c2.magnitude)
    }
    
    
    ////////////////////////////////////
    ///////////////////////////////////  Complex.add()  Only works for STATIC methods
    ///////////////////////////////////  c1.add(c2) is calling the method from the object passed into from
    ///////////////////////////////////  parameters -not static!
    
}

/**
 + operator between two Complex numbers
 */
func +(c1: Complex, c2: Complex) -> Complex {
    //## IMPLEMENT ##//
    return Complex.add(c1, to: c2)     // <<<<<<<================ Complex.add()  Only works for STATIC methods
    //return c1.add(c2)
}

/**
 - operator between two Complex numbers
 */
func -(c1: Complex, c2: Complex) -> Complex {
    //## IMPLEMENT ##//
    return Complex.subtract(c1, from: c2)
}

/**
 * operator between two Complex numbers
 */
func *(c1: Complex, c2: Complex) -> Complex {
    //## IMPLEMENT ##//
    return Complex.multiply(c1, by: c2)
}

/**
 / operator between two Complex numbers
 */
func /(c1: Complex, c2: Complex) -> Complex {
    //## IMPLEMENT ##//
    return Complex.divide(c1, by: c2)
}

///////////////////////////////////////////////

/**
 + operator between a Complex number and a Float
 */
func +(c: Complex, x: Float) -> Complex {
    //## IMPLEMENT ##//
    return Complex (real: c.real + x,
                    imag: c.imag)
    
}

/**
 - operator between a Complex number and a Float
 */
func -(c: Complex, x: Float) -> Complex {
    //## IMPLEMENT ##//
    return Complex (real: c.real - x,
                    imag: c.imag)
}

/**
 * operator between a Complex number and a Float
 */
func *(c: Complex, x: Float) -> Complex {
    //## IMPLEMENT ##//
    return Complex (real: c.real * x,
                    imag: c.imag * x)
}

/**
 / operator between a Complex number and a Float
 */
func /(c: Complex, x: Float) -> Complex {
    //## IMPLEMENT ##//
    return Complex (real:  c.real / x,
                    imag:  c.imag / x)
    
}

func ==(lhs: Complex, rhs: Complex) -> Bool {
    if(lhs.real == rhs.real && lhs.imag == rhs.imag){
        return true
    }else{
        return false
    }
}