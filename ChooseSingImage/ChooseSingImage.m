//
//  ChooseSingImage.m
//  Meirong
//
//  Created by gitBurning on 15/8/30.
//  Copyright (c) 2015年 BR. All rights reserved.
//

#import "ChooseSingImage.h"

#define kChooseImageActionSheetTag 100
@interface ChooseSingImage()<UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIActionSheetDelegate>
@property(weak,nonatomic) UIViewController * currentVC;
@end;
@implementation ChooseSingImage
+(instancetype)shareChooseImage
{
    static ChooseSingImage * manae=nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manae=[[ChooseSingImage alloc] init];
    });
    return manae;
}
-(void)showPhotoWithVC:(UIViewController *)vc
{
    UIActionSheet * action=[[UIActionSheet alloc] initWithTitle:@"" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"选择相机",@"选择相册", nil];
    
    action.tag=kChooseImageActionSheetTag;
    [action showInView:self];
    self.currentVC=vc;
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    if (actionSheet.tag==kChooseImageActionSheetTag) {
        
        UIImagePickerControllerSourceType sourceType ;
        
        if (buttonIndex==0) {
            sourceType=UIImagePickerControllerSourceTypeCamera ;
            
        }
        else if (buttonIndex==1){
            sourceType=UIImagePickerControllerSourceTypePhotoLibrary;
            
        }
        
        if (buttonIndex!=2) {
            UIImagePickerController *picker = [[UIImagePickerController alloc] init];//初始化
            picker.delegate = self;
            //  picker.allowsEditing = YES;//设置可编辑
            picker.sourceType = sourceType;
            [self.currentVC presentViewController:picker animated:YES completion:nil];//进入照相界面
            picker=nil;
            
        }
        
    }
}
-(void)imagePickerController:(UIImagePickerController *)picke didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    if (self.chooseImageBlock) {
        
        self.chooseImageBlock(image);
    }
    [picke dismissViewControllerAnimated:YES completion:nil];
    
}

@end

