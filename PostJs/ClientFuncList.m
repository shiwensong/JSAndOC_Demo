//
//  ClientFuncList.m
//  PostJs
//
//  Created by gitBurning on 15/8/27.
//  Copyright (c) 2015年 BR. All rights reserved.
//

#import "ClientFuncList.h"
#import "ChooseSingImage.h"
#import "AppDelegate.h"
@implementation ClientFuncList
-(void)HaoPing:(NSString*)string {
    
    NSLog(@"js: %@", string);
    
}
-(void)sendYYTelNum:(NSString *)string
{
    NSLog(@"sendYYTelNum%@",string);
}
-(void)camera:(NSString *)url
{
    
    NSLog(@"%@",NSStringFromSelector(_cmd));
//    ChooseSingImage *imge=[ChooseSingImage shareChooseImage];
//    imge.chooseImageBlock=^(id image){
//        
//    };
//    
//    AppDelegate *app=(AppDelegate*)[UIApplication sharedApplication].delegate;
//    [imge showPhotoWithVC:app.window.rootViewController];
}
-(void)camera:(NSString *)url uid:(NSString *)uid
{
    
}
-(void)getCompanyRelevant:(NSString *)x :(NSString *)y
{
    NSLog(@"%@",NSStringFromSelector(_cmd));

}
@end
