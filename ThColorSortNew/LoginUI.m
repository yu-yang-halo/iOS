//
//  LoginUI.m
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import "LoginUI.h"
#import "MiddleManager.h"
#import "DeviceListUI.h"
@implementation LoginUI
-(void)awakeFromNib{
    [super awakeFromNib];
}
-(int)viewId{
    return 1;
}
-(UIView *)getView{
    return self;
}
-(NSString *)title{
    return @"登录";
}
-(instancetype)init{
    self=[super init];
    if(self){
        UIView *subView=[[[NSBundle mainBundle] loadNibNamed:@"loginUi" owner:self options:nil] firstObject];
        
        [self addSubview:subView];
        [self autoLayout:subView superView:self];
        [self.titleLabel setText:@"欢迎进入登录页面"];
    }
    
    return self;
}
-(void)click:(id)sender{
    [[MiddleManager shareInstance] changeUi:[DeviceListUI class]];
  
}
- (IBAction)login:(id)sender {
    NSLog(@"*******%@", self.titleLabel.text);
    [[MiddleManager shareInstance] changeUi:[DeviceListUI class]];
}


@end
