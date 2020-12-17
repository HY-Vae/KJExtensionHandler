//
//  KJCallNotifyVC.m
//  KJExtensionHandler
//
//  Created by 杨科军 on 2020/12/16.
//

#import "KJCallNotifyVC.h"
#import "KJCallNotifyView.h"
@interface KJCallNotifyVC ()

@end

@implementation KJCallNotifyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton kj_createButtonWithFontSize:15 Title:@"测试来电" TextColor:UIColor.orangeColor];
    button.frame = CGRectMake(0, 0, 100, 50);
    button.centerX = kScreenW/2;
    button.centerY = kScreenH - 100;
    button.borderWidth = 1;
    button.borderColor = UIColor.orangeColor;
    [self.view addSubview:button];
    
    __block KJCallNotifyView *view = [[KJCallNotifyView alloc]initWithFrame:CGRectMake(0, 64, kScreenW, kScreenH-64)];
    [self.view addSubview:view];
    view.maxCount = 5;
    view.vanishTime = 5;
    [view kj_tapBlock:^(KJCallNotifyInfo * _Nonnull info) {
            
    }];
    
    __block NSInteger index = 1000;
    NSArray *names = @[@"Sone",@"痛苦的信仰",@"X"];
    [button kj_addAction:^(UIButton * _Nonnull kButton) {
//        [[KJCallNotifyView kj_shareInstance] kj_addCallNotify:^(KJCallNotifyInfo * _Nonnull info) {
//            info.imageUrl = @"xxsf";
//            info.userid = [NSString stringWithFormat:@"%ld",index++];
//            info.name = names[index%3];
//        }];
        [view kj_addCallNotify:^(KJCallNotifyInfo * _Nonnull info) {
            info.imageUrl = @"xxsf";
            info.userid = [NSString stringWithFormat:@"%ld",index++];
            info.name = names[index%3];
        }];
    }];
//    [KJCallNotifyView kj_shareInstance].maxCount = 5;
//    [KJCallNotifyView kj_shareInstance].vanishTime = 7;
//    [[KJCallNotifyView kj_shareInstance] kj_tapBlock:^(KJCallNotifyInfo * _Nonnull info) {
//        NSLog(@"-----%@",info);
//    }];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
