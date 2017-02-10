//
//  TableViewCell.h
//  Demo2
//
//  Created by Iven on 16/11/2.
//  Copyright © 2016年 Iven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *shortcut;

@property (weak, nonatomic) IBOutlet UIImageView *icon;

@end
