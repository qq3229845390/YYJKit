//
//  UIView+YYJ.h
//  YYJKitDemo
//
//  Created by belltrip on 2020/8/21.
//  Copyright © 2020 yangyingjun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YYJMacro.h"
#import "YYJDefine.h"

typedef void(^YYJGestureActionBlock)(id sender);

@interface UIView (YYJ)

YYJStatementProperty(UIView, CGRect, frame)
YYJStatementProperty(UIView, UIColor*, backgroundColor)
YYJStatementProperty(UIView, CGRect, bounds)
YYJStatementProperty(UIView, CGPoint, center)
YYJStatementProperty(UIView, CGAffineTransform, transform)
YYJStatementProperty(UIView, BOOL, userInteractionEnabled)
YYJStatementProperty(UIView, BOOL, multipleTouchEnabled)
YYJStatementProperty(UIView, BOOL, exclusiveTouch)
YYJStatementProperty(UIView, NSInteger, tag)
YYJStatementProperty(UIView, BOOL, clipsToBounds)
YYJStatementProperty(UIView, CGFloat, alpha)
YYJStatementProperty(UIView, BOOL, opaque)
YYJStatementProperty(UIView, BOOL, hidden)
YYJStatementProperty(UIView, UIViewContentMode, contentMode)

YYJCustomStatementProperty(UIView, assign, CGPoint, origin)
YYJCustomStatementProperty(UIView, assign, CGFloat, width)
YYJCustomStatementProperty(UIView, assign, CGFloat, height)
YYJCustomStatementProperty(UIView, assign, CGSize, size)
YYJCustomStatementProperty(UIView, assign, CGFloat, centerX)
YYJCustomStatementProperty(UIView, assign, CGFloat, centerY)
YYJCustomStatementProperty(UIView, assign, CGFloat, left)
YYJCustomStatementProperty(UIView, assign, CGFloat, right)
YYJCustomStatementProperty(UIView, assign, CGFloat, top)
YYJCustomStatementProperty(UIView, assign, CGFloat, bottom)

- (UIView *(^)(CGFloat))yyj_cornerRadius;
- (UIView *(^)(CGFloat, UIColor *))yyj_border;
- (UIView *(^)(UIView *view))yyj_addSubview;
- (UIView *(^)(UIView *view, UIView *siblingSubview))yyj_insert_belowSubview;
- (UIView *(^)(UIView *view, UIView *siblingSubview))yyj_insert_aboveSubview;
- (UIView *(^)(UIView *view))yyj_bringSubviewToFront;
- (UIView *(^)(UIView *view))yyj_sendSubviewToBack;

- (UIView *(^)(UIGestureRecognizer *gesture))yyj_addGesture;
- (UIView *(^)(id , SEL))yyj_addTapGesture;
- (UIView *(^)(id , SEL))yyj_addLongPressGesture;
- (UIView *(^)(id , SEL, YYJSwipDirection))yyj_addSwipeGesture;
- (UIView *(^)(id , SEL))yyj_addPanGesture;
- (UIView *(^)(id , SEL))yyj_addPinchGesture;
- (UIView *(^)(id , SEL))yyj_addRotationGesture;


@end

