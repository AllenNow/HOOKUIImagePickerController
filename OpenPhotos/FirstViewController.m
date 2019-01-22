//
//  FirstViewController.m
//  OpenPhotos
//
//  Created by Allen Gao on 2019/1/22.
//  Copyright © 2019 Allen Gao. All rights reserved.
//

#import "FirstViewController.h"
#import <WebKit/WebKit.h>
#import "UIImagePickerController+custom.h"

@interface FirstViewController ()<WKUIDelegate,WKNavigationDelegate>
@property (weak, nonatomic) IBOutlet WKWebView *webView;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"index.html" ofType:nil];
    NSURL *fileURL = [NSURL fileURLWithPath:path];
    [self.webView loadRequest:[NSURLRequest requestWithURL:fileURL]];
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
