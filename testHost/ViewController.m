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
    UISheetPresentationController *sheetPresenter = segue.destinationViewController.sheetPresentationController;
    sheetPresenter.detents = @[[UISheetPresentationControllerDetent mediumDetent]
                              ,[UISheetPresentationControllerDetent largeDetent]];;
    sheetPresenter.prefersScrollingExpandsWhenScrolledToEdge = NO;
    sheetPresenter.largestUndimmedDetentIdentifier =UISheetPresentationControllerDetentIdentifierMedium;
    sheetPresenter.prefersGrabberVisible = YES;
    sheetPresenter.prefersEdgeAttachedInCompactHeight = YES;
}
@end
