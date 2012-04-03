//
//  ViewController.m
//  Tapper
//
//  Created by paul on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

#import "MorseCodeDecoder.h"

@implementation ViewController

@synthesize content;
@synthesize dash;
@synthesize dot;
@synthesize backspace;
@synthesize keyboard;
@synthesize space;

@synthesize currentCode;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    currentCode = @"";
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction) dotButtonPressed: (UIButton*) button {
    NSLog(@"Dot button pressed.");
    
    currentCode = [NSString stringWithFormat: @"%@%@", currentCode, @"."];
}

- (IBAction) dashButtonPressed:(UIButton *)button {
    NSLog(@"Dash button pressed.");
    
    currentCode = [NSString stringWithFormat: @"%@%@", currentCode, @"-"];
}

- (IBAction) backspaceButtonPresssed:(UIButton *)button {
    NSLog(@"Backspace button pressed.");
    
    if(content.text.length > 0) {
        content.text = [content.text substringToIndex: content.text.length - 1];
    }
}

- (IBAction) spaceButtonPressed:(UIButton *)button {
    NSLog(@"Space button pressed.");
    
    NSLog(@"Current Code: %@", currentCode);
    
    NSString* decodedChar = [MorseCodeDecoder getCharForCode: currentCode];
    
    if(decodedChar == @"") {
        decodedChar = @" ";
    }
    
    content.text = [NSString stringWithFormat: @"%@%@", content.text, decodedChar];
    
    currentCode = @"";
}

- (IBAction) keyboardButtonPressed:(UIButton *)button {
    NSLog(@"Keyboard button pressed.");
}

@end
