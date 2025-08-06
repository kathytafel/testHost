//
//  ViewController.m
//  testHost
//
//  Created by Kathy Tafel on 04.08.25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIZoomTransitionOptions *options = [UIZoomTransitionOptions new];
    UIViewControllerTransition *zoom = nil;
    if (@available(iOS 26, *)) {
        zoom = [UIViewControllerTransition zoomWithOptions:options
                                             sourceBarButtonItemProvider:^UIBarButtonItem * _Nonnull(UIZoomTransitionSourceViewProviderContext * _Nonnull context) {
            return self.launchSwiftItem;
        }];
    }
    [segue.destinationViewController setPreferredTransition:zoom];
}
@end
