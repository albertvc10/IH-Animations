//
//  Day1TableViewController.m
//  Inclass_Ironhack
//
//  Created by Albert Villanueva on 20/10/14.
//  Copyright (c) 2014 Albert Villanueva. All rights reserved.
//

#import "Day1TableViewController.h"
#import "ExampleViewController.h"

#define degreeToRadius(x) (M_PI * X / 180.0)

@interface Day1TableViewController ()

@end

@implementation Day1TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    
    NSIndexPath *index = [self.tableView indexPathForCell:sender];
    
    ExampleViewController *vc = [segue destinationViewController];
    
    vc.exampleNumber = index.row;
    
    vc.title = [sender textLabel].text;
    
    
    
}
@end
