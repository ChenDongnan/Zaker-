//
//  FancyTableViewCell3.m
//  Project3_Zaker
//
//  Created by 陈栋楠 on 15/10/27.
//  Copyright (c) 2015年 陈栋楠. All rights reserved.
//

#import "FancyTableViewCell3.h"

@implementation FancyTableViewCell3

- (void)awakeFromNib {
    // Initialization code
}


- (void)setModel:(TopicFancyModel *)model
{
    if (model != nil)
    {
        for(UIView *view in self.contentView.subviews)
        {
            if ([view isKindOfClass:[FancyUserInfoView class]])
            {
                [view removeFromSuperview];
            }
        }
        
        _model = model;
        [self setNeedsLayout];
    }
}

- (void)layoutSubviews
{
    
    [super layoutSubviews];
    
    [self _createUserInfoView];
    
    self.userInfoView.model = _model;
    
    self.contentLabel.text = _model.content;
}

@end
