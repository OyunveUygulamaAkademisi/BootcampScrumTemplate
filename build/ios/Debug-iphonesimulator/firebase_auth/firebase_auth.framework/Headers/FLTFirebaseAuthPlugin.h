// Copyright 2020 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#import <TargetConditionals.h>

#import <Firebase/Firebase.h>
#if TARGET_OS_OSX
#import <FlutterMacOS/FlutterMacOS.h>
#else
#import <Flutter/Flutter.h>
#endif

#import <Foundation/Foundation.h>
#import <firebase_core/FLTFirebasePlugin.h>

@interface FLTFirebaseAuthPlugin : FLTFirebasePlugin <FlutterPlugin, FLTFirebasePlugin>

+ (id)getNSDictionaryFromAuthCredential:(FIRAuthCredential *)authCredential;
+ (NSDictionary *)getNSDictionaryFromUserInfo:(id<FIRUserInfo>)userInfo;
+ (NSMutableDictionary *)getNSDictionaryFromUser:(FIRUser *)user;
+ (NSDictionary *)getNSDictionaryFromNSError:(NSError *)error;
@end
