//
//  AHKViewController.m
//  AHKActionSheetExample
//
//  Created by Arkadiusz on 08-04-14.
//  Copyright (c) 2014 Arkadiusz Holko. All rights reserved.
//
// Example icons' source: http://icons8.com/
// Cover image belongs to Tycho.

#import "AHKViewController.h"
#import "AHKActionSheet.h"

@interface AHKViewController ()

@end

@implementation AHKViewController

#pragma mark - UIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - Actions

- (IBAction)basicExampleTapped:(id)sender
{
    AHKActionSheet *actionSheet = [[AHKActionSheet alloc] initWithTitle:NSLocalizedString(@"Lorem ipsum dolor sit amet, consectetur adipiscing elit?", nil)];

    [actionSheet addButtonWithTitle:NSLocalizedString(@"Info", nil)
                              image:[UIImage imageNamed:@"Icon1"]
                               type:AHKActionSheetButtonTypeDefault
                            handler:^(AHKActionSheet *as) {
                                NSLog(@"Info tapped");
                            }];

    [actionSheet addButtonWithTitle:NSLocalizedString(@"Add to Favorites", nil)
                              image:[UIImage imageNamed:@"Icon2"]
                               type:AHKActionSheetButtonTypeDefault
                            handler:^(AHKActionSheet *as) {
                                NSLog(@"Favorite tapped");
                            }];

    [actionSheet addButtonWithTitle:NSLocalizedString(@"Share", nil)
                              image:[UIImage imageNamed:@"Icon3"]
                               type:AHKActionSheetButtonTypeDefault
                            handler:^(AHKActionSheet *as) {
                                NSLog(@"Share tapped");
                            }];

    [actionSheet addButtonWithTitle:NSLocalizedString(@"Delete", nil)
                              image:[UIImage imageNamed:@"Icon4"]
                               type:AHKActionSheetButtonTypeDestructive
                            handler:^(AHKActionSheet *as) {
                                NSLog(@"Delete tapped");
                            }];

    [actionSheet show];
}

- (IBAction)advancedExampleTapped:(id)sender
{
    AHKActionSheet *actionSheet = [[AHKActionSheet alloc] initWithView:self.view title:nil];

    actionSheet.animationDuration = 0.2;
    actionSheet.blurRadius = 0.5f;
    actionSheet.buttonHeight = 50.0;
    actionSheet.cancelButtonHeight = 50.0f;
    actionSheet.selectedBackgroundColor = [UIColor colorWithRed:0.0/255.0 green:130.0/255.0 blue:201.0/255.0 alpha:0.1];
    actionSheet.encryptedButtonTextAttributes = @{ NSFontAttributeName:[UIFont systemFontOfSize:17], NSForegroundColorAttributeName:[UIColor colorWithRed:241.0/255.0 green:90.0/255.0 blue:34.0/255.0 alpha:1.0] };
    actionSheet.buttonTextAttributes = @{ NSFontAttributeName:[UIFont systemFontOfSize:17], NSForegroundColorAttributeName:[UIColor colorWithRed:65.0/255.0 green:64.0/255.0 blue:66.0/255.0 alpha:1.0] };
    actionSheet.separatorColor = [UIColor colorWithRed:153.0/255.0 green:153.0/255.0 blue:153.0/255.0 alpha:0.2];
    actionSheet.cancelButtonTitle = @"Cancel";

    [actionSheet addButtonWithTitle:NSLocalizedString(@"One", nil)
                              image:[UIImage imageNamed:@"Icon2"]
                               type:AHKActionSheetButtonTypeDefault
                            handler:^(AHKActionSheet *as) {
                                NSLog(@"Favorite tapped");
                            }];
   
    [actionSheet addButtonWithTitle:NSLocalizedString(@"Two", nil)
                              image:[UIImage imageNamed:@"Icon2"]
                               type:AHKActionSheetButtonTypeDisabled
                            handler:^(AHKActionSheet *as) {
                                NSLog(@"Favorite tapped");
                            }];

    [actionSheet addButtonWithTitle:NSLocalizedString(@"Delete", nil)
                              image:[UIImage imageNamed:@"Icon4"]
                               type:AHKActionSheetButtonTypeDestructive
                            handler:^(AHKActionSheet *as) {
                                NSLog(@"Delete tapped");
                            }];
    
    [actionSheet show];
}

#pragma mark - Private

+ (UIView *)fancyHeaderView
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 60)];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Cover"]];
    imageView.frame = CGRectMake(10, 10, 40, 40);
    [headerView addSubview:imageView];
    UILabel *label1 = [[UILabel alloc] initWithFrame:CGRectMake(60, 20, 200, 20)];
    label1.text = @"Some helpful description";
    label1.textColor = [UIColor whiteColor];
    label1.font = [UIFont fontWithName:@"Avenir" size:17.0f];
    label1.backgroundColor = [UIColor clearColor];
    [headerView addSubview:label1];

    return  headerView;
}

@end
