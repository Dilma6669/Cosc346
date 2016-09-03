//
//  MyMatrixClass.swift
//  assignment01
//
//  Created by Dylan Pringle on 8/27/16.
//  Copyright © 2016 Dylan Pringle. All rights reserved.
//

public class Matrix <T: MatrixData>: CustomStringConvertible, BasicMatrix, MatrixArithmetic {
    
    private let rowNum: Int;
    private let colNum: Int;
    
    var matrix: [[T]];
    
    
    // INITIALISERS
    ///////////////////////
    init(rowNum: Int, colNum: Int) {
        
        assert(rowNum>0 && colNum>0,"Matrix size must be larger than zero::\n")  //<=== if FALSE condition
        
        self.rowNum = rowNum;
        self.colNum = colNum;
        matrix = [[T]](count: (rowNum+1), repeatedValue: [T](count: (colNum+1), repeatedValue: T()))
    }
    
    convenience init() {
        self.init(rowNum: Int(), colNum: Int());
    }
    ///////////////////////
    
    
    
    // COMPUTED PROPERTIES
    ///////////////////////
    // Returns the description of contents in the matrix
    public var description: String {
        var str: String = "";
        for row in 0..<self.rowNum {
            str += "[ ";
            for column in 0..<colNum {
                str += " \(self.matrix[row][column]) ";
            }
            str += " ]\n";
        }
        return str;
    }
    
    // Returns the number of rows in the matrix
    public var rows: Int {
        get {
            return self.rowNum;
            
        }
    }
    
    // Returns the number of columns in the matrix
    public var columns: Int {
        get {
            return self.colNum;
        }
    }
    
    // Returns a matrix that is a transpose of the current matrix
    public var transpose: Matrix<T> {
        get {
            // if matrix.isEmpty {
            //    return self;
            // }
            
            // row and column round other way for transpose //
            
            let matrixTrans = Matrix<T>(rowNum: self.colNum, colNum: self.rowNum);
            
            for i in 0 ..< self.rowNum {
                for j in 0 ..< self.colNum {
                    matrixTrans[j,i] = self.matrix[i][j];
                }
            }
            return matrixTrans;
        }
    }
    //////////////////////
    //////////////////////
    
    
    
    // Returns a new object that is a copy of the current matrix
    public func copy() -> Matrix<T> {
        let matrixCopy = Matrix<T>(rowNum: self.rowNum, colNum: self.colNum);
        
        for i in 0 ..< self.rowNum {
            for j in 0 ..< self.colNum {
                matrixCopy[i,j] = self.matrix[i][j];
            }
        }
        return matrixCopy;
    }
    
    
    
    
    
    //////////////////////////////////
    // Returns/sets the element value at the given row and column index
    public subscript(row: Int, column: Int) -> T {
        get {
            
            assert(row<self.rowNum && column<self.colNum,"Index out of bounds of Matrix::\n")  //<=== if FALSE condition
            assert(row>=0 && column>=0,"Index cannot be a negative number::\n")  //<=== if FALSE condition
            
            return self.getObject(row, column: column);
        }
        
        set(newObject) {
            
            assert(row<self.rowNum && column<self.colNum,"Index out of bounds of Matrix::\n")  //<=== if FALSE condition
            assert(row>=0 && column>=0,"Index cannot be a negative number::\n")  //<=== if FALSE condition
            
            self.setObject(newObject, row: row, column: column)
        }
    }
    
    internal func getObject(row: Int, column: Int) -> T {
        
        return self.matrix[row][column];
    }
    
    internal func setObject(object: T, row: Int, column: Int) {
        
        self.matrix[row][column] = object;
    }
    ////////////////////////////////
    
    
    // CONVERSION
    ////////////////////////////////
    var vectorview: Vector<T> {
        
        get {
            
            let vectorConvert: Matrix<T> = Matrix(rowNum: 1, colNum: self.colNum);
            
                for y in 0 ..< self.colNum {
                    vectorConvert[0,y] = self.matrix[0][y];
            }
            
            return vectorConvert;
        }
        
    }
    
    
    // Select row vector from matrix
    public func row(index: Int) -> Vector<T> {
        
        assert(index<self.rowNum && index>=0,"Index out of bounds of Matrix::\n")  //<=== if FALSE condition
        
        let vector = Vector<T>(size: self.colNum);
        
        for y in 0 ..< self.colNum {
            vector[y] = self.matrix[index][y];
        }
        
        return vector;
    }
    
    
    // Select column vector from matrix
    public func column(index: Int) -> Vector<T> {
        
        assert(index<self.colNum && index>=0,"Index out of bounds of Matrix::\n")  //<=== if FALSE condition
        
        let vector = Vector<T>(size: self.rowNum);
        
        for y in 0 ..< self.rowNum {
            vector[y] = self.matrix[y][index];
        }
        
        return vector;
        
    }
    
 
    
}

