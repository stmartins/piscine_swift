//
//  ViewController.swift
//  ex02
//
//  Created by Stephane MARTINS on 5/25/18.
//  Copyright © 2018 Stephane MARTINS. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    var     numOnScreen:Double = 0;
    var     prevNum:Double = 0;
    var     resul:Double = 0;
    var     perfCal = false;
    var     operat = 0;
    var     oldOperat = 0;
    var     reset = false;
    var     continu = false
    var     first = false
    
    @IBOutlet weak var resLabel: UILabel!
    
    @IBAction func numBtn(_ sender: UIButton)
    {
       
        if (reset == true)
        {
            clearAll()
        }
        if (perfCal == true)
        {
            resLabel.text = String(sender.tag-1)
            perfCal = false
        }
        else
        {
            resLabel.text = resLabel.text! + String(sender.tag-1)
            
        }
        numOnScreen = Double(resLabel.text!)!
        print("bouton " + String(sender.tag-1))
    }
    
    @IBAction func opBtn(_ sender: UIButton)
    {
        if (resLabel.text != "" && sender.tag != 11 && sender.tag != 12 && sender.tag != 17)
        {
            print("pr et on", prevNum, " ", numOnScreen)
            if (sender.tag == 13) //div
            {
                print("/")
                resLabel.text = "/"
            }
            else if (sender.tag == 14) // mul
            {
                 print("*")
                resLabel.text = "*"
            }
            else if (sender.tag == 15) // sous
            {
                 print("-")
                resLabel.text = "-"
            }
            else if (sender.tag == 16) // add
            {
                 print("+")
                resLabel.text = "+"
            }

            if (oldOperat != 0)
            {
                if (oldOperat == 13)
                {
                    resul = prevNum / numOnScreen
                }
                else if (oldOperat == 14)
                {
                    resul = prevNum * numOnScreen
                }
                else if (oldOperat == 15)
                {
                    resul = prevNum - numOnScreen
                }
                else if (oldOperat == 16)
                {
                    resul = prevNum + numOnScreen
                }
            }
            oldOperat = sender.tag;
            operat = sender.tag;
            perfCal = true;
            continu = true;
            print("rsl ", resul)
            if (first == false)
            {
                prevNum = numOnScreen
                first = true
            }
            else
            {
               prevNum = resul;
            }
        }
        else if (resLabel.text != "" && sender.tag == 17)
        {
            if (operat == 13)
            {
                if (numOnScreen == 0)
                {
                    resLabel.text = "0";
                    numOnScreen = 0;
                    prevNum = 0;
                    operat = 0;
                    perfCal = false;
                }
                else
                {
                    resLabel.text = String(prevNum/numOnScreen)
                }
            }
            else if (operat == 14)
            {
                resLabel.text = String(prevNum*numOnScreen)
            }
            else if (operat == 15)
            {
                resLabel.text = String(prevNum-numOnScreen)
            }
            else if (operat == 16)
            {
                resLabel.text = String(prevNum+numOnScreen)
            }
            print(prevNum, " ", numOnScreen)
            resul = Double(resLabel.text!)!
            prevNum = resul;
            reset = true
        }
        else if (resLabel.text != "" && sender.tag == 12)
        {
            if (Double(resLabel.text!)! > 0)
            {
                resLabel.text = "-" + resLabel.text!;
            }
            else
            {
                resLabel.text = String(Double(resLabel.text!)!*(-1));
            }
            numOnScreen = Double(resLabel.text!)!
        }
        else if (sender.tag == 11)
        {
            clearAll()
        }
    }
    
    func clearAll()
    {
        resLabel.text = "";
        numOnScreen = 0;
        prevNum = 0;
        operat = 0;
        resul = 0;
        perfCal = false;
        reset = false;
        continu = false;
        first = false
    }
}

