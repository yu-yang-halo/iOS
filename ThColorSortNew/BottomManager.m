//
//  BottomManager.m
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import "BottomManager.h"
#import <Masonry/Masonry.h>
@interface BottomManager()
{
    
}
@end
@implementation BottomManager



-(void)attachView:(UIView *)view{
    self.container=view;
    [self.container addSubview:self];
    [self autoLayout:self superView:_container];
}

+(BottomManager *)shareInstance{
    static BottomManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}
-(instancetype)init{
    self=[super init];
    if(self){
        UIView *subView=[[[NSBundle mainBundle]loadNibNamed:@"BottomView" owner:self options:nil] firstObject];
        [self addSubview:subView];
        [self autoLayout:subView superView:self];
    }
    return self;
}
-(void)update:(NSObject *)arg message:(NSString *)msg{
    if(![msg isEqualToString:@"登录"]){
        [self setHidden:YES];
        [self.container mas_updateConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@0);
        }];
    
    }else{
        [self.container mas_updateConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(@60);
        }];
        
        [self.container layoutIfNeeded];
        [self setHidden:NO];

    }
}
@end
