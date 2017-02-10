//
//  ToolModel.h
//  Demo2
//
//  Created by apple on 2016/11/10.
//  Copyright © 2016年 Iven. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToolModel : NSObject


@property (nonatomic,copy) NSString* image;
@property (nonatomic,copy) NSString* name;
@property (nonatomic,copy) NSString* shortcut;


-(id)initWithDic:(NSDictionary*)dic;
@property(retain,nonatomic)NSDictionary *dic;

@property(retain,nonatomic)NSDictionary *mapDic;
@end
