//
//  ViewController.m
//  MyScrollView
//
//  Created by Jaison Bhatti on 2017-09-18.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *myView = [[UIView alloc] initWithFrame:CGRectZero];
    [self.view addSubview:myView];
    myView.frame = myView.superview.bounds;
    
    UIView *myView1 = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    myView1.backgroundColor = [UIColor redColor];
    [myView addSubview:myView1];
    
    UIView *myView2 = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    myView2.backgroundColor = [UIColor greenColor];
    [myView addSubview:myView2];
    
    UIView *myView3 = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    myView3.backgroundColor = [UIColor blueColor];
    [myView addSubview:myView3];

    UIView *myView4 = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    myView4.backgroundColor = [UIColor yellowColor];
    [myView addSubview:myView4];
    
}

-(void)viewDidAppear:(BOOL)animated {
    CGRect rect = self.view.bounds;
    rect.origin = CGPointMake(0, 100);
    self.view.bounds = rect;
}





@end
