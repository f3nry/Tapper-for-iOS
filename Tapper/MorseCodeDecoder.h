//
//  MorseCodeDecoder.h
//  Tapper
//
//  Created by paul on 4/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MorseCodeDecoder : NSObject

+ (NSString*) getCharForCode: (NSString*) code;

@end
