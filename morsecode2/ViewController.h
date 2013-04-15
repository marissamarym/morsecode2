//
//  ViewController.h
//  morsecode2
//
//  Created by Marissa Montgomery on 4/14/13.
//  Copyright (c) 2013 Marissa Montgomery. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
/*
-(IBAction)showMessage;*/

@property (weak, nonatomic) IBOutlet UIButton *myButton;

@property (copy, nonatomic) NSString *userName;

- (IBAction)changeGreeting:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UILabel *label;

@end
