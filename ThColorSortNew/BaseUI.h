//
//  BaseUI.h
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ResponderAuto.h"
@interface BaseUI : ResponderAuto

-(int)viewId;

-(UIView *)getView;

-(NSString *)title;


@end
