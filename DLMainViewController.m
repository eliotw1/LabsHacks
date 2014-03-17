//
//  DLMainViewController.m
//  NamesAndFaces
//
//  Created by DetroitLabsUser on 3/14/14.
//  Copyright (c) 2014 EliotWilliams. All rights reserved.
//

#import "DLMainViewController.h"
#import "DLDetailViewController.h"
#import "Faces.h"
#import "DLFaceCell.h"
#import "DLFaces.h"

@interface DLMainViewController ()

@property (nonatomic, weak) IBOutlet UITableView *facesTableView;
@property (nonatomic, strong) NSArray *facesArray;
@property (nonatomic, strong) DLFaces *face;


@end

@implementation DLMainViewController


#pragma mark - Table View Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_facesArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == _facesTableView) {
        static NSString *CellIdentifier = @"iCell";
        DLFaceCell *iCell = (DLFaceCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
        if (iCell == nil) {
            iCell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }
        Faces *currentFace = [_facesArray objectAtIndex:[indexPath row]];
        iCell.faceNameLabel.text = [currentFace faceName];
        iCell.faceImageView.image = [UIImage imageNamed:[currentFace faceImage]];
        
        if ([iCell.hideNameSwitch isOn]) {
            iCell.faceNameLabel.hidden = NO;
        } else {
            iCell.faceNameLabel.hidden = YES;
        }
        
        return iCell;
    }
    return nil;
}



#pragma mark - System Methods
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
    _face = [[DLFaces alloc] init];
    NSMutableArray *facesList = [_face getAllEntities];
    if ([facesList count] > 0) {
        [self populateFromContext];
    } else {
        [self populateFromPList];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Business Logic

- (void)populateFromContext
{
    
}

- (void)populateFromPList
{
    NSString *plistFacesListPath = [[NSBundle mainBundle] pathForResource:@"facesList" ofType:@"plist"];
    NSArray *plistFacesListArray = [[NSArray alloc] initWithContentsOfFile:plistFacesListPath];
    for (NSDictionary *person in plistFacesListArray) {
        Faces *thisFace = (Faces *)[_face createEntity];
        thisFace.faceImage = person[@"faceImage"];
        thisFace.faceName = person[@"faceName"];
        thisFace.memorized = person[@"memorized"];
    }
    _facesArray = [_face getAllEntities];
    NSLog(@"%i",(int)[_facesArray count]);
}

@end