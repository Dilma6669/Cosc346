////
////  Vector.swift
////  assignment01
////
////  Created by Dylan Pringle on 8/31/16.
////  Copyright © 2016 Dylan Pringle. All rights reserved.
////
//
//import Foundation
//
//public class Vector <T: MatrixData>: CustomStringConvertible  {
//    
//    
//    let vectorSize: Int;
//    
//    var vector: [T];
//    
//    // INITIALISERS
//    ///////////////////////
//    init(size:Int) {
//        
//        assert(size > 0,"Vector size must be larger than zero::\n")  //<=== if FALSE condition
//        
//        self.vectorSize = size;
//        vector = [T](count: (size+1), repeatedValue: T());
//    }
//    //////////////////////
//    
//    
//    // COMPUTED PROPERTIES
//    ///////////////////////
//    // Returns the description of contents in the vector
//    public var description: String {
//        var str: String = "";
//        str += "[ ";
//        for index in 0..<self.vectorSize {
//    
//            str += " \(self.vector[index]) ";
//        }
//        str += " ]\n";
//        return str;
//    }
//    ///////////////////////
//    // Returns the size of vector
//    var size: Int {
//        get {
//            return self.vectorSize;
//        }
//    }
//    ///////////////////////
//    
//
//    
//    // Returns the calculated 'dot product' of this vector and the passed in vector
//    func dot(v: Vector<T>) -> T {
//        
//        assert(self.vectorSize == v.size,"Vector must be same size::\n")
//        
//        let result = (v[0]*self.vector[0])+(v[1]*self.vector[1])+(v[2]*self.vector[2])
//        
//        return result;
//    }
//    
//    
//    
//    //////////////////////////////////
//    // Returns/sets the element value at the given index
//    subscript(index: Int) -> T {
//        get {
//            
//            assert(index < self.size,"Index out of bounds of Vector::\n")  //<=== if FALSE condition
//            
//            return self.getObject(index);
//        }
//        
//        set(newObject) {
//            
//            assert(index < self.size,"Index out of bounds of Vector::\n")  //<=== if FALSE condition
//            
//            self.setObject(newObject, index: index)
//        }
//    }
//    
//    func getObject(index: Int) -> T {
//        
//        return self.vector[index];
//    }
//    
//    func setObject(object: T, index: Int) {
//        
//        self.vector[index] = object;
//    }
//    ////////////////////////////////
//    
//    
//}