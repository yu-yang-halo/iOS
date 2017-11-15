//
//  Subject.h
//  ThColorSortNew
//
//  Created by honghua cai on 2017/11/12.
//  Copyright © 2017年 yu yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ResponderAuto.h"
@protocol ObserverDelegate <NSObject>
@required
-(void)update:(NSObject *)arg message:(NSString *)msg;

@end

@interface Subject : ResponderAuto

@property(nonatomic,assign) BOOL state;

-(void)setChanged;
-(void)clearChanged;

-(void)attachObserver:(id<ObserverDelegate>)obs;
-(void)detachObserver:(id<ObserverDelegate>)obs;

-(void)notifyObservers:(NSObject *)arg message:(NSString *)msg;

@end
