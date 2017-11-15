//
//  MiddleManager.m
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import "MiddleManager.h"
#import <Masonry/Masonry.h>
@interface MiddleManager()
{
    
}
@end

@implementation MiddleManager

-(void)attachView:(UIView *)view{
    self.container=view;
}

-(void)changeUi:(Class)clazz{

    BaseUI *baseUi=[[clazz alloc] init];
    
    UIView *currentView=[baseUi getView];
    
    
    for(UIView *child in self.container.subviews){
        [child removeFromSuperview];
    }
   
    [self.container addSubview:currentView];
    
    [self autoLayout:currentView superView:_container];
    
    
    [self notifyObservers:baseUi message:baseUi.title];
}


+(MiddleManager *)shareInstance{
    static MiddleManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}


@end
