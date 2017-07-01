//
//  main.m
//  Snakes & Ladders
//
//  Created by Thiago Hissa on 2017-07-01.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        BOOL REPLAY = YES;
        NSLog(@"Welcome, type r for roll");
        Player *player = [[Player alloc] init];
        
        
        while(REPLAY){
            
        char userInput[255];
        fgets(userInput, 255, stdin);
        NSString *input = [NSString stringWithCString:userInput encoding: NSUTF8StringEncoding];
        [input stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        
            if([input containsString:@"r"] || [input containsString:@"roll"]){
                NSLog(@"Rolling dice...");
                [player roll];
            }
            else if ([input containsString:@"quit"]){
                REPLAY = NO;
                break;
            }
            else{
                NSLog(@"Incorrect input");
            }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
            
        }//while loop ends
    }
    return 0;
}
