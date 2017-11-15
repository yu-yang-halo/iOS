//
//  MiddleManager.h
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Subject.h"
#import "BaseUI.h"

@interface MiddleManager : Subject

@property(nonatomic,strong) UIView *container;

+(MiddleManager *)shareInstance;

-(void)attachView:(UIView *)view;

-(void)changeUi:(Class)clazz;


@end
