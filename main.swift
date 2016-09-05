//
//  main.swift
//  Assign
//
//  Created by Matthew Lang on 9/4/16.
//  Copyright © 2016 NexMetu. All rights reserved.
//

import Foundation
//test matrixs for single tests
var testMat = Matrix<Int>(rows: 3,columns: 3)
var testMatDouble = Matrix<Double>(rows: 3,columns: 3)
var testMatFloat = Matrix<Float>(rows: 3,columns: 3)
var testMatFraction = Matrix<Fraction>(rows: 3,columns: 3)
var testMatComplex = Matrix<Complex>(rows: 3,columns: 3)
//tests matrixs for vecotrs chaning
var testMatV = Matrix<Int>(rows:1,columns:3)
var testMatVd = Matrix<Double>(rows:1,columns:3)
var testMatVf = Matrix<Float>(rows:1,columns:3)
var testMatVfr = Matrix<Fraction>(rows:1,columns:3)
var testMatVc = Matrix<Complex>(rows:1,columns:3)
// just fractons and complexs to edit the matrixs that deal with them
var frac: Fraction = Fraction(num: 1,den: 1)
var comp: Complex = Complex(real: 1,imag: 0)



var frac2: Fraction = Fraction(num: 2,den :1)
var comp2: Complex = Complex(real: 2,imag: 0)


var frac3: Fraction = Fraction(num: 1,den: -1)
var comp3: Complex = Complex(real: -1,imag: 0)

var addfrac: Fraction = Fraction(num: 3, den: 1)
var addcomp: Complex = Complex(real: 3, imag: 0)

var testVector = Vector<Int>(size: 5)
var testmultiV = Vector<Int>(size: 5)

for x in 0...4 {
    testVector[x] = x + 1
    testmultiV[x] = x + 5
}

//testing for the +/*- 
//making the test case matritx s and filling them with values
var testMatMulti = Matrix<Int>(rows: 3, columns: 3)
var testMatMulti2 = Matrix<Int>(rows: 3, columns: 3)
var testMatMulti3 = Matrix<Int>(rows: 3, columns: 3)

var testMatMultiD = Matrix<Double>(rows: 3, columns: 3)
var testMatMultiD2 = Matrix<Double>(rows: 3, columns: 3)
var testMatMultiD3 = Matrix<Double>(rows: 3, columns: 3)

var testMatMultiF = Matrix<Float>(rows: 3, columns: 3)
var testMatMultiF2 = Matrix<Float>(rows: 3, columns: 3)
var testMatMultiF3 = Matrix<Float>(rows: 3, columns: 3)

var testMatMultiFr = Matrix<Fraction>(rows: 3, columns: 3)
var testMatMultiFr2 = Matrix<Fraction>(rows: 3, columns: 3)
var testMatMultiFr3 = Matrix<Fraction>(rows: 3, columns: 3)

var testMatMultiC = Matrix<Complex>(rows: 3, columns: 3)
var testMatMultiC2 = Matrix<Complex>(rows: 3, columns: 3)
var testMatMultiC3 = Matrix<Complex>(rows: 3, columns: 3)

for x in 0...2 {
    for y in 0...2 {
        testMatMulti[x,y] = 1
        testMatMulti2[x,y] = 2
        testMatMultiD[x,y] = 1.0
        testMatMultiD2[x,y] = 2.0
        testMatMultiF[x,y] = 1.0
        testMatMultiF2[x,y] = 2.0
        testMatMultiFr[x,y] = Fraction(num: 1,den: 1)
        testMatMultiFr2[x,y] = Fraction(num: 2,den: 1)
        testMatMultiC[x,y] = Complex(real: 1,imag: 0)
        testMatMultiC2[x,y] = Complex(real: 2,imag: 0)
        
    }
}

