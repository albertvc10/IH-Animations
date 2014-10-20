//
//  ExampleViewController.m
//  Inclass_Ironhack
//
//  Created by Albert Villanueva on 20/10/14.
//  Copyright (c) 2014 Albert Villanueva. All rights reserved.
//

#import "ExampleViewController.h"
#import "MyCustomButton.h"
#import "MultipleTouchExample.h"
#import "DragSquareView.h"

#define degreeToRadius(x) (M_PI * x / 180.0)
@interface ExampleViewController ()

@end

@implementation ExampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    switch (self.exampleNumber) {
        case 0:
            [self initialExample];
            break;
            
        case 1:
            [self CGRectUnion];
           break;
        case 2:
            [self divideExample];
            break;
//        case 3:
//            <#statements#>
//            break;
//        case 4:
//            <#statements#>
//            break;
        case 5:
            [self customButton];
            break;
        case 6:
            [self multipleTouch];
            break;
        case 7:
            [self dragTouch];
            break;
            
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

- (void)initialExample {
    NSLog(@"Works");
    
    CGRect bluewViewFrame = CGRectMake(100.0, 100.0, 100.0, 200.0);
    UIView *blueView = [[UIView alloc]initWithFrame:bluewViewFrame];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    CGRect redViewFrame = CGRectInset(blueView.bounds, 10, 10);
    UIView *redView = [[UIView alloc]initWithFrame:redViewFrame];
    redView.backgroundColor = [UIColor redColor];
    
    

    [blueView addSubview:redView];
}

//CGGeometry ref!

- (void)CGRectUnion {
    
    CGRect rect = CGRectMake(100, 100, 170, 200);
    UIView *v1 = [[UIView alloc]initWithFrame:rect];
    v1.backgroundColor = [UIColor redColor];
    
    CGRect rect2 = CGRectMake(v1.center.x, v1.center.y, 160, 180);
    UIView *v2 = [[UIView alloc]initWithFrame:rect2];
    v2.backgroundColor = [UIColor orangeColor];
    
    CGRect rect3 = CGRectUnion(rect, rect2);
    UIView *v3 = [[UIView alloc]initWithFrame:rect3];
    v3.backgroundColor = [UIColor grayColor];
    v3.alpha = 0.3;
    
    [self.view addSubview:v1];
    
    [self.view addSubview:v2];
    
    [self.view addSubview:v3];
    
    
}

- (void)divideExample {
    
    CGRect rect = CGRectMake(100, 100, 170, 200);
    UIView *v1 = [[UIView alloc]initWithFrame:rect];
    v1.backgroundColor = [UIColor redColor];
    
    CGRect rect2 = CGRectMake(100, 170, 170, 200);
    UIView *v2 = [[UIView alloc]initWithFrame:rect2];
    v2.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:v1];
    [self.view addSubview:v2];
}

- (void) rotateExample {

    
    CGRect bluewViewFrame = CGRectMake(100.0, 100.0, 100.0, 200.0);
    UIView *blueView = [[UIView alloc]initWithFrame:bluewViewFrame];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    //blueView.transform = CGAffineTransformMakeRotation(degreeToRadius(45));
    
    blueView.transform = CGAffineTransformRotate(blueView.transform, degreeToRadius(45));
    blueView.transform = CGAffineTransformRotate(blueView.transform, degreeToRadius(45));
    
    
    
}

- (void)customButton {
    
    
    MyCustomButton *button = [[MyCustomButton alloc]initWithFrame:CGRectMake(100, 200, 100, 100) backGroundColor:[UIColor redColor] title:@"It works"];
    
    [self.view addSubview:button];
}

- (void)multipleTouch {
    
    MultipleTouchExample *example = [[MultipleTouchExample alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:example];
}

- (void)dragTouch {
    
    DragSquareView *drag = [[DragSquareView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:drag];
}

@end
