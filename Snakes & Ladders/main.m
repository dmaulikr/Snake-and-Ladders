//
//  main.m
//  Snakes & Ladders
//
//  Created by Thiago Hissa on 2017-07-01.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayerManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        BOOL REPLAY = YES;
        BOOL USER_DID_CREATE = NO;
        PlayerManager *manager = [[PlayerManager alloc] init];
        
        
        while (!USER_DID_CREATE) {
            NSLog(@"Enter the number of players: \n");
            char userInput[255];
            fgets(userInput, 255, stdin);
            NSString *input = [NSString stringWithCString:userInput encoding: NSUTF8StringEncoding];
            [input stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
            int number = [input intValue];
            
            if(number > 0){
                [manager createPlayer:number];
                USER_DID_CREATE = YES;
                break;
            }
            
            else{
                NSLog(@"Input a numeric value greater than 0 \n ");
            }
            
        }
        
        
        
        
        
        
        NSLog(@"Welcome, type r for roll");
        
        while(REPLAY){
            
        char userInput[255];
        fgets(userInput, 255, stdin);
        NSString *input = [NSString stringWithCString:userInput encoding: NSUTF8StringEncoding];
        [input stringByTrimmingCharactersInSet:NSCharacterSet.whitespaceAndNewlineCharacterSet];
        
            if([input containsString:@"r"] || [input containsString:@"roll"]){
                [manager roll];
//                if(player.GAMEOVER){
//                    NSLog(@"Game over!!!!");
//                    REPLAY = NO;
//                    break;
//                }
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
