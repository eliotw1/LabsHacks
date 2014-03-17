//
//  DLFaceCell.h
//  NamesAndFaces
//
//  Created by DetroitLabsUser on 3/14/14.
//  Copyright (c) 2014 EliotWilliams. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLFaceCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView *faceImageView;
@property (nonatomic, strong) IBOutlet UILabel *faceNameLabel;
@property (nonatomic, weak) IBOutlet UISwitch *hideNameSwitch;

@end
