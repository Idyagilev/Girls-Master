//
//  ObjectClass.m
//  TableViewTraining
//
//  Created by new on 22.07.16.
//  Copyright © 2016 F&G. All rights reserved.
//

#import "ObjectClass.h"

@implementation ObjectClass

- (instancetype)initWithIf
{
    self = [super init];
    
    if (self) {
        
        [self performSelector:@selector(startObject) withObject:nil];
    }
    
    return self;
}

-(void) makeObject {
    
}

-(void) startObject {
    
    NSLog(@"It's Working");
}

@end
