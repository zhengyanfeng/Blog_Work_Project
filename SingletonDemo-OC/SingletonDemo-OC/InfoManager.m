//
//  InfoManager.m
//  SingletonDemo-OC
//
//  Created by yf on 2018/9/4.
//  Copyright © 2018 jailbreaklife. All rights reserved.
//

#import "InfoManager.h"

static InfoManager *_infoManager = nil;

@implementation InfoManager

+(instancetype)shareInstance{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _infoManager = [[self alloc] init];
    });
    
    return _infoManager;
}

+(instancetype)allocWithZone:(struct _NSZone *)zone{
    
    @synchronized (_infoManager) {
        if (_infoManager == nil) {
            _infoManager = [super allocWithZone:zone];
        }
    }
    return _infoManager;
}

-(instancetype)init{
    
    @synchronized (self) {
        self = [super init];
    }
    
    return self;
}

@end
