//
//  Player.h
//  Snakes & Ladders
//
//  Created by Thiago Hissa on 2017-07-01.
//  Copyright © 2017 Thiago Hissa. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface Player : NSObject
@property (nonatomic) NSInteger currentSquare;
@property (nonatomic) NSDictionary* gameLogic;
@property (nonatomic) NSString *result;
@property (nonatomic) BOOL GAMEOVER;
-(void)roll;
@end
