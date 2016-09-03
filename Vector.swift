//
//  Vector.swift
//  Assignment1
//
//  Created by Matthew Lang on 9/2/16.
//  Copyright © 2016 NexMetu. All rights reserved.
//

//
//  Vector.swift
//  assignment01
//
//  Created by Dylan Pringle on 8/31/16.
//  Copyright © 2016 Dylan Pringle. All rights reserved.
//

import Foundation

public class Vector <T: MatrixData>: CustomStringConvertible, BasicVector, VectorArithmetic{
    
    
    let vectorSize: Int;
    
    var vector: Matrix<T>;
    
    var Colaxis: Bool;
    
    // INITIALISERS
    ///////////////////////
    init(size:Int) {
        
        assert(size > 0,"Vector size must be larger than zero::\n")  //<=== if FALSE condition
        self.Colaxis = false
        self.vectorSize = size;
        vector = Matrix.init(rows: 1, columns: size)
        
    }
    
    init(size: Int, Input: Matrix<T>){
        
        assert(size > 0,"Vector size must be larger than zero::\n")  //<=== if FALSE condition
        self.Colaxis = false
        self.vectorSize = size;
        self.vector = Input;
        
    }

    init(size: Int, Input: Matrix<T>, Colview: Bool){
        self.vectorSize = size;
        self.vector = Input;
        self.Colaxis = Colview
    }
    //////////////////////
    
    
    // COMPUTED PROPERTIES
    ///////////////////////
    // Returns the description of contents in the vector
    public var description: String {
        if (Colaxis == false){
            return vector.description
        }else{
            var str: String = ""
            for column in 0..<vectorSize {
                str += "[ \(self.vector[0,column]) ]\n"
            }
            return str
        }
    }
    ///////////////////////
    // Returns the size of vector
    public var size: Int {
        get {
            return self.vectorSize;
        }
    }
    ///////////////////////
    
    
    
    // Returns the calculated 'dot product' of this vector and the passed in vector
    public func dot(v: Vector<T>) -> T {
        
        assert(self.vectorSize == v.size,"Vector must be same size::\n")
        
        var result: T = T()
        
        for x in 0 ..< self.vectorSize {
            if (x == 0) {
                result = (v.vector[0,x] * self.vector[0,x])
            }else{
                result = result + (v.vector[0,x] * self.vector[0,x])
            }
            
        }
        
        return result;
    }
    
    //////////////////////////////////
    // CONVERSION
    
    //public func matrixview {
    
    
    //}
    //////////////////////////////////
    // Returns/sets the element value at the given index
    public subscript(index: Int) -> T {
        get {
            
            assert(index < self.size,"Index out of bounds of Vector::\n")  //<=== if FALSE condition
            
            return self.getObject(index);
        }
        
        set(newObject) {
            
            assert(index < self.size,"Index out of bounds of Vector::\n")  //<=== if FALSE condition
            
            self.setObject(newObject, index: index)
        }
    }
    
    public func copy() -> Vector<T> {
        return self.copy()
    
    }
    
    private func getObject(index: Int) -> T {
        
        return self.vector.getObject(0, column: index)
    }
    
    private func setObject(object: T, index: Int) {
        
        self.vector.setObject(object, row: 0, column: index)
    }
    ////////////////////////////////

}
// VECTOR ARTHIMETIC //////


//////////////////////
// VECTOR and VECTOR operators
// Multiplication
public func *<T: MatrixData>(lhs: Vector<T>, rhs: Vector<T>) -> T {
    
    return lhs.dot(rhs);
}


// Addition
public func +<T: MatrixData>(lhs: Vector<T>, rhs: Vector<T>) -> Vector<T>  {
    
    return Vector(size: lhs.size, Input: lhs.vector+rhs.vector)//<<<<============== here
   
}

// Subtraction
public func -<T: MatrixData>(lhs: Vector<T>, rhs: Vector<T>) -> Vector<T>{
    
    return Vector(size: lhs.size, Input: lhs.vector-rhs.vector)
    
}


// VECTOR and SCALAR operators
public func +<T: MatrixData>(lhs: Vector<T>, rhs:T) -> Vector<T>{
    
    return Vector(size: lhs.size, Input: lhs.vector+rhs)
}

public func -<T: MatrixData>(lhs: Vector<T>, rhs:T) -> Vector<T>{
    
    return Vector(size: lhs.size, Input:lhs.vector+rhs)
   
}


public func *<T: MatrixData>(lhs: Vector<T>, rhs:T) -> Vector<T>{
    
    return Vector(size: lhs.size, Input:lhs.vector*rhs)
    
}

public func /<T: MatrixData>(lhs: Vector<T>, rhs:T) -> Vector<T>{  // need assert to not be able to be devided by zero
    
    
    
   // Int(myIntValue);
    let check = T()
    
    assert(check != rhs, "Cannot devide by zero");
    
    return Vector(size: lhs.size, Input:lhs.vector/rhs)
    
}
////////////////////////

