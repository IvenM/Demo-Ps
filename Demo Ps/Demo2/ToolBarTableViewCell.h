//
//  ToolBarTableViewCell.h
//  Demo2
//
//  Created by apple on 2016/11/10.
//  Copyright © 2016年 Iven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToolBarTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *shortcut;

@end
