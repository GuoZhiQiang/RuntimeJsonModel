//
//  BeautifulGirlModel.m
//  RuntimeJsonModel
//
//  Created by guo on 15/8/11.
//  Copyright (c) 2015年 guo. All rights reserved.
//

#import "BeautifulGirlModel.h"

@implementation BeautifulGirlModel

// 便利 初始化方法
- (instancetype)initWithDictionary:(NSDictionary *)data
{
    self = [super init];
    if (self) {
        [self assignToPropertyWithDictionary:data];
    }
    
    return self;
}
// 便利构造器
+ (instancetype)modelWithDictionary:(NSDictionary *)data
{
    return [[self alloc] initWithDictionary:data];
}

@end
