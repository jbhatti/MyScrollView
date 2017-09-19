//
//  ViewController.m
//  MyScrollView
//
//  Created by Jaison Bhatti on 2017-09-18.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()
@property (nonatomic) MyScrollView* myScrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //add scroll view
    self.myScrollView = [[MyScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
        //do not permit values that would violate contentSize
    self.myScrollView.contentSize = CGSizeMake(self.view.frame.size.width, 750.0);
    [self.view addSubview:self.myScrollView];

    
    //add all squares to scroll view
//    UIView *myView = [[UIView alloc] initWithFrame:CGRectZero];
//    [self.view addSubview:myView];
//    myView.frame = myView.superview.bounds;
    
    UIView *myView1 = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    myView1.backgroundColor = [UIColor redColor];
    
    
    UIView *myView2 = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    myView2.backgroundColor = [UIColor greenColor];
    
    
    UIView *myView3 = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    myView3.backgroundColor = [UIColor blueColor];
    
    
    UIView *myView4 = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    myView4.backgroundColor = [UIColor yellowColor];
    
    [self.myScrollView addSubview:myView1];
    [self.myScrollView addSubview:myView2];
    [self.myScrollView addSubview:myView3];
    [self.myScrollView addSubview:myView4];
    

    
}

-(void)viewDidAppear:(BOOL)animated {
    CGRect adjustBounds = self.view.bounds;
    adjustBounds.origin.y += 100;
    self.view.bounds = adjustBounds;

}





@end
