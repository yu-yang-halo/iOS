//
//  DeviceListUI.m
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import "DeviceListUI.h"
#import "MiddleManager.h"
#import "LoginUI.h"
@implementation DeviceListUI

-(int)viewId{
    return 2;
}

-(UIView *)getView{
    return self;
}
-(NSString *)title{
    return @"设备列表";
}
-(instancetype)init{
    self=[super init];
    if(self){

       UIView *subView=[[[NSBundle mainBundle]loadNibNamed:@"deviceListUi" owner:self options:nil] firstObject];
       [self addSubview:subView];
       [self autoLayout:subView superView:self];
    }
    return self;
}
- (IBAction)exit:(id)sender {
    [[MiddleManager shareInstance] changeUi:[LoginUI class]];
}
@end
