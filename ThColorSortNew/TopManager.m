//
//  TopManager.m
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import "TopManager.h"
#import <Masonry/Masonry.h>
@interface TopManager()
{
    
}
@end
@implementation TopManager



-(void)attachView:(UIView *)view{
    self.container=view;
    [self.container addSubview:self];
    
    [self autoLayout:self superView:_container];
}

+(TopManager *)shareInstance{
    static TopManager *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

-(instancetype)init{
    self=[super init];
    if(self){
       UIView *subView=[[[NSBundle mainBundle]loadNibNamed:@"TopView" owner:self options:nil] firstObject];
        
       [self addSubview:subView];
        
       [self setBackgroundColor:[UIColor greenColor]];
        
       [self autoLayout:subView superView:self];

    }
    return self;
}

-(void)update:(NSObject *)arg message:(NSString *)msg{
    [self.titleLabel setText:msg];
    NSLog(@"%@ %@",arg,msg);
}

@end
