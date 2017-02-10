//
//  Mode.h
//  demo
//
//  Created by Iven on 16/11/2.
//  Copyright © 2016年 Iven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mode : NSObject
@property (nonatomic,copy) NSString* icon;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* shortcut;
@property (nonatomic,retain)NSMutableArray *extension;

-(id)initWithDic:(NSDictionary*)dic;
@property(retain,nonatomic)NSDictionary *dic;

@property(retain,nonatomic)NSDictionary *mapDic;
@end
