// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import <TargetConditionals.h>

#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#import <Firebase/Firebase.h>
#import <Foundation/Foundation.h>
#import "FLTFirebaseFirestoreExtension.h"

typedef NS_ENUM(UInt8, FirestoreDataType) {
  FirestoreDataTypeDateTime = 128,
  FirestoreDataTypeGeoPoint = 129,
  FirestoreDataTypeDocumentReference = 130,
  FirestoreDataTypeBlob = 131,
  FirestoreDataTypeArrayUnion = 132,
  FirestoreDataTypeArrayRemove = 133,
  FirestoreDataTypeDelete = 134,
  FirestoreDataTypeServerTimestamp = 135,
  FirestoreDataTypeTimestamp = 136,
  FirestoreDataTypeIncrementDouble = 137,
  FirestoreDataTypeIncrementInteger = 138,
  FirestoreDataTypeDocumentId = 139,
  FirestoreDataTypeFieldPath = 140,
  FirestoreDataTypeNaN = 141,
  FirestoreDataTypeInfinity = 142,
  FirestoreDataTypeNegativeInfinity = 143,
  FirestoreDataTypeFirestoreInstance = 144,
  FirestoreDataTypeFirestoreQuery = 145,
  FirestoreDataTypeFirestoreSettings = 146,
};

@interface FLTFirebaseFirestoreReaderWriter : FlutterStandardReaderWriter
- (FlutterStandardWriter *_Nonnull)writerWithData:(NSMutableData *_Nullable)data;
- (FlutterStandardReader *_Nonnull)readerWithData:(NSData *_Nullable)data;
@end

@interface FLTFirebaseFirestoreUtils : NSObject
+ (FIRFirestoreSource)FIRFirestoreSourceFromArguments:(NSDictionary *_Nonnull)arguments;
+ (NSArray *_Nonnull)ErrorCodeAndMessageFromNSError:(NSError *_Nonnull)error;
+ (FLTFirebaseFirestoreExtension *_Nullable)
    getCachedFIRFirestoreInstanceForAppName:(NSString *_Nonnull)appName
                                databaseURL:(NSString *_Nonnull)url;
+ (void)setCachedFIRFirestoreInstance:(FIRFirestore *_Nonnull)firestore
                           forAppName:(NSString *_Nonnull)appName
                          databaseURL:(NSString *_Nonnull)url;
+ (void)destroyCachedInstanceForFirestore:(NSString *_Nonnull)appName
                              databaseURL:(NSString *_Nonnull)databaseURL;
+ (FIRFirestore *_Nullable)getFirestoreInstanceByName:(NSString *_Nonnull)appName
                                          databaseURL:(NSString *_Nonnull)databaseURL;
+ (void)cleanupFirestoreInstances:(void (^_Nullable)(void))completion;
+ (NSUInteger)count;
+ (FLTFirebaseFirestoreExtension *_Nullable)getCachedInstanceForFirestore:
    (FIRFirestore *_Nonnull)firestore;
@end
