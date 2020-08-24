//
//  YYJMacro.h
//  YYJKitDemo
//
//  Created by 杨英俊 on 2020/8/23.
//  Copyright © 2020 yangyingjun. All rights reserved.
//

#ifndef YYJMacro_h
#define YYJMacro_h

#define YYJPropertyObject(type, className, objectName)\
@property (nonatomic, type) className objectName;\

#define YYJLazyInitObject(className, objectName)\
- (className *)objectName {\
    if (!_##objectName) {\
        _##objectName = [[className alloc] init];\
    }\
    return _objectName;\
}\

#define YYJStatementProperty(className, propertyName, objectName) \
- (className *(^)(propertyName))yyj_##objectName;

#define YYJCustomStatementProperty(className, typeName, propertyName, objectName) \
@property(nonatomic, typeName) propertyName objectName;\
- (className *(^)(propertyName))yyj_##objectName;

#define YYJImplementationProperty(className, propertyName, objectName) \
- (className *(^)(propertyName))yyj_##objectName {\
    return ^(propertyName objectName) {\
        self.objectName = objectName;\
        return self;\
    };\
}\





#endif /* YYJMacro_h */
