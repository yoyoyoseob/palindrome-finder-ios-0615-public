//
//  AppDelegate.m
//  palindrome-finder
//
//  Created by Yoseob Lee on 6/11/15.
//  Copyright (c) 2015 Yoseob Lee. All rights reserved.
//

#import "AppDelegate.h"
#import "NSString+isPalindrome.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
//    NSString *Tree = @"Tree";
//    NSString *Racecar = @"Racecar";
//    NSString *sentence = @"Was it a car or a cat I saw";
    NSString *satorSquare = @"SATOR AREPO TENET OPERA ROTAS";
    
//    NSLog(@"%hhd", [self isPalindrome:Tree]);
//    NSLog(@"%hhd", [self isPalindrome:Racecar]);
//    NSLog(@"%hhd", [self isPalindrome:sentence]);
//    NSLog(@"%hhd", [self isPalindrome:satorSquare]);
    
    NSLog(@"%hhd", [NSString isPalindrome:satorSquare]);
    
    
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


//-(BOOL)isPalindrome:(NSString *)string
//{
//    BOOL isStringPalindrome = NO;
//    
//    NSString *stringWithoutSpaces = [string stringByReplacingOccurrencesOfString:@" " withString:@""];
//    
//    // Create original array of split characters
//    NSMutableArray *arrayOfCharacters = [[NSMutableArray alloc]init];
//    for (NSUInteger i = 0; i < stringWithoutSpaces.length; i++)
//    {
//        NSString *character = [NSString stringWithFormat:@"%c", [stringWithoutSpaces characterAtIndex:i]];
//        [arrayOfCharacters addObject:[character lowercaseString]];
//    }
//    
//    // Create reverse array
//    NSArray *reversedArray = [[arrayOfCharacters reverseObjectEnumerator] allObjects];
//    
//    NSString *forwardString = [arrayOfCharacters componentsJoinedByString:@""];
//    NSString *backwardString = [reversedArray componentsJoinedByString:@""];
//    
//    if ([forwardString isEqualToString:backwardString]){
//        isStringPalindrome = YES;
//    }
//    else{
//        isStringPalindrome = NO;
//    }
//
//    return isStringPalindrome;
//}

@end
