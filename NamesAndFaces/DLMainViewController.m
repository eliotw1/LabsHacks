//
//  DLMainViewController.m
//  NamesAndFaces
//
//  Created by DetroitLabsUser on 3/14/14.
//  Copyright (c) 2014 EliotWilliams. All rights reserved.
//

#import "DLMainViewController.h"
#import "DLDetailViewController.h"
#import "DLFaceCell.h"
#import "Faces.h"

@interface DLMainViewController ()

@property (nonatomic,strong) IBOutlet UITableView *facesTableView;
@property (nonatomic,strong) NSArray *facesArray;

@end

@implementation DLMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
