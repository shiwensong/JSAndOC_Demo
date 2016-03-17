//
//  ViewController.m
//  PostJs
//
//  Created by gitBurning on 15/5/3.
//  Copyright (c) 2015年 BR. All rights reserved.
//

#import "ViewController.h"
#import "CustomButton.h"
#import "UIButton+getMethod.h"
#import "UITextField+Wrong.h"
#import "NSString+Dealoc.h"
#import <JavaScriptCore/JavaScriptCore.h>

#import "WebViewJavascriptBridge.h"
#import "ClientFuncList.h"
@interface ViewController ()<UIWebViewDelegate,UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@property WebViewJavascriptBridge* bridge;


@end

@implementation ViewController

__weak id text =nil;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
   NSURL * fliePath=[[NSBundle mainBundle] URLForResource:@"header" withExtension:@"html"];
    
    
   // fliePath=[NSURL URLWithString:@"http://120.25.224.21/teay/zxyy/appxiangq?id=26"];
    [self.webView loadRequest:[NSURLRequest requestWithURL:fliePath]];
    
    
    self.webView.delegate=self;
    
    self.webView.scalesPageToFit=NO;
    
    
    
}

- (void) testLog

{
    
    JSContext *context=[self.webView valueForKeyPath:@"documentView.webView.mainFrame.javaScriptContext"];
    
    
    context[@"ClientFuncList"] = [[ClientFuncList alloc]init];
    
    
    NSArray *frames = [self.webView valueForKeyPath:@"documentView.webView.mainFrame.childFrames"];
    
    [frames enumerateObjectsUsingBlock:^(id frame, NSUInteger idx, BOOL *stop) {
        JSContext *context = [frame valueForKeyPath:@"javaScriptContext"];
        
        context[@"ClientFuncList"]=[[ClientFuncList alloc] init];
    }];
//    context[@"ockurl"]=^(id info){
//        [self.webView stringByEvaluatingJavaScriptFromString:[NSString stringWithFormat:@"ockurl('%@')",info]];
//    };
    

//  // [context evaluateScript:@"itemOnClick(\"Hello Javascript\")"];
//    [self.webView stringByEvaluatingJavaScriptFromString:@"itemOnClick(\"123123\")"];
}

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"2---%@",text);
}
-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"3---%@",text);

}

-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    
    
    if (textField.text.length+string.length>5) {
        [textField showWrongAnnamtionWithImage:[UIImage imageNamed:@"icon-提示"]];
        return NO;
    }
    else
        return YES;
}



-(void)tapButto:(UIButton*)sender{
    
}
//-(BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
//    
//    NSString *requestString = [[request URL] absoluteString];
//    NSString *protocol = @"js-call://"; //协议名称
//    if ([requestString hasPrefix:protocol])
//    {
//        NSString *requestContent = [requestString substringFromIndex:[protocol length]];
//        NSArray *vals = [requestContent componentsSeparatedByString:@"/"];
//        //        if ([[vals objectAtIndex:0] isEqualToString:@"camera"]) { // 摄像头
//        //            self.callback = [vals objectAtIndex:1];
//        //            [self doAction:UIImagePickerControllerSourceTypeCamera];
//        //        } else if([[vals objectAtIndex:0] isEqualToString:@"photolibrary"]) { // 图库
//        //            self.callback = [vals objectAtIndex:1];
//        //            [self doAction:UIImagePickerControllerSourceTypePhotoLibrary];
//        //        } else if([[vals objectAtIndex:0] isEqualToString:@"album"]) { // 相册
//        //            self.callback = [vals objectAtIndex:1];
//        //            [self doAction:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
//        //        }
//        
//        NSString * camer=[vals firstObject];
//        if ([camer isEqualToString:@"cameraCallback-2"])
//        { // 摄像头
//            
//           // NSArray *list=[camer componentsSeparatedByString:@"-"];
//            [self getHttpName];
//        }
//        else
//        {
//            [webView stringByEvaluatingJavaScriptFromString:@"alert('未定义/lwme.cnblogs.com');"];
//        }
//
//    }
//   // [self testLog];
//
//    return YES;
//}
-(void)webViewDidStartLoad:(UIWebView *)webView
{
    [self testLog];
    
//    [self.webView stringByEvaluatingJavaScriptFromString:@"itemOnClick()"];

}
-(void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self testLog];

}
- (IBAction)senderqeqweqwe:(UIButton *)sender {
    
    
    [self.webView goBack];
}

-(void)getHttpName{
    //            var v = document.getElementById("name").value

    UIAlertView *alter=[[UIAlertView alloc] initWithTitle:@"原生 alter提示" message:@"js 掉 oc" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    
    [alter show];
    
    
    [self.webView stringByEvaluatingJavaScriptFromString:@"itemOnClick()"];
//         NSString * jstitile=[NSString stringWithFormat:@"document.getElementById('name').value"];
//            jstitile=             [self.webView stringByEvaluatingJavaScriptFromString:jstitile];
//        NSLog(@"获取js 输入的值%@",jstitile);
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
