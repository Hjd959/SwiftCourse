//
//  passwordViled.swift
//  All_XCODE
//
//  Created by عبدالوهاب العنزي on 10/06/2020.
//  Copyright © 2020 Abdulwahab. All rights reserved.

/**
 
 ملخص هذا الكود هو عباره عن عملية تحقق لكلمة المرور
 
 
 **/






import UIKit

class passwordViled: UIViewController {


           // text Field (new Password first field )
           @IBOutlet weak var passwordOutlet: UITextField!
           // text Field Confirm
           @IBOutlet weak var passwordConfirm: UITextField!
           
           
           // Errors Label
           // for range number from 8 to 16
           @IBOutlet weak var numbers8To16: UILabel!
           // for loerLetter
           @IBOutlet weak var lowerLetter: UILabel!
           // for upperletter
           @IBOutlet weak var upperLetter: UILabel!
           // for numbers
           @IBOutlet weak var rengeNumber: UILabel!
           // for special Character
           @IBOutlet weak var specialWord: UILabel!
           // Confirm Password
           @IBOutlet weak var conFirmError: UILabel!
           
          
           override func viewDidLoad()
           {
               super.viewDidLoad()
               
               // errors labels (alpha)
               lowerLetter.alpha = 0
               upperLetter.alpha = 0
               rengeNumber.alpha = 0
               specialWord.alpha = 0
               numbers8To16.alpha = 0
               conFirmError.alpha = 0
            
           }

           // function for Validations Password
           func isValidated(_ password:String) -> Bool
           {
               
               // varabel of loerLetter
               var lowerCase:Bool = false
               // varabel for upperletter
               var upperCase:Bool = false
                // varabel for numbers
               var reNumber:Bool = false
               // for special Character
               var specialCharacter:Bool = false
               // for count number from 8 to 16
               var numbers : Bool = false
               
               // count numbers from 8 to 16
                                if password.count >= 8 && password.count <= 16
                                {
                                    numbers8To16.alpha = 1
                                    numbers8To16.text = "كلمة المرور موافقه للشرط اعلى من ٨ ارقام"
                                    numbers8To16.textColor = .green
                                }else {
                                    numbers8To16.alpha = 1
                                    numbers8To16.text = "كلمة المرور يجب ان تكون اكثر من ٨ احرف وارقام"
                                    numbers8To16.textColor = .red
                                }
               
               // condition Password
               
               for char in password.unicodeScalars
               {
                   // read first char for loerLetter
                   if !lowerCase
                   {
                       lowerCase = CharacterSet.lowercaseLetters.contains(char)
                   }
                   // read first char for upperletter
                   if !upperCase
                   {
                       upperCase = CharacterSet.uppercaseLetters.contains(char)
                   }
                   // read first number
                   if !reNumber
                   {
                       reNumber = CharacterSet.decimalDigits.contains(char)
                   }
                   // read first char for special Character
                   if !specialCharacter
                   {
                       specialCharacter = CharacterSet.punctuationCharacters.contains(char)
                   }

               
               }
                    
                   if (lowerCase)  // this is == true
                   {
                        lowerLetter.alpha = 1
                       lowerLetter.text = "تم استخدام الاحرف الصغيره"
                       lowerLetter.textColor = .green
                      // passwordOutlet.backgroundColor = .green
                   
                   }else // this is == fales
                   {
                        lowerLetter.alpha = 1
                       lowerLetter.text = "يرجاء استخدام الاحرف الصغيره"
                       lowerLetter.textColor = .red
                     //  passwordOutlet.backgroundColor = .red
                       
                   }
                   if (upperCase) // this is == true
                   {
                        upperLetter.alpha = 1
                       upperLetter.text = "تم استخدام الاحرف الكبيره"
                       upperLetter.textColor = .green
                   //    passwordOutlet.backgroundColor = .green
                              
                   }else // this is == fales
                   {
                        upperLetter.alpha = 1
                       upperLetter.text = "يرجاء استخدام الاحرف الكبيره"
                       upperLetter.textColor = .red
                  //     passwordOutlet.backgroundColor = .red
                                  
                   }
                   if (reNumber) // this is == true
                   {
                       rengeNumber.alpha = 1
                       rengeNumber.text = "تم استخدام الارقام "
                       rengeNumber.textColor = .green
                  //     passwordOutlet.backgroundColor = .green
                              
                   }else // this is == fales
                   {
                       rengeNumber.alpha = 1
                       rengeNumber.text = "يرجاء استخدام الارقام "
                       rengeNumber.textColor = .red
                 //      passwordOutlet.backgroundColor = .red
                                  
                   }
                   if (specialCharacter) // this is == true
                   {
                       specialWord.alpha = 1
                       specialWord.text = "تم استخدام الرموز "
                       specialWord.textColor = .green
                  //     passwordOutlet.backgroundColor = .green
                              
                   }else // this is == fales
                   {
                       specialWord.alpha = 1
                       specialWord.text = "يرجاء استخدام الرموز "
                       specialWord.textColor = .red
                   //    passwordOutlet.backgroundColor = .red
                                  
                   }
               
               
             
                   
               
                    // this is for condition
                   if (lowerCase && upperCase && reNumber && specialCharacter && numbers)
                   {
                       return true
                       
                   }else
                   {
                       return false
                   }
               }
               

           // Text Field Action
           
           // This text Field for new Password
       
    @IBAction func newPass(_ sender: UITextField)
    {
          print(isValidated(sender.text!))
    }
    
           
           // This for Confirm Password
          // confirmPassword
    
    @IBAction func confirmPass(_ sender: UITextField)
    {
                        if passwordConfirm.text != passwordOutlet.text
                               {
                                    conFirmError.alpha = 1
                                   conFirmError.text = "كلمة المرور غير مطابقه"
                                   conFirmError.textColor = .red
        
                               }else {
                                    conFirmError.alpha = 1
                                   conFirmError.text = "كلمة المرور مطابقه"
                                   conFirmError.textColor = .green
                        }
    }
    
      

       
       

               
              
           
           
       }
