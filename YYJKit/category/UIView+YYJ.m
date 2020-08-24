//
//  UIView+YYJ.m
//  YYJKitDemo
//
//  Created by belltrip on 2020/8/21.
//  Copyright © 2020 yangyingjun. All rights reserved.
//

#import "UIView+YYJ.h"

@implementation UIView (YYJ)

YYJImplementationProperty(UIView, CGRect, frame)
YYJImplementationProperty(UIView, UIColor*, backgroundColor)
YYJImplementationProperty(UIView, CGRect, bounds)
YYJImplementationProperty(UIView, CGPoint, center)
YYJImplementationProperty(UIView, CGAffineTransform, transform)
YYJImplementationProperty(UIView, BOOL, userInteractionEnabled)
YYJImplementationProperty(UIView, BOOL, multipleTouchEnabled)
YYJImplementationProperty(UIView, BOOL, exclusiveTouch)
YYJImplementationProperty(UIView, NSInteger, tag)
YYJImplementationProperty(UIView, BOOL, clipsToBounds)
YYJImplementationProperty(UIView, CGFloat, alpha)
YYJImplementationProperty(UIView, BOOL, opaque)
YYJImplementationProperty(UIView, BOOL, hidden)
YYJImplementationProperty(UIView, UIViewContentMode, contentMode)

- (CGPoint)origin {
    return self.frame.origin;
}
- (CGFloat)width {
    return self.frame.size.width;
}
- (CGFloat)height {
    return self.frame.size.height;
}
- (CGSize)size {
    return self.frame.size;
}
- (CGFloat)centerX {
    return self.center.x;
}
- (CGFloat)centerY {
    return self.center.y;
}
- (CGFloat)left {
    return self.frame.origin.x;
}
- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}
- (CGFloat)top {
    return self.frame.origin.y;
}
- (CGFloat)bottom {
    return self.frame.origin.y+self.frame.size.height;
}
- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}
- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}
- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}
- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}
- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}
- (void)setLeft:(CGFloat)left {
    CGRect frame = self.frame;
    frame.origin.y = left;
    self.frame = frame;
}
- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - self.frame.size.width;
    self.frame = frame;
}
- (void)setTop:(CGFloat)top {
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}
- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.frame.size.height;
    self.frame = frame;
}

YYJImplementationProperty(UIView, CGPoint, origin)
YYJImplementationProperty(UIView, CGFloat, width)
YYJImplementationProperty(UIView, CGFloat, height)
YYJImplementationProperty(UIView, CGSize, size)
YYJImplementationProperty(UIView, CGFloat, centerX)
YYJImplementationProperty(UIView, CGFloat, centerY)
YYJImplementationProperty(UIView, CGFloat, left)
YYJImplementationProperty(UIView, CGFloat, right)
YYJImplementationProperty(UIView, CGFloat, top)
YYJImplementationProperty(UIView, CGFloat, bottom)

- (UIView *(^)(CGFloat))yyj_cornerRadius {
    return ^(CGFloat cornerRadius) {
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = cornerRadius;
        return self;
    };
}

- (UIView *(^)(CGFloat, UIColor *))yyj_border {
    return ^(CGFloat borderWidth, UIColor *borderColor) {
        self.layer.borderWidth = borderWidth;
        self.layer.borderColor = borderColor.CGColor;
        return self;
    };
}

- (UIView *(^)(UIView *))yyj_addSubview {
    return ^(UIView *view) {
        [self addSubview:view];
        return self;
    };
}

- (UIView *(^)(UIView *, UIView *))yyj_insert_belowSubview {
    return ^(UIView *view, UIView *siblingSubview) {
        [self insertSubview:view belowSubview:siblingSubview];
        return self;
    };
}

- (UIView *(^)(UIView *, UIView *))yyj_insert_aboveSubview {
    return ^(UIView *view, UIView *siblingSubview) {
        [self insertSubview:view aboveSubview:siblingSubview];
        return self;
    };
}

- (UIView *(^)(UIView *))yyj_bringSubviewToFront {
    return ^(UIView *view) {
        [self bringSubviewToFront:view];
        return self;
    };
}

- (UIView *(^)(UIView *))yyj_sendSubviewToBack {
    return ^(UIView *view) {
        [self sendSubviewToBack:view];
        return self;
    };
}

- (UIView *(^)(UIGestureRecognizer *))yyj_addGesture {
    return ^(UIGestureRecognizer *gesture) {
        self.userInteractionEnabled = YES;
        [self addGestureRecognizer:gesture];
        return self;
    };
}

- (UIView *(^)(id, SEL))yyj_addTapGesture {
    return ^(id target, SEL action) {
        self.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:action];
        [self addGestureRecognizer:tap];
        return self;
    };
}

- (UIView *(^)(id, SEL))yyj_addLongPressGesture {
    return ^(id target, SEL action) {
        self.userInteractionEnabled = YES;
        UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:action];
        [self addGestureRecognizer:longPress];
        return self;
    };
}

- (UIView *(^)(id, SEL, YYJSwipDirection))yyj_addSwipeGesture {
    return ^(id target, SEL action, YYJSwipDirection direction) {
        self.userInteractionEnabled = YES;
        UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:action];
        swipe.direction = direction;
        [self addGestureRecognizer:swipe];
        return self;
    };
}

- (UIView *(^)(id, SEL))yyj_addPanGesture {
    return ^(id target, SEL action) {
        self.userInteractionEnabled = YES;
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:action];
        [self addGestureRecognizer:pan];
        return self;
    };
}

- (UIView *(^)(id, SEL))yyj_addPinchGesture {
    return ^(id target, SEL action) {
        self.userInteractionEnabled = YES;
        UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:action];
        [self addGestureRecognizer:pinch];
        return self;
    };
}

- (UIView *(^)(id, SEL))yyj_addRotationGesture {
    return ^(id target, SEL action) {
        self.userInteractionEnabled = YES;
        UIRotationGestureRecognizer *rotation = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:action];
        [self addGestureRecognizer:rotation];
        return self;
    };
}



@end
