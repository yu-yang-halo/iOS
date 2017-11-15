//
//  LoginUI.h
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseUI.h"
@interface LoginUI : BaseUI

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

- (IBAction)login:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *redView;


@end