//matrix Multiplaction
//makes all the matrixs and values used in testing for multiplation
var multimat = Matrix<Int>(rows:2, columns: 2)
var multimatD = Matrix<Double>(rows: 2, columns: 2)
var multimatF = Matrix<Float>(rows: 2, columns: 2)
var multimatFr = Matrix<Fraction>(rows: 2, columns: 2)
var multimatC = Matrix<Complex>(rows: 2, columns: 2)
multimat[0,0] = 2;
multimatD[0,0] = 2.0
multimatF[0,0] = 2.0
multimatFr[0,0] = Fraction(num: 2, den: 1)
multimatC[0,0] = Complex(real: 2, imag: 0)
multimat[0,1] = -2
multimatD[0,1] = -2.0
multimatF[0,1] = -2.0
multimatFr[0,1] = Fraction(num: -2, den: 1)
multimatC[0,1] = Complex(real: -2, imag: 0)
multimat[1,0] = 5
multimatD[1,0] = 5.0
multimatF[1,0] = 5.0
multimatFr[1,0] = Fraction(num: 5, den: 1)
multimatC[1,0] = Complex(real: 5, imag: 0)
multimat[1,1] = 3
multimatD[1,1] = 3.0
multimatF[1,1] = 3.0
multimatFr[1,1] = Fraction(num: 3, den: 1)
multimatC[1,1] = Complex(real: 3, imag: 0)

var multimat2 = Matrix<Int>(rows:2, columns: 2)
var multimatD2 = Matrix<Double>(rows: 2, columns: 2)
var multimatF2 = Matrix<Float>(rows: 2, columns: 2)
var multimatFr2 = Matrix<Fraction>(rows: 2, columns: 2)
var multimatC2 = Matrix<Complex>(rows: 2, columns: 2)
multimat2[0,0] = -1;
multimatD2[0,0] = -1.0
multimatF2[0,0] = -1.0
multimatFr2[0,0] = Fraction(num: -1, den: 1)
multimatC2[0,0] = Complex(real: -1, imag: 0)
multimat2[0,1] = 4
multimatD2[0,1] = 4.0
multimatF2[0,1] = 4.0
multimatFr2[0,1] = Fraction(num: 4, den: 1)
multimatC2[0,1] = Complex(real: 4, imag: 0)
multimat2[1,0] = 7
multimatD2[1,0] = 7.0
multimatF2[1,0] = 7.0
multimatFr2[1,0] = Fraction(num: 7, den: 1)
multimatC2[1,0] = Complex(real: 7, imag: 0)
multimat2[1,1] = -6
multimatD2[1,1] = -6.0
multimatF2[1,1] = -6.0
multimatFr2[1,1] = Fraction(num: -6, den: 1)
multimatC2[1,1] = Complex(real: -6, imag: 0)


//sets up the test array to hold all tests
var testspass = [Bool]()

//tests if the matrix is init right along wiht the right tpye
testspass.append(TestMatrixVector.testmatrixinit(testMat, rows: 3, columns: 3))
testspass.append(TestMatrixVector.testmatrixinit(testMatDouble, rows: 3, columns: 3))
testspass.append(TestMatrixVector.testmatrixinit(testMatFloat, rows: 3, columns: 3))
testspass.append(TestMatrixVector.testmatrixinit(testMatFraction, rows: 3, columns: 3))
testspass.append(TestMatrixVector.testmatrixinit(testMatComplex, rows: 3, columns: 3))

//tests if the subscript methiod is working
testspass.append(TestMatrixVector.testsubscriptmatrix(testMat,Value: 2))
testspass.append(TestMatrixVector.testsubscriptmatrix(testMatDouble,Value: 1.0))
testspass.append(TestMatrixVector.testsubscriptmatrix(testMatFloat,Value: 1.0))
testspass.append(TestMatrixVector.testsubscriptmatrix(testMatFraction,Value: frac))
testspass.append(TestMatrixVector.testsubscriptmatrix(testMatComplex,Value: comp))

//test if the copy method works
testspass.append(TestMatrixVector.testcopy(testMat, Value: 1))
testspass.append(TestMatrixVector.testcopy(testMatDouble, Value: 1.0))
testspass.append(TestMatrixVector.testcopy(testMatFloat, Value: 1.0))
testspass.append(TestMatrixVector.testcopy(testMatFraction, Value: frac))
testspass.append(TestMatrixVector.testcopy(testMatComplex, Value: comp))

