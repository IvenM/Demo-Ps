//
//  ToolBarTableViewCell.m
//  Demo2
//
//  Created by apple on 2016/11/10.
//  Copyright © 2016年 Iven. All rights reserved.
//

#import "ToolBarTableViewCell.h"

@implementation ToolBarTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

        
//        self.selectedIndicator.hidden = !selected;
    //自定义cell的选中样式
//    UIView *backgroundView = [[UIView alloc]initWithFrame:self.frame];
//    UIImageView *imageView = [[UIImageView alloc]initWithFrame:backgroundView.frame];
//    [backgroundView addSubview:imageView];
//    imageView.image = [UIImage imageNamed:@"cell.png"];
    
    self.selectedBackgroundView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"cell.png"]];
    
    
}

@end
