//
//  ClientFuncList.h
//  PostJs
//
//  Created by gitBurning on 15/8/27.
//  Copyright (c) 2015年 BR. All rights reserved.
//

#import <Foundation/Foundation.h>
@import JavaScriptCore;

@protocol NativeObjectExport <JSExport>

-(void)HaoPing:(NSString*)string;
-(void)sendYYTelNum:(NSString*)string;
-(void)camera:(NSString*)url uid:(NSString*)uid;
-(void)getCompanyRelevant:(NSString*)x :(NSString*)y;

@end
@interface ClientFuncList : NSObject<NativeObjectExport>

@end
