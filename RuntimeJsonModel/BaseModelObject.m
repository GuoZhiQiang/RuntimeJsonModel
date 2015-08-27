//
//  BaseModelObject.m
//  RuntimeJsonModel
//
//  Created by guo on 15/8/11.
//  Copyright (c) 2015年 guo. All rights reserved.
//

#import "BaseModelObject.h"

@implementation BaseModelObject


- (SEL)createSetterWithPropertyName:(NSString *)propertyName
{
    //1.首字母大写
    propertyName = propertyName.capitalizedString;
    
    //2.拼接上set关键字
    propertyName = [NSString stringWithFormat:@"set%@:",propertyName];
    
    //3.返回set方法
    return NSSelectorFromString(propertyName);
}

- (void)assignToPropertyWithDictionary:(NSDictionary *)data
{
    if (data == nil) {
        return;
    }
    
    NSArray *arrKey = [data allKeys];
    
    for (NSInteger i = 0; i < arrKey.count; i++) {
        SEL setSel = [self createSetterWithPropertyName:arrKey[i]];
        if ([self respondsToSelector:setSel]) {
            NSString *value = [NSString stringWithFormat:@"%@",data[arrKey[i]]];
            [self performSelectorOnMainThread:setSel withObject:value waitUntilDone:[NSThread isMainThread]];
        }
    }
}

@end
