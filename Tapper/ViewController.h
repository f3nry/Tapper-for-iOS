//
//  ViewController.h
//  Tapper
//
//  Created by paul on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    UITextView* content;
    UIButton* dot;
    UIButton* dash;
    UIButton* space;
    UIButton* keyboard;
    UIButton* backspace;
    
    NSString* currentCode;
}

@property (retain, nonatomic) IBOutlet UITextView* content;
@property (retain, nonatomic) IBOutlet UIButton* dot;
@property (retain, nonatomic) IBOutlet UIButton* dash;
@property (retain, nonatomic) IBOutlet UIButton* space;
@property (retain, nonatomic) IBOutlet UIButton* keyboard;
@property (retain, nonatomic) IBOutlet UIButton* backspace;

@property (retain, nonatomic) NSString* currentCode;

- (IBAction) dotButtonPressed: (UIButton*) button;
- (IBAction) dashButtonPressed: (UIButton*) button;
- (IBAction) spaceButtonPressed: (UIButton*) button;
- (IBAction) keyboardButtonPressed: (UIButton*) button;
- (IBAction) backspaceButtonPresssed: (UIButton* ) button;

@end
