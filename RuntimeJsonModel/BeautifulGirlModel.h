//
//  BeautifulGirlModel.h
//  RuntimeJsonModel
//
//  Created by guo on 15/8/11.
//  Copyright (c) 2015年 guo. All rights reserved.
//

#import "BaseModelObject.h"

@interface BeautifulGirlModel : BaseModelObject

@property (nonatomic, copy) NSString *girl0;
@property (nonatomic, copy) NSString *girl1;
@property (nonatomic, copy) NSString *girl2;
@property (nonatomic, copy) NSString *girl3;
@property (nonatomic, copy) NSString *girl4;
@property (nonatomic, copy) NSString *girl5;
@property (nonatomic, copy) NSString *girl6;
@property (nonatomic, copy) NSString *girl7;
@property (nonatomic, copy) NSString *girl8;
@property (nonatomic, copy) NSString *girl9;
@property (nonatomic, copy) NSString *girl10;


+ (instancetype)modelWithDictionary:(NSDictionary *)data;

@end