//tests if the transpose method works
testspass.append(TestMatrixVector.testMatrixtranspose(testMat, Value: 5))
testspass.append(TestMatrixVector.testMatrixtranspose(testMatDouble, Value: 5.0))
testspass.append(TestMatrixVector.testMatrixtranspose(testMatFloat, Value: 5.0))
testspass.append(TestMatrixVector.testMatrixtranspose(testMatFraction, Value: frac2))
testspass.append(TestMatrixVector.testMatrixtranspose(testMatComplex, Value: comp2))

//tests if the vector view works
testspass.append(TestMatrixVector.testVectorview(testMatV))
testspass.append(TestMatrixVector.testVectorview(testMatVd))
testspass.append(TestMatrixVector.testVectorview(testMatVf))
testspass.append(TestMatrixVector.testVectorview(testMatVfr))
testspass.append(TestMatrixVector.testVectorview(testMatVc))

//tests if the right row is getting collected by the row get method
testspass.append(TestMatrixVector.testrowget(testMat, rownum: 2, Value: 1))
testspass.append(TestMatrixVector.testrowget(testMatDouble, rownum: 2, Value: 1.0))
testspass.append(TestMatrixVector.testrowget(testMatFloat, rownum: 2, Value: 1.0))
testspass.append(TestMatrixVector.testrowget(testMatFraction, rownum: 2, Value: frac))
testspass.append(TestMatrixVector.testrowget(testMatComplex, rownum: 2, Value: comp))

//same as above but with the column
testspass.append(TestMatrixVector.testcolumnget(testMat, columnnum: 2, Value: 3))
testspass.append(TestMatrixVector.testcolumnget(testMatDouble, columnnum: 2, Value: 3.0))
testspass.append(TestMatrixVector.testcolumnget(testMatFloat, columnnum: 2, Value: 3.0))
testspass.append(TestMatrixVector.testcolumnget(testMatFraction, columnnum: 2, Value: frac2))
testspass.append(TestMatrixVector.testcolumnget(testMatComplex, columnnum: 2, Value: comp2))

//tests if adding two matrixs together works
testspass.append(TestMatrixVector.testmatrixplus(testMatMulti, matrix2: testMatMulti2, ExpectedValue: 3))
testspass.append(TestMatrixVector.testmatrixplus(testMatMultiD, matrix2: testMatMultiD2, ExpectedValue: 3))
testspass.append(TestMatrixVector.testmatrixplus(testMatMultiF, matrix2: testMatMultiF2, ExpectedValue: 3))
testspass.append(TestMatrixVector.testmatrixplus(testMatMultiFr, matrix2: testMatMultiFr2, ExpectedValue: addfrac))
testspass.append(TestMatrixVector.testmatrixplus(testMatMultiC, matrix2: testMatMultiC2, ExpectedValue: addcomp))

//tests if minusing two matrixs together works
testspass.append(TestMatrixVector.testmatrixminus(testMatMulti, matrix2: testMatMulti2, ExpectedValue: -1))
testspass.append(TestMatrixVector.testmatrixminus(testMatMultiD, matrix2: testMatMultiD2, ExpectedValue: -1))
testspass.append(TestMatrixVector.testmatrixminus(testMatMultiF, matrix2: testMatMultiF2, ExpectedValue: -1))
testspass.append(TestMatrixVector.testmatrixminus(testMatMultiFr, matrix2: testMatMultiFr2, ExpectedValue: frac3))
testspass.append(TestMatrixVector.testmatrixminus(testMatMultiC, matrix2: testMatMultiC2, ExpectedValue: comp3))

//tests if multiply two matrix work
testspass.append(TestMatrixVector.testmatrixsmulti(multimat, matrix2: multimat2, ExpectedValue: -16))
testspass.append(TestMatrixVector.testmatrixsmulti(multimatD, matrix2: multimatD2, ExpectedValue: -16))
testspass.append(TestMatrixVector.testmatrixsmulti(multimatF, matrix2: multimatF2, ExpectedValue: -16))
testspass.append(TestMatrixVector.testmatrixsmulti(multimatFr, matrix2: multimatFr2, ExpectedValue: Fraction(num: -16, den: 1)))
comp3.real = -16
testspass.append(TestMatrixVector.testmatrixsmulti(multimatC, matrix2: multimatC2, ExpectedValue: comp3))

