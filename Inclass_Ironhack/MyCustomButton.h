//
//  MyCustomButton.h
//  Inclass_Ironhack
//
//  Created by Albert Villanueva on 20/10/14.
//  Copyright (c) 2014 Albert Villanueva. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCustomButton : UIView

@property (nonatomic, strong) UIColor *buttonBackroundColor;
@property (nonatomic, strong) NSString *buttonTitle;

-(instancetype)initWithFrame:(CGRect)frame backGroundColor:(UIColor *)theBackgroundColor title:(NSString *)theTitle;

@end
