//
//  ViewController.m
//  morsecode2
//
//  Created by Marissa Montgomery on 4/14/13.
//  Copyright (c) 2013 Marissa Montgomery. All rights reserved.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>

@interface ViewController ()

@end

@implementation ViewController

@synthesize userName = _userName;



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
- (IBAction)showMessage
{
    UIAlertView *helloWorldAlert = [[UIAlertView alloc]
                                    initWithTitle:@"My First App" message:@"Hello, World!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    // Display the Hello World Message
    [helloWorldAlert show];
}*/


//fill in this method with our code!!!

- (IBAction)changeGreeting:(id)sender {
    char chardata[] = { 18, 00, 00, 00, 00, 30, 45,
        
        45, 00, 00, 51, 33, 42, 9, 31, 30, 28,
        
        24, 16, 0, 1, 3, 7, 15, 7, 00, 00,
        
        17, 00, 12, 22, 2, 1, 5, 1, 0, 4,
        
        3, 0, 0, 14, 5, 2, 3, 1, 7, 6,
        
        11, 2, 0, 1, 4, 8, 6, 9, 13, 3
        
    };
    
    char sizedata[] = { 6, 00, 00, 00, 00, 6, 6,
        
        6, 00, 00, 6, 6, 6, 5, 5, 5, 5,
        
        5, 5, 5, 5, 5, 5, 5, 6, 00, 00,
        
        5, 00, 6, 6, 2, 4, 4, 3, 1, 4,
        
        3, 4, 2, 4, 3, 4, 2, 2, 3, 4,
        
        4, 3, 3, 1, 3, 4, 3, 4, 4, 4
        
    };
    
    //converts sizedata to NSMutableArray
    NSMutableArray * tmpary = [[NSMutableArray alloc] initWithCapacity: 1000];
    for (int i = 0; i < 1000; i++)
    {
        [tmpary addObject: [NSString stringWithCString: &sizedata[i] encoding:NSASCIIStringEncoding]];
    }
    
    //converts chardata to NSMutableArray
    NSMutableArray * tmpary2 = [[NSMutableArray alloc] initWithCapacity: 1000];
    for (int i = 0; i < 1000; i++)
    {
        [tmpary addObject: [NSString stringWithCString: &chardata[i] encoding:NSASCIIStringEncoding]];
    }

    
    
    //NSString *str;
    NSString *str = self.textField.text;
    str = [str uppercaseString];
	
    char code, bits;
    NSString *result=@"";
    bits = 0;
    char ascval;
    for (int i = 0; i <= [str length] - 1; i++) {
        
        ascval = [str characterAtIndex:i];
        if (ascval == 32) {
			result = [result stringByAppendingString:@" "];
		}
        if (ascval > 33 && ascval < 91) {
			//code = [tmpary2 objectAtIndex:(ascval - 34)];
			//bits = [tmpary2 objectAtindex:(ascval - 34)];
            //^tmpary2 should be the chardata array
		}
		for (int i = 1; i <= bits; i++) {
			if (code % 2) {
				result = [result stringByAppendingString:@"-"];
			} else {
				result = [result stringByAppendingString:@"."];
            }
			code = code / 2;
        }
		if (bits) {
			result = [result stringByAppendingString:@"/"];
        }
	}
    //self.label.text = result;->prints out result
    self.label.text = @"testing";
    /*
    self.userName = self.textField.text;
    
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"World";
    }
    NSString *greeting = [[NSString alloc] initWithFormat:@"Hello, %@!", nameString];
    self.label.text = greeting;*/
}
//////////////////////////////////////

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

@end
