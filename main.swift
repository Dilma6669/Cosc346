//
//  main.swift
//  assignment01
//
//  Created by Dylan Pringle on 8/27/16.
//  Copyright © 2016 Dylan Pringle. All rights reserved.
//

import Foundation

//MATRIX TESTING//

//var z = MyMatrixClass<Double>(rowNum: 3, colNum: 3);
var i = Matrix<Double>(rowNum: 9, colNum: 9);

// print matrix
print("Matrix");  // <<<<<<<<<< ============ MATRIX
print(i);

//print("Matrix empty: \(i.isEmpty)");

print("try 2 access [0,0]");

i[0,0] = 2;

print("success");

print(i[0,0]);

print("finish [0,0]");

print("try 2 access [0,1]");

i[1,0] = 5;

print("success");

print(i[0,1]);

print("finish [0,1]");

// print matrix
print("Matrix");  // <<<<<<<<<< ============ MATRIX
print(i);

print("try 2 access [1,0]");

i[1,0] = 4;

print("finish [1,0]");

print("try 2 access [1,1]");

i[1,1] = 5;

print("finish [1,1]");


print("try 2 access [2,0]");

i[2,0] = 4;

print(i[2,0]);

print("finish [2,0]");

print("try 2 access [0,2]");

i[0,2] = 5;

print(i[0,2]);

print("finish [0,2]");

// print matrix
print("Matrix");  // <<<<<<<<<< ============ MATRIX
print(i);

var trans = i.transpose;


// print matrix
print("Matrix Trans");  // <<<<<<<<<< ============ MATRIX
print(trans);

var j = trans.copy();

// print matrix
print("Matrix copy");  // <<<<<<<<<< ============ MATRIX
print(j);



//MATRIX TESTING//

var a = Vector<Int>(size: 3);
var s = Vector<Int>(size: 3);

print(a.size);

a[0] = 1;
a[1] = 2;
a[2] = 3;

print(a[0]);
print(a[1]);
print(a[2]);

s[0] = 5;
s[1] = 6;


print(s);
print(s);

print(a.dot(s));


var b: Vector<Int> = Vector<Int>(size: 3);

b[1] = 2;

var y: Int = b[1];

print(y);



