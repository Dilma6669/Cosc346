//
//  main.swift
//  assignment01
//
//  Created by Dylan Pringle on 8/27/16.
//  Copyright © 2016 Dylan Pringle. All rights reserved.
//

import Foundation

//MATRIX TESTING//
/*
//var z = MyMatrixClass<Double>(rowNum: 3, colNum: 3);
var i = Matrix<Int>(rowNum: 3, colNum: 5);

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
*/
/*
var i = Matrix<Double>(rowNum: 4, colNum: 4);

i[0,0] = 1;
i[0,1] = 2;
i[1,0] = 3;
i[1,1] = 3;
i[2,0] = 2;
i[2,1] = 1;

i[3,3] = 9;

print("Matrix I");  // <<<<<<<<<< ============ MATRIX
print(i);

var t = i.transpose;

print("Matrix trans");  // <<<<<<<<<< ============ MATRIX
print(t);

var j = Matrix<Double>(rowNum: 4, colNum: 4);

j[0,0] = 1;
j[0,1] = 5;
j[1,0] = 1;
j[1,1] = 3;
j[2,0] = 5;
j[2,1] = 1;

j[3,3] = 9;

print("Matrix J");  // <<<<<<<<<< ============ MATRIX
print(j);
//var z = i*(j);

var z = i/2

print("Matrix arithmetic");
print(z);
*/
var v = Vector<Double>(size: 3);

var c = Vector<Double>(size: 3);

var q = v+c;

print("Vector arithmetic")
print(q);


