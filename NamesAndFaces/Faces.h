//
//  Faces.h
//  NamesAndFaces
//
//  Created by DetroitLabsUser on 3/14/14.
//  Copyright (c) 2014 EliotWilliams. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Faces : NSManagedObject

@property (nonatomic, retain) NSString * faceName;
@property (nonatomic, retain) NSString * faceImage;
@property (nonatomic, retain) NSString * faceDescription;
@property (nonatomic, retain) NSDate * dateEntered;
@property (nonatomic, retain) NSDate * dateUpdated;
@property (nonatomic, retain) NSNumber * memorized;

@end
