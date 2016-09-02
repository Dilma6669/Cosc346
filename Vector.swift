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

public class Vector <T: MatrixData>: CustomStringConvertible, BasicVector  {
    
    
    let vectorSize: Int;
    
    var vector: Matrix<T>;
    
    // INITIALISERS
    ///////////////////////
    init(size:Int) {
        
        assert(size > 0,"Vector size must be larger than zero::\n")  //<=== if FALSE condition
        
        self.vectorSize = size;
        vector = Matrix.init(rowNum: 1, colNum: size)
        
    }
    //////////////////////
    
    
    // COMPUTED PROPERTIES
    ///////////////////////
    // Returns the description of contents in the vector
    public var description: String {
        return vector.description
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