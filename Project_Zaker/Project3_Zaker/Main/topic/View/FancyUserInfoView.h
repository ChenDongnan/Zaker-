//
//  FancyUserInfoView.h
//  Project3_Zaker
//
//  Created by 陈栋楠 on 15/10/27.
//  Copyright (c) 2015年 陈栋楠. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TopicFancyModel.h"

@interface FancyUserInfoView : UIView
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *tagLabel;

@property (nonatomic,strong) TopicFancyModel *model;

@end
