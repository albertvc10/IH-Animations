//
//  DragSquareView.m
//  Inclass_Ironhack
//
//  Created by Albert Villanueva on 20/10/14.
//  Copyright (c) 2014 Albert Villanueva. All rights reserved.
//

#import "DragSquareView.h"

@interface DragSquareView ()

@property (nonatomic, strong) UIView *movingView;

@end

@implementation DragSquareView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    //remove all subviews created before
    
    UITouch *touch = [touches anyObject];
    CGPoint touchPoint = [touch locationInView:self];
    
    for (UIView *v in [self subviews]) {
        if (CGRectContainsPoint(v.frame, touchPoint)) {
            self.movingView = v;
        }
    }
    if (!self.movingView) {
        self.movingView = [[UIView alloc]init];
        [self.movingView setBackgroundColor:[UIColor redColor]];
        self.movingView.frame = CGRectMake(touchPoint.x, touchPoint.y, 40, 40);
        [self addSubview:self.movingView];

    }
    
    
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    self.movingView.center = [touch locationInView:self];

    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    self.movingView = nil;
    
}
@end
