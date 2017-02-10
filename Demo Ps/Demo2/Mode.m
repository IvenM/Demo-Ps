//
//  Mode.m
//  demo
//
//  Created by Iven on 16/11/2.
//  Copyright © 2016年 Iven. All rights reserved.
//

#import "Mode.h"

@implementation Mode
-(id)initWithDic:(NSDictionary*)dic{
    if ([super init]) {
        /*  原理
         1.给一个model传来一个字典
         2.字典会便利自己所有的key，然后拼成set方法
         3.如果model 存在该拼接的方法，就调用该方法，给自己的属性复制
         */
        //给字典属性赋值
        _dic = dic;
        //获取字典中所有的key
        NSArray* allKeys = [_dic allKeys];
        //遍历
        for (NSString *key in allKeys) {
            //截取首字母，然后大写
            NSString *startChar = [[key substringToIndex:1]uppercaseString];
            //截取剩余的字符
            NSString *otherChar = [key substringFromIndex:1];
            //拼接成set方法
            NSString*methodString = [NSString stringWithFormat:@"set%@%@:",startChar,otherChar];
            //实现字符串拼接  方法
            SEL method = NSSelectorFromString(methodString);
            //安全性判断，如果 model存在这个方法
            if ([self respondsToSelector:method] == YES) {
                //如果有这个属性，有这个方法
                
                [self performSelector:method withObject:[dic objectForKey:key]];
            }
        }
        
    }
    return self;
}
-(void)setMapDic:(NSDictionary *)mapDic{
    _mapDic = mapDic;
    //1.取出mapDic的所有的key值
    NSArray* array = [mapDic allKeys];
    
    //2.取出key值拼接方法
    for (NSString* key in array) {
        
        NSString* startChar = [[key substringToIndex:1]uppercaseString];
        NSString* otherChar = [key substringFromIndex:1];
        
        //继续拼接字符串（+set）
        NSString* methodString = [NSString stringWithFormat:@"set%@%@:",startChar,otherChar];
        
        //利用字符串拼接方法
        SEL method = NSSelectorFromString(methodString);
        
        if ([self respondsToSelector:method] == YES) {
            NSString *jsonKey = [mapDic objectForKey:key];
            [self performSelector:method withObject:[_dic objectForKey:jsonKey]];
        }
    }
}


@end
