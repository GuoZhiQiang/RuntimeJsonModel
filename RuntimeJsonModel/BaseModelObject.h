//
//  BaseModelObject.h
//  RuntimeJsonModel
//
//  Created by guo on 15/8/11.
//  Copyright (c) 2015年 guo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModelObject : NSObject

/************************************************************************
 *把字典赋值给当前实体类的属性
 *参数：字典
 *适用情况：当网络请求的数据的key与实体类的属性相同时可以通过此方法吧字典的Value
 *        赋值给实体类的属性
 ************************************************************************/

- (void)assignToPropertyWithDictionary:(NSDictionary *)data ;

@end