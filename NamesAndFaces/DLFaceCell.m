//
//  DLFaceCell.m
//  NamesAndFaces
//
//  Created by DetroitLabsUser on 3/14/14.
//  Copyright (c) 2014 EliotWilliams. All rights reserved.
//

#import "DLFaceCell.h"

@implementation DLFaceCell

- (void)awakeFromNib
{
    [self.hideNameSwitch addTarget:self
                            action:@selector(toggleLabelHidden)
                  forControlEvents:UIControlEventValueChanged];
}

- (void)toggleLabelHidden
{
    self.faceNameLabel.hidden = !self.faceNameLabel.hidden;
    
}

@end
