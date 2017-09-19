//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Jaison Bhatti on 2017-09-18.
//  Copyright © 2017 Jaison Bhatti. All rights reserved.
//

#import "MyScrollView.h"


@implementation MyScrollView

//create and add pan gesture
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:self.panGesture];
        _yTranslation = 0;
        
    }
    return self;
}




-(IBAction)handlePan:(UIPanGestureRecognizer*) sender {
    self.yTranslation = [sender translationInView:self].y;
    
    self.bounds = CGRectMake (0, self.yTranslation, self.frame.size.width, self.frame.size.height);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
