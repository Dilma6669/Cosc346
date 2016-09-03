//
//  TestMatrixVector.swift
//  Assignment1
//
//  Created by Matthew Lang on 9/3/16.
//  Copyright © 2016 NexMetu. All rights reserved.
//

import Foundation


public class TestMatrixVector {
    
    public func assertTrue (Msg: String?, CheckingCon: Bool) -> Bool {
        if (CheckingCon == true) {
            return true
        }else{
            print(Msg);
            return false
        }
    }
    
    public func assertFalse (Msg: String?, CheckingCon: Bool) -> Bool {
        if (CheckingCon == false){
            return true
        }else{
            print(Msg)
            return false
        }
    
    }
    
    public func assertEquals (Msg: String?, ExpectedValueInt: Int, InputValueInt: Int) -> Bool{
        return assertTrue(Msg, CheckingCon: ExpectedValueInt == InputValueInt)
        
    }
    
    public func assertEquals (Msg: String?, ExpectedValueFloat: Float, InputValueFloat: Float) -> Bool{
        return assertTrue(Msg, CheckingCon: ExpectedValueFloat == InputValueFloat)
        
    }
    
    public func assertEquals (Msg: String?,ExpectedValueDouble: Double, InputValueDouble: Double) -> Bool{
        return assertTrue(Msg, CheckingCon: ExpectedValueDouble == InputValueDouble)
        
    }
    
  
}