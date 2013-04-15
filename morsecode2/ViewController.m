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
    /*
    char chardata[] = { 18, 00, 00, 00, 00, 30, 45,
        
        45, 00, 00, 51, 33, 42, 9, 31, 30, 28,
        
        24, 16, 0, 1, 3, 7, 15, 7, 00, 00,
        
        17, 00, 12, 22, 2, 1, 5, 1, 0, 4,
        
        3, 0, 0, 14, 5, 2, 3, 1, 7, 6,
        
        11, 2, 0, 1, 4, 8, 6, 9, 13, 3
        
    };
    //NSCharacterSet* sizedata = [6, 00];
    char sizedata[] = { 6, 00, 00, 00, 00, 6, 6,
        
        6, 00, 00, 6, 6, 6, 5, 5, 5, 5,
        
        5, 5, 5, 5, 5, 5, 5, 6, 00, 00,
        
        5, 00, 6, 6, 2, 4, 4, 3, 1, 4,
        
        3, 4, 2, 4, 3, 4, 2, 2, 3, 4,
        
        4, 3, 3, 1, 3, 4, 3, 4, 4, 4
     
    };*/

    NSNumber *eighteen = [NSNumber numberWithChar:18];
    NSNumber *zero = [NSNumber numberWithChar:00];
    NSNumber *thirty = [NSNumber numberWithChar:30];
    NSNumber *fortyfive = [NSNumber numberWithChar:45];
    NSNumber *fiftyone = [NSNumber numberWithChar:51];
    NSNumber *thirtythree = [NSNumber numberWithChar:33];
    NSNumber *fourtytwo = [NSNumber numberWithChar:42];
    NSNumber *nine = [NSNumber numberWithChar:9];
    NSNumber *thirtyone = [NSNumber numberWithChar:31];
    NSNumber *twentyeight = [NSNumber numberWithChar:28];
    NSNumber *twentyfour = [NSNumber numberWithChar:24];
    NSNumber *sixteen = [NSNumber numberWithChar:16];
    NSNumber *one = [NSNumber numberWithChar:1];
    NSNumber *three = [NSNumber numberWithChar:3];
    NSNumber *seven = [NSNumber numberWithChar:7];
    NSNumber *fifteen = [NSNumber numberWithChar:15];
    NSNumber *seventeen = [NSNumber numberWithChar:17];
    NSNumber *twelve = [NSNumber numberWithChar:12];
    NSNumber *twentytwo = [NSNumber numberWithChar:22];
    NSNumber *two = [NSNumber numberWithChar:2];
    NSNumber *five = [NSNumber numberWithChar:5];
    NSNumber *four = [NSNumber numberWithChar:4];
    NSNumber *fourteen = [NSNumber numberWithChar:14];
    NSNumber *six = [NSNumber numberWithChar:6];
    NSNumber *eleven = [NSNumber numberWithChar:11];
    NSNumber *eight = [NSNumber numberWithChar:8];
    NSNumber *thirteen = [NSNumber numberWithChar:13];
    NSNumber *fortytwo = [NSNumber numberWithChar:42];
    
    NSArray * chardata = [[NSArray alloc] initWithObjects:eighteen, zero, zero, zero, zero, thirty,
                          fortyfive, fortyfive, zero, zero, fiftyone, thirtythree, fortytwo, nine, thirtyone, thirty,
                          twentyeight, twentyfour, sixteen, zero, one, three, seven, fifteen, seven, zero, zero, seventeen,
                          zero, twelve, twentytwo, two, one, five, one, zero, four, three, zero, zero, fourteen, five, two,
                          three, one, seven, six, eleven, two, zero, one, four, eight, six, nine, thirteen, three, nil];
    
    NSArray * sizedata = [[NSArray alloc] initWithObjects: six, zero, zero, zero, zero, six, six,
                          six, zero, zero, six, six, six, five, five, five, five, five, five, five, five, five, five, five,
                          six, zero, zero, five, zero, six, six, two, four, four, three, one, four, three, four, two, four,
                          three, four, two, two, three, four, four, three, three, one, three, four, three, four, four, four, nil];
    
    //converts sizedata to NSMutableArray
    /*NSMutableArray * tmpary = [[NSMutableArray alloc] initWithCapacity: 1000];
    for (int i = 0; i < 1000; i++)
    {
        [tmpary addObject: [NSString stringWithCString: &sizedata[i] encoding:NSASCIIStringEncoding]];
    }
    
    //converts chardata to NSMutableArray
    NSMutableArray * tmpary2 = [[NSMutableArray alloc] initWithCapacity: 1000];
    for (int i = 0; i < 1000; i++)
    {
        [tmpary addObject: [NSString stringWithCString: &chardata[i] encoding:NSASCIIStringEncoding]];
    }*/

    
    
    //NSString *str;
    NSString *str = self.textField.text;
    str = [str uppercaseString];
	
    NSNumber * code, *bits;
    char charcode, charbits;
    NSString *result= @"";
    bits = 0;
    char ascval;
    for (int i = 0; i <= [str length] - 1; i++) {
        
        ascval = [str characterAtIndex:i];
        if (ascval == 32) {
			result = [result stringByAppendingString:@" "];
		}
        if (ascval > 33 && ascval < 91) {
			code = [chardata objectAtIndex:(ascval - 34)];
            charcode = [code charValue];
			bits = [sizedata objectAtIndex:(ascval - 34)];
            charbits = [bits charValue];
            //^tmpary2 should be the chardata array
		}
		for (int i = 1; i <= charbits; i++) {
			if (charcode % 2) {
				result = [result stringByAppendingString:@"-"];
			} else {
				result = [result stringByAppendingString:@"."];
            }
			charcode = charcode / 2;
        }
		if (bits) {
			result = [result stringByAppendingString:@"/"];
        }
	}
    
    self.label.text = result;
    
        
    //self.label.text = @"testing";
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
