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
YYJImplementationProperty(UIView, BOOL, userInteractionEnabled)
YYJImplementationProperty(UIView, NSInteger, tag)


- (UIView *(^)(CGFloat, CGFloat, CGFloat, CGFloat))yyj_frames {
    return ^(CGFloat x, CGFloat y, CGFloat w, CGFloat h) {
        self.frame = CGRectMake(x, y, w, h);
        return self;
    };
}

@end
