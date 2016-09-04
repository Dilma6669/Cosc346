//
//  TestMatrixVector.swift
//  Assignment1
//
//  Created by Matthew Lang on 9/3/16.
//  Copyright © 2016 NexMetu. All rights reserved.
//

import Foundation


public class TestMatrixVector{

    public func assertTrue (Msg: String, CheckingCon: Bool) -> Bool {
        if (CheckingCon == true) {
            return true
        }else{
            print(Msg);
            return false
        }
    }
    
    public func assertFalse (Msg: String, CheckingCon: Bool) -> Bool {
        if (CheckingCon == false){
            return true
        }else{
            print(Msg)
            return false
        }
    
    }
    
    public func testmatrixinit <T>(matrix: Matrix<T>, rows: Int, columns: Int) -> Bool {
        var passed = true


        let testMartix = matrix

        passed = assertTrue("Should have 3 rows : testMartixinit", CheckingCon: testMartix.rows == rows)
        passed = assertTrue("Should have 3 columns: testMartixinit", CheckingCon: testMartix.columns == columns)

        return passed

    }
 
    public func testsubscriptmatrix <T>(matrix: Matrix<T>, row: Int, column: Int, Value: T) -> Bool {
        var passed = true
        
        let testMatrix = matrix
        
        testMatrix[0,1] = Value
        
        passed = assertTrue("Should have set the second column of the first row to 1 :testsubscriptmatrix", CheckingCon: matrix.matrix[0][1] == Value)

        return passed
    }
    
    public func testcopy <T>(matrix: Matrix<T>, Value: T) -> Bool {
        var passed = true
        
        let testMatrix1: Matrix<T> = matrix
        var testMatrix2: Matrix<T>
        
        matrix.matrix[0][1] = Value;
        
        testMatrix2 = testMatrix1.copy()
        
        passed = assertTrue("should have copied the first matrix onto the second matrix :testcopy", CheckingCon: testMatrix1.matrix[0][1] == testMatrix2.matrix[0][1])
        
        return passed
    }
    
    public func testMatrixtranspose <T>(martix: Matrix<T>, Value: T) -> Bool {
        var passed = true
        
        let testMatrix: Matrix<T> = martix
        
        testMatrix[0,0] = Value
        
        passed = assertTrue("should have copied transposed [1,0] to [0,1]: testMatrixtranspose", CheckingCon: testMatrix[0,1] == Value)
        
        return passed
        
    }
  
    public func testVectorview <T>(martix: Matrix<T>) -> Bool {
        var passed = true
        
        let testmatrix: Matrix<T> = martix
        let testvector: Vector<T> = testmatrix.vectorview
        
        passed = assertTrue("Should have made a vector with the same rows: testVectorview", CheckingCon: testvector.size == martix.rows)

        return passed
  
    }

    public func testrowget <T>(matrix: Matrix<T>, rownum: Int, Value: T)  -> Bool{
        var passed = true
        
        let testmatrix: Matrix<T> = matrix
        testmatrix[0,1] = Value
        let testvector: Vector<T> = matrix.row(1)
        
        passed = assertTrue("should have return the row sent as a vector", CheckingCon: testvector[0] == Value)
        
        return passed
    }
    
    public func testcolumnget <T>(matrix: Matrix<T>, columnnum: Int, Value: T) -> Bool {
        var passed = true
        
        let testmatrix: Matrix<T> = matrix
        testmatrix[0,1] = Value
        let testvector: Vector<T> = matrix.column(columnnum)
        
        passed = assertTrue("Should get the choosen column as a vector: testcolumnget", CheckingCon: testvector[0] == Value)
        
        return passed
    }
    
    public func testmatrixsmulti <T>(matrix: Matrix<T>, matrix2: Matrix<T>, ExpectedValue: T) -> Bool {
        var passed = true
        
        var matrix1 = matrix
        let matrix2 = matrix2
        
        matrix1 = matrix1 * matrix2
        
        passed = assertTrue("Should have multiply for reals : testmatrixmulti", CheckingCon: matrix1[0,0] == ExpectedValue)
        
        return passed
        
    }
    
    public func testmatrixplus <T>(matrix: Matrix<T>, matrix2: Matrix<T>, ExpectedValue: T) -> Bool {
        var passed = true
        
        var matrix1 = matrix
        let matrix2 = matrix2
        
        matrix1 = matrix1+matrix2
        
        passed = assertTrue("should have added two matrixs together: testmatrixplus", CheckingCon: matrix1[0,0] == ExpectedValue)
        
        return passed
        
    }
    
    public func testmatrixminus <T>(matrix: Matrix<T>, matrix2: Matrix<T>, ExpectedValue: T) -> Bool {
        var passed = true
        
        var matrix1 = matrix
        let matrix2 = matrix2
        
        matrix1 = matrix1-matrix2
        
        passed = assertTrue("should have minused martix 2 from 1: testmatrixminus", CheckingCon: matrix1[0,0] == ExpectedValue)
        
        return passed
        
    }
    
    public func testmatrixplusScaler <T>(martix: Matrix<T>, Value: T, ExpectedValue: T) -> Bool {
        var passed = true
        
        var matrix1 = martix
        
        matrix1 = matrix1+Value
        
        passed = assertTrue("Should have added the scaler to the martix: testmarixplusScaler", CheckingCon: matrix1[0,0] == ExpectedValue)
        
        return passed
    }
    
    public func testmartixminusScaler <T>(matrix: Matrix<T>, Value: T, ExpectedValue: T) -> Bool {
        var passed = true
        
        var matrix1 = matrix
        
        matrix1 = matrix1-Value
        
        passed = assertTrue("Should have minused the scaler from the matrix :testmartixmunusScaler",  CheckingCon: matrix1[0,0] == ExpectedValue)
        
        return passed
    }
    
    public func testmartixmultiScaler <T>(matrix: Matrix<T>, Value: T, ExpectedValue: T) -> Bool {
        var passed = true
        
        var matrix1 = matrix
        
        matrix1 = matrix1 * Value
        
        passed = assertTrue("Should have multiplyed the martix by the scaler: testmatrixmultiScaler", CheckingCon: matrix1[0,0] == ExpectedValue)
        
        return passed
    }
    
    public func testmatrixdivideScaler <T>(matrix: Matrix<T>, Value: T, ExpectedValue: T) -> Bool {
        var passed = true
        
        var matrix1 = matrix
        
        matrix1 = matrix1/Value
        
        passed = assertTrue("Should have divided by the scaler: testmatrixdivideScaler", CheckingCon: matrix1[0,0] == ExpectedValue)
        
        return passed
    }
    
    public func testVectorinit <T> (vector: Vector<T>) -> Bool {
        var passed = true
        
        let vector1 = vector
        
        passed = assertTrue("should have made a vector", CheckingCon: vector1.vector.rows == 1)
        
        return passed
        
    }
    
    public func testVectorDot <T>(vector: Vector<T>, vector2: Vector<T>, ExpectedValue: T) -> Bool {
        
        var passed = true
        
        let vector1 = vector
        let vector2 = vector2
        
        vector1.dot(vector2)
        
        passed = assertTrue("Should have done the dot product of two Vectors", CheckingCon: vector1[0] == ExpectedValue)
        
        return passed
    }
    
    public func testmatrixview <T>(vector: Vector<T>) -> Bool {
        var passed = true
        
        let vector1 = vector
        var matrix = vector.matrixview()
        
        passed = assertTrue("Should have made a matrix from the vector", CheckingCon: matrix[0,0] == vector[0])
        
        
    }
}




















