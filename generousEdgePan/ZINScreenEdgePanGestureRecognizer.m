//
//  ZINScreenEdgePanGestureRecognizer.m
//  generousEdgePan
//
//  Created by Joyh on 2014. 3. 28..
//  Copyright (c) 2014년 Zininworks. All rights reserved.
//

#import "ZINScreenEdgePanGestureRecognizer.h"
@interface ZINScreenEdgePanGestureRecognizer ()<UIGestureRecognizerDelegate>
@end

@implementation ZINScreenEdgePanGestureRecognizer

- (id)initWithTarget:(id)target action:(SEL)action scrollView:(UIScrollView *)scrollView {
    self = [super initWithTarget:target action:action];
    if (self) {
        [scrollView.panGestureRecognizer requireGestureRecognizerToFail:self];
        [self setDelegate:self];
    }
    return self;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

@end
