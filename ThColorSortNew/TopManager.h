//
//  TopManager.h
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Subject.h"
#import "ResponderAuto.h"
@interface TopManager : ResponderAuto<ObserverDelegate>
@property(nonatomic,strong) UIView *container;

+(TopManager *)shareInstance;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

-(void)attachView:(UIView *)view;
@end