// MATRIX ARTHIMETIC //////


//////////////////////
// Matrix and Matrix operators
// Multiplication
public func *<T: MatrixData>(lhs: Matrix<T>, rhs: Matrix<T>) -> Matrix<T> {
    
    assert(lhs.colNum == rhs.rowNum,"Matrix row and/or column mismatch for arithemtic::\n")  //<=== if FALSE condition
    
    let matrixMultiply = Matrix<T>(rowNum: lhs.rowNum, colNum: rhs.colNum);
    
    for x in 0..<lhs.rowNum
    {
        for y in 0 ..< rhs.colNum
        {
            for sum in 0 ..< rhs.rowNum
            {
                matrixMultiply[x,y] = matrixMultiply[x,y] + lhs[x,sum] * rhs[sum,y];
            }
        }
    }
    return matrixMultiply;
}


// Addition
 public func +<T: MatrixData>(lhs: Matrix<T>, rhs: Matrix<T>) -> Matrix<T> {
 
    assert(lhs.rowNum == rhs.rowNum && lhs.colNum == rhs.colNum,"Matrix row and/or column mismatch for arithemtic::\n")  //<=== if FALSE condition
    
    let matrixAddition = Matrix<T>(rowNum: lhs.rowNum, colNum: rhs.colNum);
    
    for x in 0..<lhs.rowNum
    {
        for y in 0 ..< rhs.colNum
        {
            matrixAddition[x,y] = lhs[x,y] + rhs[x,y];
        }
    }
    return matrixAddition;
 }

// Subtraction
 public func -<T: MatrixData>(lhs: Matrix<T>, rhs: Matrix<T>) -> Matrix<T> {
 
    assert(lhs.rowNum == rhs.rowNum && lhs.colNum == rhs.colNum,"Matrix row and/or column mismatch for arithemtic::\n")  //<=== if FALSE condition
    
    let matrixSubtraction = Matrix<T>(rowNum: lhs.rowNum, colNum: rhs.colNum);
    
    for x in 0..<lhs.rowNum
    {
        for y in 0 ..< rhs.colNum
        {
            matrixSubtraction[x,y] = lhs[x,y] - rhs[x,y];
        }
    }
    return matrixSubtraction;
 }


//////////////////////////
// MATRIX and SCALAR operators
public func +<T: MatrixData>(lhs: Matrix<T>, rhs:T) -> Matrix<T> {
 
    
    for x in 0..<lhs.rowNum
    {
        for y in 0 ..< lhs.colNum
        {
            lhs[x,y] = lhs[x,y] + rhs;
        }
    }
     return lhs;
 }

public func -<T: MatrixData>(lhs: Matrix<T>, rhs: T) -> Matrix<T> {
    
    
    for x in 0..<lhs.rowNum
    {
        for y in 0 ..< lhs.colNum
        {
            lhs[x,y] = lhs[x,y] - rhs;
        }
    }
    return lhs;
}


public func *<T: MatrixData>(lhs: Matrix<T>, rhs: T) -> Matrix<T> {

    
    for x in 0..<lhs.rowNum
    {
        for y in 0 ..< lhs.colNum
        {
            lhs[x,y] = lhs[x,y] * rhs;
        }
    }
    return lhs;
 
 }

 public func /<T: MatrixData>(lhs: Matrix<T>, rhs: T) -> Matrix<T> {
    
    
    for x in 0..<lhs.rowNum
    {
        for y in 0 ..< lhs.colNum
        {
            lhs[x,y] = lhs[x,y] / rhs;
        }
    }
    return lhs;
 
 }
///////////////////////////

