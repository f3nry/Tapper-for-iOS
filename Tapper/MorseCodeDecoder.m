//
//  MorseCodeDecoder.m
//  Tapper
//
//  Created by paul on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "MorseCodeDecoder.h"

@implementation MorseCodeDecoder

+ (NSString*) getCharForCode:(NSString *)code {
    if([code isEqualToString: @".-"]) {
        return @"A";
    } else if([code isEqualToString: @"-..."]) {
        return @"B";
    } else if([code isEqualToString: @"-.-."]) {
        return @"C";
    } else if([code isEqualToString: @"-.."]) {
        return @"D";
    } else if([code isEqualToString: @"."]) {
        return @"E";
    } else if([code isEqualToString: @"..-."]) {
        return @"F";
    } else if([code isEqualToString: @"--."]) {
        return @"G";
    } else if([code isEqualToString: @"...."]) {
        return @"H";
    } else if([code isEqualToString: @".."]) {
        return @"I";
    } else if([code isEqualToString: @".---"]) {
        return @"J";
    } else if([code isEqualToString: @"-.-"]) {
        return @"K";
    } else if([code isEqualToString: @".-.."]) {
        return @"L";
    } else if([code isEqualToString: @"--"]) {
        return @"M";
    } else if([code isEqualToString: @"-."]) {
        return @"N";
    } else if([code isEqualToString: @"---"]) {
        return @"O";
    } else if([code isEqualToString: @".--."]) {
        return @"P";
    } else if([code isEqualToString: @"--.-"]) {
        return @"Q";
    } else if([code isEqualToString: @".-."]) {
        return @"R";
    } else if([code isEqualToString: @"..."]) {
        return @"S";
    } else if([code isEqualToString: @"-"]) {
        return @"T";
    } else if([code isEqualToString: @"..-"]) {
        return @"U";
    } else if([code isEqualToString: @"...-"]) {
        return @"V";
    } else if([code isEqualToString: @".--"]) {
        return @"W";
    } else if([code isEqualToString: @"-..-"]) {
        return @"X";
    } else if([code isEqualToString: @"-.--"]) {
        return @"Y";
    } else if([code isEqualToString: @"--.."]) {
        return @"Z";
    } else if([code isEqualToString: @"-----"]) {
        return @"0";
    } else if([code isEqualToString: @".----"]) {
        return @"1";
    } else if([code isEqualToString: @"..---"]) {
        return @"2";
    } else if([code isEqualToString: @"...--"]) {
        return @"3";
    } else if([code isEqualToString: @"....-"]) {
        return @"4";
    } else if([code isEqualToString: @"....."]) {
        return @"5";
    } else if([code isEqualToString: @"-...."]) {
        return @"6";
    } else if([code isEqualToString: @"--..."]) {
        return @"7";
    } else if([code isEqualToString: @"---.."]) {
        return @"8";
    } else if([code isEqualToString: @"----."]) {
        return @"9";
    }
    
    return @"";
}

@end
