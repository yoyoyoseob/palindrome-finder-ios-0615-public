//
//  NSString+isPalindrome.m
//  palindrome-finder
//
//  Created by Yoseob Lee on 6/11/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import "NSString+isPalindrome.h"

@implementation NSString (isPalindrome)

+(BOOL)isPalindrome:(NSString *)string
{
    BOOL isStringPalindrome = NO;
    
    NSString *stringWithoutSpaces = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
    
    // Create original array of split characters
    NSMutableArray *arrayOfCharacters = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0; i < stringWithoutSpaces.length; i++)
    {
        NSString *character = [NSString stringWithFormat:@"%c", [stringWithoutSpaces characterAtIndex:i]];
        [arrayOfCharacters addObject:[character lowercaseString]];
    }
    
    // Create reverse array
    NSArray *reversedArray = [[arrayOfCharacters reverseObjectEnumerator] allObjects];
    
    NSString *forwardString = [arrayOfCharacters componentsJoinedByString:@""];
    NSString *backwardString = [reversedArray componentsJoinedByString:@""];
    
    if ([forwardString isEqualToString:backwardString]){
        isStringPalindrome = YES;
    }
    else{
        isStringPalindrome = NO;
    }
    
    return isStringPalindrome;
}

@end