//tests if a matrix miuns a scaler works correctly
comp3.real = -1
testspass.append(TestMatrixVector.testmartixminusScaler(testMatMulti, Value: 1, ExpectedValue: 0))
testspass.append(TestMatrixVector.testmartixminusScaler(testMatMultiD, Value: 2.0, ExpectedValue: -1.0))
testspass.append(TestMatrixVector.testmartixminusScaler(testMatMultiF, Value: 10.0, ExpectedValue: -9.0))
testspass.append(TestMatrixVector.testmartixminusScaler(testMatMultiFr, Value: frac2, ExpectedValue: frac3))
testspass.append(TestMatrixVector.testmartixminusScaler(testMatMultiC, Value: comp2, ExpectedValue: comp3))

//tests if the matrix adds a scaler correcrtly
testspass.append(TestMatrixVector.testmatrixplusScaler(testMatMulti, Value: 1, ExpectedValue: 1))
testspass.append(TestMatrixVector.testmatrixplusScaler(testMatMultiD, Value: 2.0, ExpectedValue: 1.0))
testspass.append(TestMatrixVector.testmatrixplusScaler(testMatMultiF, Value: 3.0, ExpectedValue: -6.0))
testspass.append(TestMatrixVector.testmatrixplusScaler(testMatMultiFr, Value: frac2, ExpectedValue: Fraction(num: 1, den: 1)))
testspass.append(TestMatrixVector.testmatrixplusScaler(testMatMultiC, Value: comp2, ExpectedValue: Complex(real: 1, imag: 0)))

//tests if the matrix multiplys by a scaler correctly
testspass.append(TestMatrixVector.testmartixmultiScaler(testMatMulti, Value: 6, ExpectedValue: 6))
testspass.append(TestMatrixVector.testmartixmultiScaler(testMatMultiD, Value: 6.0, ExpectedValue: 6.0))
testspass.append(TestMatrixVector.testmartixmultiScaler(testMatMultiF, Value: -1, ExpectedValue: 6))
testspass.append(TestMatrixVector.testmartixmultiScaler(testMatMultiFr, Value: Fraction(num:6, den: 1), ExpectedValue: Fraction(num: 6, den: 1)))
testspass.append(TestMatrixVector.testmartixmultiScaler(testMatMultiC, Value: Complex(real: 10, imag: 0), ExpectedValue: Complex(real: 10, imag: 0)))

//tests if the matrix divides by a scaler correctly
testspass.append(TestMatrixVector.testmatrixdivideScaler(testMatMulti, Value: 6, ExpectedValue: 1))
testspass.append(TestMatrixVector.testmatrixdivideScaler(testMatMultiD, Value: 6.0, ExpectedValue: 1.0))
testspass.append(TestMatrixVector.testmatrixdivideScaler(testMatMultiF, Value: 6, ExpectedValue: 1.0))
testspass.append(TestMatrixVector.testmatrixdivideScaler(testMatMultiFr, Value: Fraction(num: 6, den: 1), ExpectedValue: Fraction(num: 1, den: 1)))
testspass.append(TestMatrixVector.testmatrixdivideScaler(testMatMultiC, Value: Complex(real: 2, imag: 0), ExpectedValue: Complex(real: 5, imag: 0)))

//tests that test if the veoctrs is intit, dot method and matrixview works correctly
testspass.append(TestMatrixVector.testVectorinit(testVector))
testspass.append(TestMatrixVector.testVectorDot(testVector, vector2: testmultiV, ExpectedValue: 115))
testspass.append(TestMatrixVector.testmatrixview(testVector))


var y: Int = 0
for x in 0...testspass.count-1 {
    if(testspass[x]){
        print("Test passed")
        y += 1;
    }else{
        print("test failed")
    }
}
print("\(y) out of \(testspass.count) passed")
