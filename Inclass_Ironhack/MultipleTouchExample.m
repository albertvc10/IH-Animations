//
//  MultipleTouchExample.m
//  Inclass_Ironhack
//
//  Created by Albert Villanueva on 20/10/14.
//  Copyright (c) 2014 Albert Villanueva. All rights reserved.
//

#import "MultipleTouchExample.h"

@implementation MultipleTouchExample

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    //remove all subviews created before
    
    for (UIView *v in [self subviews]) {
        [v removeFromSuperview];
    }
    
    [touches enumerateObjectsUsingBlock:^(id obj, BOOL *stop) {
        UITouch *touch = obj;
        CGPoint touchPoint = [touch locationInView:self];
        
        UIView *touchView = [[UIView alloc]init];
        [touchView setBackgroundColor:[UIColor redColor]];
        touchView.frame = CGRectMake(touchPoint.x, touchPoint.y, 40, 40);
        [self addSubview:touchView];
    }];
    
}

@end
