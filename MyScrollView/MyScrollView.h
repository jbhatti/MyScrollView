//
//  MyScrollView.h
//  MyScrollView
//
//  Created by Jaison Bhatti on 2017-09-18.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyScrollView : UIView

@property (nonatomic) CGSize contentSize;

-(void)handlePan:(UIPanGestureRecognizer*) panGesture;


@end
