//
//  DiscoverTableViewCell.m
//  Project3_Zaker
//
//  Created by 陈栋楠 on 15/10/27.
//  Copyright (c) 2015年 陈栋楠. All rights reserved.
//

#import "DiscoverTableViewCell.h"
#import "UIImageView+WebCache.h"
#import "LoginViewController.h"

@implementation DiscoverTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setModel:(TopicDiscoverModel *)model
{
    if (model != nil)
    {
        _model = model;
        [self setNeedsLayout];
    }
}
- (IBAction)addAction:(id)sender {
    
    LoginViewController *vc = [[LoginViewController alloc] init];
    
    [self.viewController presentViewController:vc animated:YES completion:nil];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    [_userImageView sd_setImageWithURL:[NSURL URLWithString:_model.large_pic]];
    
    _userNameLabel.text = _model.title;
    
    _userContentLabel.text = _model.stitle;
    
    
}
@end
