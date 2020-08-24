//
//  UIView+YYJ.h
//  YYJKitDemo
//
//  Created by belltrip on 2020/8/21.
//  Copyright © 2020 yangyingjun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YYJMacro.h"

@interface UIView (YYJ)

YYJStatementProperty(UIView, CGRect, frame)
YYJStatementProperty(UIView, BOOL, userInteractionEnabled)
YYJStatementProperty(UIView, NSInteger, tag)



@end

