//
//  main.m
//  RuntimeJsonModel
//
//  Created by guo on 15/8/10.
//  Copyright (c) 2015年 guo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BeautifulGirlModel.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithCapacity:11];
        
        //创建测试适用的字典
        for(int i = 0; i <= 10; i ++){
            NSString *key = [NSString stringWithFormat:@"girl%d", i];
            
            NSString *value = [NSString stringWithFormat:@"我是第%d个女孩", i];
            
            [data setObject:value forKey:key];
        }
        TSLog(@"data = %@",data);
        
        BeautifulGirlModel *beautifulGirl = [BeautifulGirlModel modelWithDictionary:data];
        TSLog(@"%@",beautifulGirl.girl0);
    }
    return 0;
}
